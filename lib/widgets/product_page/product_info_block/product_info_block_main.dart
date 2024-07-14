import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_task_ia/widgets/product_page/product_info_block/bottom_product_info.dart';
import 'package:test_task_ia/widgets/product_page/product_info_block/product_characteristics.dart';
import 'package:test_task_ia/widgets/product_page/product_info_block/product_description.dart';
import 'package:test_task_ia/widgets/product_page/product_info_block/product_page_image.dart';
import '../../../main.dart';

//Страница конкретного товара
class ProductInfoBlock extends StatelessWidget {
  const ProductInfoBlock({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.description
  });
  final String image;
  final String title;
  final String price;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
          width: MediaQuery.sizeOf(context).width-325,
          height: MediaQuery.sizeOf(context).height-100,
          decoration: BoxDecoration(
              color: Colors.white
          ),
          constraints: BoxConstraints(minWidth: 1175, minHeight: 150),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios_new,),
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(),));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Color(0xffe0e0e0))
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(title,
                      softWrap: true,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Colors.black,
                          overflow: TextOverflow.ellipsis,
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                        ),
                      ),),
                  ],
                ),
                Row(
                  children: [
                    Spacer(),
                    ProductImage(image: image),
                    Spacer(),
                    ProductCharacteristics()
                  ],
                ),
                ProductDescription(description: description,),
                BottomProductInfo(price: price,)
              ],
            ),
          )
      ),
    );
  }
}
