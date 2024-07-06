import 'package:flutter/material.dart';

class ChatHelper extends StatelessWidget {
  final String? message;
  ChatHelper({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Placeholder(child: Text(message ?? "No Text"),);
  }
}
