import 'package:flutter/material.dart';

class FabWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? tooltip;
  final Color? backgroundColor;
  final IconData icon;

  const FabWidget({
    super.key,
    this.onPressed,
    this.tooltip,
    this.backgroundColor,
    this.icon = Icons.thumb_up,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      tooltip: tooltip,
      backgroundColor: backgroundColor,
      child: Icon(icon),
    );
  }
}
