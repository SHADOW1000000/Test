import 'package:e_commece_design/items.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const Design());
}
class Design extends StatefulWidget {
  const Design({super.key});

  @override
  State<Design> createState() => _DesignState();
}
class _DesignState extends State<Design> {
  rowContent(String name, Icon icon) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          child: icon,
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
  Widget bestSelling(String name,String subName,String price,String image){
    return Builder(
      builder: (context) {
        return
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>
                   ItemsScreen(
                    image: image,
                     name: name,
                     subName: subName,
                     price: price,

                  )));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      color: Colors.white,
                      child: Image.network(
                          height: 100,
                          width: 500,
                          image)),
                  Text(name, style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),),
                  Text(subName, style: const TextStyle(color: Colors.grey),),
                  Text(price, style: const TextStyle(color: Colors.orange),),
                ],
              ),
            ),
          );

      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          selectedItemColor: Colors.orange,
          items:const[
           BottomNavigationBarItem(icon: Icon(Icons.home),label: "*"),
           BottomNavigationBarItem(icon: Icon(Icons.store),label: ""),
           BottomNavigationBarItem(icon: Icon(Icons.person),label: ""),

        ],),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      fillColor: Colors.grey[300],
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 30,
                      ),
                      filled: true,
                    ),
                  )),
                  const Icon(
                    Icons.menu,
                    size: 50,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Categories',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    rowContent("Laptop", const Icon(Icons.laptop)),
                    const SizedBox(
                      width: 20,
                    ),
                    rowContent("Mobile", const Icon(Icons.mobile_screen_share)),
                    const SizedBox(
                      width: 20,
                    ),
                    rowContent("Electricity", const Icon(Icons.electric_bolt)),
                    const SizedBox(
                      width: 20,
                    ),
                    rowContent("Clock", const Icon(Icons.punch_clock_rounded)),
                    const SizedBox(
                      width: 20,
                    ),
                    rowContent("Mobile", const Icon(Icons.mobile_screen_share)),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Best Selling',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: GridView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 200),
                  children: [
                    bestSelling("Logiteck G231","Marwan", "359\$", "https://m.media-amazon.com/images/I/41tp0JPPlmL._AC_SL1200_.jpg"),
                    bestSelling("Apple Watch s4", "Marwan", "889\$", "https://www.apple.com/newsroom/images/product/watch/standard/Apple_watch-experience-for-entire-family-hero_09152020_big.jpg.large.jpg"),
                    bestSelling("Logiteck G231","Marwan", "359\$", "https://m.media-amazon.com/images/I/41tp0JPPlmL._AC_SL1200_.jpg"),
                    bestSelling("Logiteck G231","Marwan", "359\$", "https://m.media-amazon.com/images/I/41tp0JPPlmL._AC_SL1200_.jpg"),
                    bestSelling("Logiteck G231","Marwan", "359\$", "https://m.media-amazon.com/images/I/41tp0JPPlmL._AC_SL1200_.jpg"),
                    bestSelling("Apple Watch s4", "Marwan", "889\$", "https://www.apple.com/newsroom/images/product/watch/standard/Apple_watch-experience-for-entire-family-hero_09152020_big.jpg.large.jpg"),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
