import 'package:flutter/material.dart';
import 'package:grocery_market/productItem.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blue,
            title: const Text(
              'My Shopping App',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
          ),
          body: Column(
            children: [
              const Text(
                "Our Products",
                style: TextStyle(color: Colors.blue, fontSize: 40),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        children: [
                          Expanded(
                            child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2),
                              itemCount: 2,
                              itemBuilder: (context, index) =>
                                  const ProductItem(),
                            ),
                          ),
                          const Text(
                            "Hot Offers",
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (context, index) =>
                                    const ProductItem()),
                          )
                        ],
                      ),
                      GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemCount: 2,
                        itemBuilder: (context, index) => const ProductItem(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
