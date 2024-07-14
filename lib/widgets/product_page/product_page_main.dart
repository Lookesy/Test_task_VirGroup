import 'package:flutter/material.dart';
import 'package:test_task_ia/widgets/product_page/product_info_block/product_info_block_main.dart';

import '../header/header_main.dart';
import '../left_menu/left_menu_main.dart';

//Страница товара
class ProductPage extends StatelessWidget {
  const ProductPage({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
  });
  final String image;
  final String title;
  final String price;
  final String description;


  @override
  Widget build(BuildContext context) {
    final ScrollController _controller = ScrollController();

    return Scaffold(
      body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              color: Colors.blue
          ),
          constraints: BoxConstraints(minHeight: 150),
          child: Scrollbar(
            trackVisibility: true,
            controller: _controller,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: MediaQuery.sizeOf(context).height-100,
                      constraints: BoxConstraints(minHeight: 150),
                      child: Row(
                        children: [
                          LeftMenu(),
                          ProductInfoBlock(image: image, title: title, price: price, description: description,)
                        ],
                      ),
                    )
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Header(),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
