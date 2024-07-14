import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Нижняя часть страницы товара
class BottomProductInfo extends StatelessWidget {
  const BottomProductInfo({
    super.key,
    required this.price
  });
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height*0.1,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      padding: EdgeInsets.only(right: 25, left: 25, bottom: 10),
        constraints: BoxConstraints(minHeight: 100),
      child: Row(
        children: [
          Spacer(),
          Text(price,
            style: GoogleFonts.openSans(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.w500
              ),
            ),),
          SizedBox(
            width: 50,
          ),
          TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
                fixedSize: MaterialStatePropertyAll(Size(300, 65))
            ),
            child: Text("В корзину",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold
                ),
              ),),
            onPressed: (){

            },
          ),
        ],
      )
    );
  }
}
