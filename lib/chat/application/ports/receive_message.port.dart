import 'package:flutter_application_1/chat/domain/entities/message.dart';

abstract class ReceiveMessageUseCase {
  Future<Message> receiveMessage();
}