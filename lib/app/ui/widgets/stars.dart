import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  const Stars({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < 5; i++) Star(color: color),
      ],
    );
  }
}

class Star extends StatelessWidget {
  const Star({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: color,
      size: 15,
    );
  }
}
