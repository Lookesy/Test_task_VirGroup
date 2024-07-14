import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Карточка товара в горизонтальном блоке
class HorizontalContentCard extends StatelessWidget {
  const HorizontalContentCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price
  });
  final String image;
  final String title;
  final String description;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 20),
      child: Column(
        children: [
          SizedBox(
            width: 300,
            height: 265,
            child: Image.network(image),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 300,
            height: 65,
            child: Text(title,
              softWrap: true,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 22,

                ),
            ),),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(description,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: Color(0xff2e2e2e),
                  fontSize: 15,

                ),
              ),),
          ),
          Spacer(),
          Text(price,
            style: GoogleFonts.openSans(
              textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500
              ),
            ),),
          SizedBox(
            height: 10,
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
              fixedSize: MaterialStatePropertyAll(Size(200, 45))
            ),
            child: Text("В корзину",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 22,

                ),
              ),),
            onPressed: (){

            },
          )
        ],
      ),
    );
  }
}
