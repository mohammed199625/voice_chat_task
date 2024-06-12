import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:voice_chat_task/view_models/voice_chat_view_model.dart';
import 'package:voice_chat_task/views/voice_chat_view.dart';
import 'dart:math' as math;


class HomeScreen extends StatelessWidget {
  final TextEditingController callIdController = TextEditingController();
  final userId = math.Random().nextInt(10000).toString();
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ChatViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Voice Chat App')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: callIdController,
              decoration: const InputDecoration(labelText: 'Call ID'),
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if(callIdController.text.isNotEmpty) {
                  provider.joinRoom(callIdController.text, userId);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatRoomView()),
                  );
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text("Please enter callId")));
                }
              },
              child: const Text('Join Room'),
            ),
          ],
        ),
      ),
    );
  }
}
