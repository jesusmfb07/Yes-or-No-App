import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_application_1/chat/ui/theme/app_theme.dart';
import 'package:flutter_application_1/chat/application/useCase/chat_provider.dart';
import 'package:flutter_application_1/chat/ui/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider())

      ],
      child: MaterialApp(
        title: 'Yes No App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 0).theme(),
        home: const ChatScreen()
      ),
    );
  }
}