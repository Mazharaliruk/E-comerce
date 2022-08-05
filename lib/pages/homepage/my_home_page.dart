import 'package:flutter/material.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);



  //Creating Drawer ListTile
  Widget buildListTile({required String title, required IconData icon}){
    return ListTile(
      leading: Icon(icon,size: 30,),
      title: Text(
        title
      ),
    );
  }

  //Creating Drawer
  Widget buildDrawer(){
    return Drawer(
      backgroundColor: Colors.amber,
       child: ListView(
         physics: BouncingScrollPhysics(),
         children: [
           DrawerHeader(
             child: Row(
               children: [
                 CircleAvatar(
                   backgroundColor: Colors.white,
                   radius: 43,
                   child: CircleAvatar(
                     backgroundColor: Colors.amber,
                     radius: 40,
                   ),
                 ),
                 SizedBox(width: 20,),
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 35),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         "Welcome Guest",
                         style: TextStyle(
                           fontSize: 20
                         ),
                       ),
                       Container(
                         height: 30,
                         width: 80,
                         decoration: BoxDecoration(
                           border: Border.all(),
                           borderRadius: BorderRadius.circular(20)
                         ),
                         child: Center(
                           child: Text(
                             "LOGIN",
                             style: TextStyle(
                               fontSize: 16,
                               fontWeight: FontWeight.bold
                             ),
                           ),
                         ),
                       )
                     ],
                   ),
                 )
               ],
             ),
           ),
           Column(
             children: [
               buildListTile(
                 icon: Icons.home_outlined,
                 title: "HOME"
               ),
               buildListTile(
                   icon: Icons.shop_outlined,
                   title: "Review Cart"
               ),
               buildListTile(
                   icon: Icons.person_outline,
                   title: "My Profile"
               ),
               buildListTile(
                   icon: Icons.notifications_outlined,
                   title: "Notification"
               ),
               buildListTile(
                   icon: Icons.star_border_outlined,
                   title: "Rating & Review"
               ),
               buildListTile(
                   icon: Icons.favorite_outline,
                   title: "WishList"
               ),
               buildListTile(
                   icon: Icons.message_outlined,
                   title: "Raise a Complaint"
               ),
               buildListTile(
                   icon: Icons.question_answer_outlined,
                   title: "FAQs"
               ),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Text("Contact Support",style: TextStyle(fontWeight: FontWeight.bold),),
                   Text("Call Us:  +923093762676"),
                   Text("Mail US:  mazharjameel1020@gmail.com")
                 ],
               )

             ],
           )
         ],
       ),
    );
  }

  // Creating My appBar
  AppBar buildAppBar(){
    return AppBar(
      title: Text(
        "Home",
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
      ),
      actions: [

        CircleAvatar(
          child: IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CircleAvatar(
            child: IconButton(
              icon: Icon(Icons.shop),
              onPressed: (){},
            ),
          ),
        )
      ],
    );
  }

  //Creating vegetable or fruit function
  Widget vegetableType({required String text}){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                color: Colors.black,
                fontSize: 20
            ),
          ),
          Text(
            "View all",
            style: TextStyle(
                color: Colors.grey
            ),
          ),
        ],
      ),
    );
  }

  // Now Creating My ScrollView
  Widget buildMYSeasons(){
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
                child: Image.network("https://www.pngitem.com/pimgs/m/490-4903879_fresh-basil-leaf-png-transparent-png.png")
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Fresh Basil",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "50 \$ / 50 Gram",
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
                                        "50 Gram",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(),
      appBar: buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage("https://img.freepik.com/free-photo/healthy-vegetables-wooden-table_1150-38014.jpg?w=2000"),
                          fit: BoxFit.cover
                      )
                  ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Expanded(
                       child: Container(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Padding(
                               padding: EdgeInsets.only(bottom: 30),
                               child: Container(
                                 width: 80,
                                 height: 80,
                                 decoration: BoxDecoration(
                                   color: Colors.amber,
                                   borderRadius: BorderRadius.only(
                                     bottomLeft: Radius.circular(40),
                                     bottomRight: Radius.circular(40)
                                   ),
                                 ),
                                 child: Center(
                                   child: Text(
                                     "Vegi",
                                     style: TextStyle(
                                       fontSize: 20,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.white
                                     ),
                                   ),
                                 ),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 10),
                               child: Text(
                                 "30 % off",
                                 style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                   fontSize: 40,
                                   color: Colors.white,
                                 ),
                               ),
                             ),
                             Padding(
                               padding: EdgeInsets.only(left: 10),
                               child: Text(
                                 "on all vegetables products",
                                 style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 16
                                 ),
                               ),
                             )
                           ],
                         ),
                       ),
                     ),
                   ],
                 ),
                ),
                vegetableType(
                  text: "Herbs Seasoning"
                ),
                Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          buildMYSeasons(),
                          SizedBox(width: 8,),
                          buildMYSeasons(),
                          SizedBox(width: 8,),
                          buildMYSeasons(),
                          SizedBox(width: 8,),
                          buildMYSeasons(),
                          SizedBox(width: 8,),
                          buildMYSeasons()
                        ],
                      ),
                    ),
                  ],
                ),
                vegetableType(
                    text: "Fresh Fruits"
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
