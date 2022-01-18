import 'package:flutter/material.dart';

import 'class_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Item> _listItem = [
    Item("asset/images/air.jpg"),
    Item("asset/images/air-2.jpg"),
    Item("asset/images/s10.jpg"),
    Item("asset/images/s10.jpg"),
    Item("asset/images/tv.jpg"),
    Item("asset/images/tv.jpg"),
    Item("asset/images/tv2.jpg"),
    Item("asset/images/xolo.jpg"),
    Item("asset/images/xolo.jpg"),
    Item("asset/images/xolo2.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 30,
              width: 36,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)),
              child: Center(child: Text("8")),
            ),
          )
        ],
        centerTitle: true,
        title: Text("IMAN Prodacts"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.orange,
        child: Column(
          children: [
            Container(
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage("asset/images/air-2.jpg"),
                      fit: BoxFit.cover)),
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(0.5),
                          Colors.black.withOpacity(0.2)
                        ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Lifestyle",
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      height: 50,
                      width: 300,
                      child: MaterialButton(
                        color: Colors.white,
                        onPressed: () {},
                        child: Text(
                          "Shop now",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children: _listItem.map((e) => cellOfList(e)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cellOfList(Item e) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(e.image),
              fit: BoxFit.cover,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  e.icon = !e.icon;
                });
              },

              icon: e.icon ? Icon(Icons.favorite, color: Colors.red,) : Icon(Icons.favorite_border),
            )
          ],
        ),
      ),
    );
  }
}
