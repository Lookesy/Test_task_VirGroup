import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_task_ia/widgets/content_menu/banner_section/banner_card.dart';

//Шаблон секции с баннерами на главной странице
class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
          width: MediaQuery.sizeOf(context).width-325,
          height: 125,
          constraints: BoxConstraints(minWidth: 1250),
          decoration: BoxDecoration(

          ),
          padding: EdgeInsets.only(left: 25, right: 25, bottom: 5, top: 5),
          child: Row(
            children: [
              Spacer(),
              BannerCard(
                boxDecoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    gradient: LinearGradient(
                        colors: [
                          Colors.deepPurple,
                          Colors.cyan
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight
                    )
                ),
                text: Text(
                  'Чёрная пятница',
                  style: GoogleFonts.jost(
                      textStyle: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                      )
                  ),
                ),
              ),
              Spacer(),
              BannerCard(
                boxDecoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    gradient: LinearGradient(
                        colors: [
                          Color(0xff6530ab),
                          Color(0xff9e13ab),
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft
                    )
                ),
                text: Text(
                  'Акции',
                  style: GoogleFonts.jost(
                      textStyle: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                      )
                  ),
                ),
              ),
              Spacer(),
              BannerCard(
                boxDecoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    gradient: LinearGradient(
                        colors: [
                          Colors.lightGreen,
                          Colors.teal
                        ]
                    )
                ),
                text: Text(
                  'Здоровое питание',
                  style: GoogleFonts.jost(
                      textStyle: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                      )
                  ),
                ),
              ),
              Spacer()
            ],
          )
      ),
    );
  }
}
