import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:voice_chat_task/view_models/voice_chat_view_model.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class ChatRoomView extends StatelessWidget {


  ChatRoomView({super.key, });


  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ChatViewModel>(context);

    return Scaffold(
      body: ZegoUIKitPrebuiltCall(
        appID: 1446573928,
        appSign:
            'dfe3eba6589359eb65165e649c6af6110dea98a2c56f308fad09ef4c5c0df6db',
        userID: provider.chatModel!.userId,
        userName: 'Muhammed',
        callID: provider.chatModel!.callId,
        config: ZegoUIKitPrebuiltCallConfig.groupVoiceCall(),
      ),
    );
  }
}
