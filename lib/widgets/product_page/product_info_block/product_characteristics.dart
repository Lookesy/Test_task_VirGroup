import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Блок пищевой и энергетической ценности товара на странице товара
class ProductCharacteristics extends StatelessWidget {
  const ProductCharacteristics({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height*0.55,
      width: MediaQuery.sizeOf(context).width*0.2-325,
      constraints: BoxConstraints(minWidth: 500, maxWidth: 1500, minHeight: 500, maxHeight: 1500),
      padding: EdgeInsets.all(25),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
          border: Border(left: BorderSide(color: Colors.grey))
        ),
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Пищевая ценность",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                ),
              ),),
            SizedBox(
              height: 5,
            ),
            Text("На 100г",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: Color(0xff2e2e2e),
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                ),
              ),),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text("Жир",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),
                  ),),
                Spacer(),
                Text("23 г",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        color: Color(0xff2e2e2e),
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                    ),
                  ),),
              ],
            ),
            Divider(),

            Row(
              children: [
                Text("Белок",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),
                  ),),
                Spacer(),
                Text("10 г",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        color: Color(0xff2e2e2e),
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                    ),
                  ),),
              ],
            ),
            Divider(),

            Row(
              children: [
                Text("Углеводы",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),
                  ),),
                Spacer(),
                Text("32 г",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        color: Color(0xff2e2e2e),
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                    ),
                  ),),
              ],
            ),
            Divider(),

            Spacer(),
            Text("Энергетическая ценность",
              softWrap: true,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,

                ),
              ),),

            Divider(),
            Text("360 ккал/1500 кДж",
              softWrap: true,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: Color(0xff2e2e2e),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    overflow: TextOverflow.ellipsis
                ),
              ),),
          ],
        ),
      ),
    );
  }
}
