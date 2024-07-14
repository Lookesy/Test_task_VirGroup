import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_task_ia/back/json_get_convert.dart';
import 'package:test_task_ia/widgets/content_menu/horizontal_content_block/horizontal_content_card.dart';
import 'package:test_task_ia/widgets/product_page/product_page_main.dart';

//Шаблон блока горизонтально размещенных карточек товаров
class HorizontalContentBlock extends StatelessWidget {
  const HorizontalContentBlock({
    super.key,
    required this.blockTitle,
    required this.cardCount
  });
  final String blockTitle;
  final int cardCount;

  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();

    return Container(
        width: MediaQuery.sizeOf(context).width-325,
        height: 600,
        constraints: BoxConstraints(minWidth: 1175),
        decoration: BoxDecoration(

        ),
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 50,
                width: MediaQuery.sizeOf(context).width-355,
                constraints: BoxConstraints(minWidth: 350),
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Text(blockTitle,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w500
                        ),
                      ),),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: (){
                        _scrollController.animateTo(
                            _scrollController.position.pixels-600,
                            duration: Duration(milliseconds: 1000),
                            curve: Curves.fastOutSlowIn
                        );
                      },
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward),
                      onPressed: (){
                        _scrollController.animateTo(
                            _scrollController.position.pixels+600,
                            duration: Duration(milliseconds: 1000),
                            curve: Curves.fastOutSlowIn
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            //Получение данных с Json и формирование данных на карточке
            Expanded(
                child: FutureBuilder(
                  future: readJsonData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError){
                      print(snapshot.error);
                      return Container();
                    } else if (snapshot.hasData){
                      var items = snapshot.data as List<ProductDataModel>;
                      int count = 0;
                      List<ProductDataModel> dataList = [];
                      for (int i = 0; i<items.length; i++){
                        if (items[i].category==blockTitle){
                          dataList.add(items[i]);
                          count++;
                        }
                      }
                      return ListView.separated(
                        controller: _scrollController,
                        separatorBuilder: (BuildContext context, int index) => SizedBox(
                          width: 10,
                        ),
                        scrollDirection: Axis.horizontal,
                        itemCount: count,
                        itemBuilder: (context, index){
                          return MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              child: HorizontalContentCard(
                                image: dataList[index].image.toString(),
                                title: dataList[index].name.toString(),
                                description: dataList[index].weight.toString(),
                                price: dataList[index].price.toString(),
                              ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(
                                  image: dataList[index].image.toString(),
                                  title: dataList[index].name.toString(),
                                  price: dataList[index].price.toString(),
                                  description: dataList[index].description.toString(),
                                ),));
                              },
                            ),
                          );
                        },
                      );
                    }
                    return Container();
                  },
                )
            ),
          ],
        )
    );
  }
}

