import 'package:flutter/material.dart';

import 'choosed_page.dart';
import 'class_page.dart';
import 'favorite_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  static const String id = "/second_page";

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int sum =0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: MyAppBar(context),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("asset/images/ip.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(25),
              ),
              height: 250,
              width: double.infinity,
              margin: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [
                        Colors.black.withOpacity(0.7),
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.2),
                      ]),
                ),
                child: Column(
                  children: [
                    const Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Lifestyle safe",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: MaterialButton(
                        height: 55,
                        minWidth: 300,
                        onPressed: () {},
                        child: const Text("Shop Now"),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemCount: ItemList.listItem.length,
              itemBuilder: (context, index ) {
                return _itemOfGridview(ItemList.listItem[index]);
              },
            ),
          ],
        ),
      ),
    );
  }

  AppBar MyAppBar(BuildContext context) {
    return AppBar(
      actions: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.grey),
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          height: 40,
          width: 40,
          child:  IconButton(onPressed: (){
            Navigator.pushNamed(context, FavoritePage.id);
          },
            icon: const Icon(Icons.home),),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.grey),
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          height: 40,
          width: 40,
          child:  IconButton(onPressed: (){
            Navigator.pushNamed(context, ChoosedPage.id);
          },
          icon: const Icon(Icons.shopping_cart_rounded),),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.grey),
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          height: 40,
          width: 40,
          child:  Text("$sum"),
        )
      ],
      backgroundColor: Colors.black,
      centerTitle: true,
      title: const Text("Apple products"),
    );
  }

  Container _itemOfGridview(Item e) {
    return Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                          image: AssetImage(e.image),
                      fit: BoxFit.cover)),
      child: IconButton(
        padding: const EdgeInsets.only(left: 140),
        onPressed: (){
          setState(() {

            e.icon = !e.icon;
            e.icon ? sum++ : sum--;
            e.icon ? ItemList.likedList.add(e) : ItemList.likedList.remove(e);
          });
        }, icon: e.icon ? const Icon(Icons.favorite,color: Colors.amber,) : const Icon(Icons.favorite_border,color: Colors.amber,),
      ),
    );
  }
}
