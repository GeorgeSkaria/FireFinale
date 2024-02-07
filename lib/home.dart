import 'package:farefinale/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:farefinale/widgets/searchresults.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to the search results page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchResults()),
                );
              },
              child: const Text('Searchinhg'),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the search results page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoodItemPage()),
                );
              },
              child: const Text('Shop'),
            ),
          ],
        ),
      ),
    );
  }
}
