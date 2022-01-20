import 'package:flutter/material.dart';

import 'class_page.dart';

class ChoosedPage extends StatefulWidget {
  const ChoosedPage({Key? key}) : super(key: key);

  static const String id = "choosed_page";

  @override
  _ChoosedPageState createState() => _ChoosedPageState();
}

class _ChoosedPageState extends State<ChoosedPage> {

  int sum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chossed files"),
        centerTitle: true,
      ),
      body: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: ItemList.likedList.length,
        itemBuilder: (context, index) {
          return _itemOfGridview(ItemList.likedList[index]);
        },
      ),
    );
  }

  Container _itemOfGridview(Item e) {
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(image: AssetImage(e.image), fit: BoxFit.cover),
      ),
    );
  }
}
