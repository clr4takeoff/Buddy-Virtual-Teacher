import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';

class VoiceChat extends StatefulWidget {
  @override
  _VoiceChatState createState() => _VoiceChatState();
}

class _VoiceChatState extends State<VoiceChat> {
  bool _isPressed = false;
  final FlutterSoundRecorder _recorder = FlutterSoundRecorder();

  @override
  void initState() {
    super.initState();
    initRecorder();
  }

  Future<void> initRecorder() async {
    final status = await Permission.microphone.request();
    if (status != PermissionStatus.granted) {
      throw RecordingPermissionException('Microphone permission not granted');
    }
    await _recorder.openAudioSession();
  }

  void _onMicButtonPress() async {
    setState(() {
      _isPressed = true;
    });
    await _recorder.startRecorder(toFile: 'voice_recording.aac');
  }

  void _onMicButtonRelease() async {
    setState(() {
      _isPressed = false;
    });
    await _recorder.stopRecorder();
  }

  @override
  void dispose() {
    _recorder.closeAudioSession();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF1D6),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.close, color: Colors.black54),
                    onPressed: () {},
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
                '안녕 철수야? 인어공주가 물거품이 되었다는 이야기를 들었어.',
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
              child: Image.asset(
                'assets/character1.png',
                height: 260,
              ),
            ),
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
              size: 70.0,
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
