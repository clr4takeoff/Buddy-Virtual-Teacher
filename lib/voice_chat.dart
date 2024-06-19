import 'package:buddyvirty/main_page.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:permission_handler/permission_handler.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:async';

class VoiceChat extends StatefulWidget {
  @override
  _VoiceChatState createState() => _VoiceChatState();
}

class _VoiceChatState extends State<VoiceChat> {
  bool _isPressed = false;
  late stt.SpeechToText _speech;
  String _recognizedText = '';
  bool _isListening = false;
  String _errorText = '';
  bool _hasStartedSpeaking = false;
  bool _speechComplete = false;

  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
    _audioPlayer = AudioPlayer();
    _requestMicrophonePermission();
    _initializeAudioPlayer();
  }

  Future<void> _initializeAudioPlayer() async {
    await Future.delayed(Duration(seconds: 3));
    await _audioPlayer.play(AssetSource('assets/music1.mp3'));
  }

  Future<void> _requestMicrophonePermission() async {
    PermissionStatus status = await Permission.microphone.request();
    if (status != PermissionStatus.granted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('마이크 권한이 필요합니다.')),
      );
    }
  }

  void _onMicButtonPress() async {
    if (!_hasStartedSpeaking) {
      setState(() {
        _hasStartedSpeaking = true;
      });
    }

    if (await Permission.microphone.isGranted) {
      bool available = await _speech.initialize(
        onStatus: (status) {
          setState(() {
            if (status == 'done' || status == 'notListening') {
              _isListening = false;
              _speechComplete = true;
            } else {
              _isListening = true;
            }
          });
        },
        onError: (error) {
          setState(() {
            _errorText = 'Error: $error';
          });
        },
      );
      if (available) {
        setState(() {
          _isPressed = true;
          _isListening = true;
          _errorText = '';
        });
        _speech.listen(
          onResult: (val) => setState(() {
            _recognizedText = val.recognizedWords;
          }),
          onSoundLevelChange: (level) {
            setState(() {});
          },
          listenFor: Duration(seconds: 20),
          pauseFor: Duration(seconds: 5),
          partialResults: true,
          localeId: "ko_KR",
          onDevice: true,
          cancelOnError: true,
          listenMode: stt.ListenMode.confirmation,
        );
      }
    } else {
      await _requestMicrophonePermission();
    }
  }

  void _onMicButtonRelease() {
    setState(() {
      _isPressed = false;
      _isListening = false;
    });
    _speech.stop();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF1D6),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.close, color: Colors.black54),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainPage()), // TODO: MainPage() --> 동화 선택 페이지 클래스 명으로 바꾸기
                        );
                      },
                    ),
                    IconButton(
                      icon: Image.asset('assets/choose_character.png', width: 24, height: 24),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
                child: Text(
                  _speechComplete ?
                  '그렇지만.. 나는 진심으로 사랑하는 사람이 따로 있었어..' :
                  '안녕 철수야? 인어공주가 물거품이 되었다는 이야기를 들었는데 무슨 일이야?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF525252),
                    fontSize: 22,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: Image.asset('assets/prince.gif'),
              ),
              if (!_hasStartedSpeaking) ...[
                Text(
                  '왕자',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFD6967),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '인어공주',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                ),
              ],
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  _recognizedText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF525252),
                    fontSize: 18,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              if (_isListening)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    '이야기를 들려주세요!',
                    style: TextStyle(
                      color: Color(0xFFFD6967),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              if (_errorText.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    _errorText,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: GestureDetector(
          onTapDown: (_) => _onMicButtonPress(),
          onTapUp: (_) => _onMicButtonRelease(),
          onTapCancel: _onMicButtonRelease,
          child: RawMaterialButton(
            onPressed: () {},
            elevation: 2.0,
            fillColor: _isPressed ? Color(0xFFFF9900) : Color(0xFFFED43E),
            child: Icon(
              Icons.mic,
              size: 60.0,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(22.0),
            shape: CircleBorder(),
          ),
        ),
      ),
    );
  }
}
