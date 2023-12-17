import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'package:slash_shop/models/Product.dart';

class CartCounter extends StatefulWidget {
  final Product product ;
  @override
  _CartCounterState createState() => _CartCounterState();
  CartCounter({Key? key, required this.product}) : super(key: key);

}

class _CartCounterState extends State<CartCounter> {



  int numOfItems = 0;
  bool hide_visible = false ;


  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        // Text("availbale Items : ${product.num_of_items}"),
        Row(
          children: <Widget>[
            SizedBox(
              width: 40,
              height: 32,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    if (numOfItems > 1) {
                      setState(() {
                        numOfItems--;
                      });
                    }
                  });
                },
                child: Icon(Icons.remove),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
              child: Text(
                // if our item is less  then 10 then  it shows 01 02 like that
                numOfItems.toString().padLeft(2, "0"),
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Visibility(
             visible:  hide_visible ?  numOfItems < widget.product.num_of_items : hide_visible=true,
              child: SizedBox(
                width: 40,
                height: 32,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if(numOfItems < widget.product.num_of_items){

                        numOfItems++ ;
                      }else {
                       hide_visible = true  ;
                      }
                    });
                  },
                  child: Icon(Icons.add),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
