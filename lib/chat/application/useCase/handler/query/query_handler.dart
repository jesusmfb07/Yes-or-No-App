import 'package:flutter_application_1/chat/application/ports/receive_message.port.dart';
import 'package:flutter_application_1/chat/domain/entities/message.dart';

class Query {
  final ReceiveMessageUseCase receiveMessageUseCase;

  Query(this.receiveMessageUseCase);

  Future<Message> handle() {
    return receiveMessageUseCase.receiveMessage();
  }
}