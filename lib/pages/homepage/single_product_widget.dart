import 'package:flutter/material.dart';


class SingleProductWidget extends StatelessWidget {
  String url;
  String name;
  double price;
  double grams;
   SingleProductWidget({Key? key,required this.url, required this.name, required this.price, required this.grams}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 220,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 2,
                  child: Image.network(url)
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "$price \$ / $grams Gram",
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      "$grams Gram",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Icon(Icons.arrow_drop_down),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 3,),
                        Expanded(
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.remove,color: Colors.amber,),
                                Text("1",style: TextStyle(color: Colors.amber),),
                                Icon(Icons.add,color: Colors.amber,)
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
