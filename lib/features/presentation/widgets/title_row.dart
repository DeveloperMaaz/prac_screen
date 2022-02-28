import 'package:flutter/material.dart';
import 'package:prac_screen/features/presentation/constants/constants.dart';

class Titles extends StatelessWidget {

  late String textTitle;
  Titles(this.textTitle);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(textTitle,style: textStyleB14,),
      ],
    );
  }
}

