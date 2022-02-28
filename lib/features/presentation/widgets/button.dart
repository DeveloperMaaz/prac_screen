import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  late String text;
  late Color color;
  late Color textColor;
  Button(this.text,this.color,this.textColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 148,
      height: 48,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color.fromRGBO(234, 234, 234, 1)),
      ),
      child: Center(child: Text(text,style: TextStyle(color:textColor,fontWeight: FontWeight.w600),)),
    );
  }
}
