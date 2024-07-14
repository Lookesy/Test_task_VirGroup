import 'package:flutter/material.dart';
import 'package:test_task_ia/widgets/left_menu/left_menu_card.dart';
import 'card_content.dart';

//Левое меню с категориями
class LeftMenu extends StatelessWidget {
  const LeftMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
        constraints: BoxConstraints(minHeight: 500),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration. of(context). copyWith(scrollbars: false),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: LeftCardContent.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 10,
                  width: MediaQuery.sizeOf(context).width*0.2,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: LeftMenuCard(image: LeftCardContent[index].image, title: LeftCardContent[index].title,),
                ),
                SizedBox(
                  height: 5,
                  width: MediaQuery.sizeOf(context).width*0.2,
                )
              ],
            );
          },
        )
      )
    );
  }
}
