import 'package:flutter/material.dart';
import 'package:test_task_ia/widgets/content_menu/banner_section/banner_section_main.dart';
import 'package:test_task_ia/widgets/content_menu/horizontal_content_block/horizontal_content_block_main.dart';

//Блок с товарами и баннерами на главной странице
class ContentMenu extends StatelessWidget {
  const ContentMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width-325,
      decoration: BoxDecoration(
        color: Colors.white
      ),
      constraints: BoxConstraints(minWidth: 1175),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            BannerSection(),
            SizedBox(
              height: 15,
            ),
            HorizontalContentBlock(cardCount: 8, blockTitle: "Новинки",),
            SizedBox(
              height: 15,
            ),
            HorizontalContentBlock(cardCount: 10, blockTitle: "Хиты продаж",)
          ],
        ),
      )
    );
  }
}
