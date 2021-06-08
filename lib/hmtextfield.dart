import 'package:flutter/material.dart';

import 'validate.dart';

class HmTextField extends StatefulWidget {
  final String title;
  final String placeholder;
  final String helpertext;
  final bool isHelperTextVisible;
  final bool formatType;

  const HmTextField({
    Key key,
    @required this.title,
    @required this.placeholder,
    this.helpertext,
    this.isHelperTextVisible = false,
    this.formatType = true,
  }) : super(key: key);

  @override
  _HmTextFieldState createState() => _HmTextFieldState();
}

class _HmTextFieldState extends State<HmTextField> with ValidateMixin {
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
          TextFormField(
            validator: widget.formatType == true ? validateFunc : validateDate,
            onSaved: (value) {
              text = value;
            },
            decoration: InputDecoration(
              hintText: widget.placeholder,
              helperText:
                  widget.isHelperTextVisible == true ? widget.helpertext : null,
              helperStyle: TextStyle(
                color: Colors.grey, // <-- Change this
                fontSize: 17,
              ),
            ),
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
