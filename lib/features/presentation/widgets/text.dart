import 'package:flutter/material.dart';
import 'package:prac_screen/features/presentation/constants/constants.dart';

class RowData extends StatelessWidget {

  late String title;
  late String value;

  RowData(this.title,this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: textStyle14,),
        Text(value,style: textStyle14,),
      ],
    );
  }
}
