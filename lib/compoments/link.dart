import 'package:flutter/material.dart';

class Link extends StatelessWidget {
  const Link({
    super.key,
    required this.title,
    required this.onClick,
  });

  final String title;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onClick,
      child: Text(title, style: const TextStyle(color: Colors.black54)),
    );
  }
}
