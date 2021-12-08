import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/app/common_widgets/custom_raised_button.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton({Key? key,
    required String text,
    required Color textColor,
    required Color color,
    required VoidCallback onPressed,
  }) : super(key: key,
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 15.0),
          ),
          color: color,
          onPressed: onPressed,
        );
}
