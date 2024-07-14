import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Пункт в левом меню
class LeftMenuCard extends StatelessWidget {
  const LeftMenuCard({
    super.key,
    required this.image,
    required this.title
  });
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 325,
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 15,
          ),
          Container(
            width: 70,
            height: 70,
            child: Image.asset(image, fit: BoxFit.cover,)
          ),
          SizedBox(
            width: 25,
          ),
          SizedBox(
            width: 200,
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
