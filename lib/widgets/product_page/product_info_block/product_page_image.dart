import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.image
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height*0.45,
      width: MediaQuery.sizeOf(context).height*0.45,
      constraints: BoxConstraints(minWidth: 500, minHeight: 500, maxWidth: 1350, maxHeight: 1350),
      decoration: BoxDecoration(
        color: Colors.white
      ),
      padding: EdgeInsets.all(15),
      child: Image.network(image, fit: BoxFit.cover,),
    );
  }
}
