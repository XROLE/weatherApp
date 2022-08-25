import 'package:flutter/material.dart';

class RoundDots extends StatelessWidget {
  const RoundDots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 4,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.white),
    );
  }
}
