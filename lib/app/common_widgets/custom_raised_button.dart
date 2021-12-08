import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final double? borderRadius;
  final double? height;
  final VoidCallback onPressed;

  const CustomRaisedButton(
      {Key? key,
      required this.child,
      required this.color,
      this.borderRadius: 2.0,
      this.height: 50.0,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: RaisedButton(
        child: child,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius!),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
