import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Виджет поискового поля
class Searcher extends StatelessWidget {
  const Searcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 50,
      decoration: BoxDecoration(
          color: Color(0xffe0e0e0),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Stack(
        children: [
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: "Поиск",
                labelStyle: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 20,

                    )
                ),

                contentPadding: EdgeInsets.only(left: 20,)
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xffe0e0e0),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
              ),
              child: IconButton(
                icon: Icon(Icons.search),
                iconSize: 30,
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder()),
                ),
                onPressed: (){

                },
              ),
            ),
          )
        ],
      )
    );
  }
}
