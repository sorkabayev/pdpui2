
class Item{

 late String image;
  bool icon = false;

  Item(this.image);
}

class ItemList{
 static List<Item> listItem = [
  Item("asset/images/air.jpg"),
  Item("asset/images/air-2.jpg"),
  Item("asset/images/s10.jpg"),
  Item("asset/images/s10.jpg"),
  Item("asset/images/tv.jpg"),
  Item("asset/images/tv.jpg"),
  Item("asset/images/tv2.jpg"),
  Item("asset/images/xolo.jpg"),
  Item("asset/images/xolo.jpg"),
  Item("asset/images/ip.jpg"),
 ];

 static List<Item> likedList = [];
}

