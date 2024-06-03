import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/chat/her_message_buddle.dart';
import 'package:flutter_application_1/presentation/widgets/chat/my_message_buddle.dart';
import 'package:flutter_application_1/presentation/widgets/chat/shared/messsage_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: const NetworkImage('lib/image.png'),
          ),
        ),
        title: const Text('Mi amor '),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return (index % 2 == 0)
                          ? const HerMessageBuddle()
                          : const MyMessageBuddle();
                    })),
            ///caja de texto 
            const MesssageFieldBox(),
          ],
        ),
      ),
    );
  }
}
