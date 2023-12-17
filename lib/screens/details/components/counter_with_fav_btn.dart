import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash_shop/models/Product.dart';

import 'cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
   const CounterWithFavBtn({super.key, required this.product});
   final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(


      children: [
        product.num_of_items != 0  ? Text('Availbale Items : ${product.num_of_items}',style: TextStyle( fontWeight: FontWeight.bold)) :  Text('Out Of Stock' , style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),) ,
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CartCounter(product: product,),
            Container(
              padding: EdgeInsets.all(8),
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                color: Color(0xFFFF6464),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset("assets/icons/heart.svg"),
            )
          ],
        ),
      ],
    );
  }
}
