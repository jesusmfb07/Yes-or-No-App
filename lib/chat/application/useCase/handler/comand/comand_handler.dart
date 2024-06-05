import 'package:flutter_application_1/chat/application/ports/send_message.port.dart';

class Command {
  final SendMessageUseCase sendMessageUseCase;

  Command(this.sendMessageUseCase);

  Future<void> handle(String message) {
    return sendMessageUseCase.sendMessage(message);
  }
}