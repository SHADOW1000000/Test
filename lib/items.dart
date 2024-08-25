import 'package:flutter/material.dart';

class ItemsScreen extends StatefulWidget {
  final image;
  final name;
  final subName;
  final price;

  const ItemsScreen(
      {this.image, this.name, this.subName, this.price, super.key});

  @override
  State<ItemsScreen> createState() => _ItemsState();
}

class _ItemsState extends State<ItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.circle_outlined),
            Text(" Gipsy "),
            Text(
              " Bee",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        selectedItemColor: Colors.orange,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "*"),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
      body: Expanded(
        child: Column(
          children: [
            Container(
                width: 400, height: 300, child: Image.network(widget.image)),
            const SizedBox(height: 30),
            Text(widget.name,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(
              widget.subName,
              style: const TextStyle(color: Colors.grey, fontSize: 20),
            ),
            const SizedBox(height: 20),
            Text(widget.price, style: const TextStyle(color: Colors.orange)),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Color:   ",
                  style: TextStyle(fontSize: 20),
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 10,
                ),
                Text("  Gray"),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 10,
                ),
                Text("  Black"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Size :     39     40     41      42       43",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                color: Colors.black,
                child: const Text(
                  "Add To Cart",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
