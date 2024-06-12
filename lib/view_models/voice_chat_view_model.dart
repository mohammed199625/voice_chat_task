import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class ChatViewModel extends ChangeNotifier {
  ChatModel? _chatModel;

  ChatModel? get chatModel => _chatModel;

  void joinRoom(String callId, String userId) {
    _chatModel = ChatModel(callId: callId, userId: userId);
    notifyListeners();
  }


}
