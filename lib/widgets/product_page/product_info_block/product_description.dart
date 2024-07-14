import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Описание товара на странице товара
class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
    required this.description
  });
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height*0.175,
      padding: EdgeInsets.only(right: 25, left: 25, top: 10),
      constraints: BoxConstraints(minHeight: 150),
      child: Container(
        constraints: BoxConstraints(minHeight: 150),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: Colors.grey))
        ),
        padding: EdgeInsets.all(15),
        child: Text(
          description,
          softWrap: true,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),),
      ),
    );
  }
}
