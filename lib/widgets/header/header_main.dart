import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_task_ia/main.dart';
import 'package:test_task_ia/widgets/header/search_widget.dart';

//Шапка сайта
class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 100,
        constraints: BoxConstraints(minHeight: 100, minWidth: 1500),
        decoration: BoxDecoration(
            color: Colors.white
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 25,
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: Text('Шестёрочка', style: GoogleFonts.merriweather(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                        overflow: TextOverflow.ellipsis
                    )
                ),),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(),));
                },
              ),
            ),
            SizedBox(
              width: 75,
            ),
            Searcher(),
            Spacer(),
            Text('Для производителей', style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    overflow: TextOverflow.ellipsis
                )
            ),),
            Spacer(),
            Text('Доставка', style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    overflow: TextOverflow.ellipsis
                )
            ),),
            Spacer(),
            Text('Корзина', style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    overflow: TextOverflow.ellipsis
                )
            ),),
            Spacer(),
            Text('Профиль', style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    overflow: TextOverflow.ellipsis
                )
            ),),
            Spacer()
          ],
        ),
      ),
    );
  }
}
