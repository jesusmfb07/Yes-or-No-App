import 'package:flutter/material.dart';
import 'package:flutter_application_1/chat/domain/entities/message.dart';
import 'package:provider/provider.dart';

import 'package:flutter_application_1/chat/application/useCase/chat_provider.dart';
import 'package:flutter_application_1/chat/ui/her_message_buddle.dart';
import 'package:flutter_application_1/chat/ui/my_message_buddle.dart';
import 'package:flutter_application_1/chat/ui/messsage_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('lib/assets/images/image.png'),
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
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                  controller: chatProvider.chatScrollController,
                    itemCount: chatProvider.messageList.length,
                    itemBuilder: (context, index) {
                      final message = chatProvider.messageList[index];

                      return (message.fromWho == FromWho.hers)
                          ? HerMessageBuddle(message: message)
                          : MyMessageBuddle( message: message);
                    })),

            ///caja de texto
            MesssageFieldBox(
              onValue: chatProvider.sendMessage,
            ),
          ],
        ),
      ),
    );
  }
}
