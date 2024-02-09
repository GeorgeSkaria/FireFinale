import 'package:farefinale/home.dart';
import 'package:farefinale/searchresults.dart';
import 'package:farefinale/shop.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
          title: const Text('Profile'),
          backgroundColor: Colors.white,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color.fromARGB(255, 241, 193, 131),
                const Color.fromARGB(255, 233, 233, 184),
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Text(
                            '1234 Street Name,\nCity, Country',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: 'SpecialFont'),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                            radius: 100,
                            backgroundImage:
                                AssetImage('assets/images/profilepic.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'User Details',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'SpecialFont'),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Name: John Doe\nEmail: john.doe@example.com\nPhone: +1234567890',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'SpecialFont'),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Options',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'SpecialFont'),
                  ),
                  const SizedBox(height: 10),
                  buildOptionItem(
                    icon: Icons.payment,
                    title: 'Payment',
                  ),
                  buildOptionItem(
                    icon: Icons.shopping_basket,
                    title: 'Delivered Items',
                  ),
                  buildOptionItem(
                    icon: Icons.settings,
                    title: 'Settings',
                  ),
                  buildOptionItem(
                    icon: Icons.local_offer,
                    title: 'Promo Code',
                  ),
                  buildOptionItem(
                    icon: Icons.logout,
                    title: 'Logout',
                  ),
                  const SizedBox(height: 20),
                  Divider(color: Colors.black), // Add divider line
                  const SizedBox(height: 20),
                  Text(
                    'Preferences',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'SpecialFont'),
                  ),
                  // Add user preferences widgets
                ],
              ),
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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchResults()));
                },
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
        ));
  }

  Widget buildOptionItem({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(title,
          style: TextStyle(color: Colors.black, fontFamily: 'SpecialFont')),
      onTap: () {
        // Handle onTap event
      },
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfilePage(),
  ));
}
