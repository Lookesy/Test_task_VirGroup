import 'package:flutter/material.dart';

//Шаблон баннера
class BannerCard extends StatelessWidget {
  const BannerCard({
    super.key,
    required this.boxDecoration,
    required this.text
  });
  final BoxDecoration boxDecoration;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Container(
          width: 400,
          height: 90,
          decoration: boxDecoration,
          child: Center(
            child: text,
          ),
        ),
        onTap: (){

        },
      ),
    );
  }
}
