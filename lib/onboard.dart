import 'package:farefinale/home.dart';
import 'package:farefinale/onboarddetails.dart';
import 'package:flutter/material.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  Set<int> selectedIndices = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            elevation: 10,
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 20,
                color: Colors.black,
              ),
            ),
            flexibleSpace: const FlexibleSpaceBar(
              title: Text(
                "What are you looking for?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              centerTitle: true,
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  'Select one or more preferences',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width > 600 ? 2 : 2,
                childAspectRatio:
                    MediaQuery.of(context).size.width > 600 ? 1.5 : 0.9,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      if (selectedIndices.contains(index)) {
                        selectedIndices.remove(index);
                      } else {
                        selectedIndices.add(index);
                      }
                    });
                  },
                  child: OnboardCard(
                    detail: details[index],
                    isSelected: selectedIndices.contains(index),
                  ),
                ),
                childCount: details.length,
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.all(16.0),
                      ),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          return Colors.white;
                        },
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyApp()),
                      );
                    },
                    child: const Text(
                      "       Skip     ",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(width: 120),
                  ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.all(16.0),
                      ),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          return const Color.fromARGB(246, 201, 21, 41);
                        },
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyApp()),
                      );
                    },
                    child: const Text(
                      "      Proceed      ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardCard extends StatelessWidget {
  final Detail detail;
  final bool isSelected;

  const OnboardCard({
    Key? key,
    required this.detail,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Container(
            padding: const EdgeInsets.all(3),
            height: MediaQuery.of(context).size.width > 600 ? 200 : 150,
            width: MediaQuery.of(context).size.width > 600 ? 200 : 160,
            decoration: BoxDecoration(
              color: isSelected ? const Color.fromARGB(255, 242, 205, 209) : null,
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 5,
                  spreadRadius: 5,
                  offset: Offset(0.0, 3.0),
                ),
              ],
              border: Border.all(
                color: isSelected
                    ? const Color.fromARGB(255, 242, 205, 209)
                    : const Color.fromARGB(255, 247, 247, 248),
                width: 3,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                detail.image,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              detail.title,
              style: const TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
