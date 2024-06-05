// import 'package:flutter_application_1/chat/domain/entities/message.dart';
// import 'package:flutter_application_1/chat/domain/repositories/message_repository.dart';

// class SendMessageUseCase {

//   final MessageRepository messageRepository;

//   SendMessageUseCase(this.messageRepository);

//   Future<void> sendMessage(String text) async {
//     if (text.isEmpty) return;

//     final newMessage = Message(text: text, fromWho: FromWho.me);
//     await messageRepository.saveMessage(newMessage);
//   }
// }
