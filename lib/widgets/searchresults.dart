import 'package:farefinale/home.dart';
import 'package:farefinale/shop.dart';
import 'package:flutter/material.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red, // Change primary color to red
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Search results for your item',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white, // Text color
                      ),
                      child: const Text('All'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white, // Text color
                      ),
                      child: const Text('Produce'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white, // Text color
                      ),
                      child: const Text('Dairy'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white, // Text color
                      ),
                      child: const Text('Bakery'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Create a ListView for images
                ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    // Row 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Image.asset('assets/images/bakery.png'),
                        ),
                        Expanded(
                          child: Image.asset('assets/images/beverages.png'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // Row 2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Image.asset('assets/images/freshfruits.png'),
                        ),
                        Expanded(
                          child: Image.asset('assets/images/freshfruits.png'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // Row 3
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Image.asset('assets/images/grains.png'),
                        ),
                        Expanded(
                          child: Image.asset('assets/images/grocery.png'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // Row 4
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Image.asset('assets/images/oils.png'),
                        ),
                        Expanded(
                          child: Image.asset('assets/images/protein.png'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: const Color.fromARGB(
              255, 252, 252, 252), // Background color of the BottomAppBar
          shape: CircularNotchedRectangle(), // Notch in the bottom app bar
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FoodItemPage()));
                },
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const SearchResults());
}
