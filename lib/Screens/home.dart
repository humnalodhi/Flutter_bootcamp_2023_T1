import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Home Screen')),
      ),
      body: ListView.builder(
          itemCount: bookNames.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.amberAccent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            bookNames[index],
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text('Author name'),
                          Container(
                            height: 5,
                            width: 100,
                            color: Colors.brown,
                            margin: EdgeInsets.only(top: 5),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      const Icon(
                        Icons.book,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

const bookNames = ['Book 1', 'Book 2', 'Book 3'];
