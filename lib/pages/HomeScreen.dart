import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Musicai App+",
          style: GoogleFonts.acme(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.indigo,
            ),
            height: height * 0.2,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text("New Releases"),
                    Text("See all"),
                  ],
                ),
                Container(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 200,
                        color: Colors.purple[600],
                        child: const Center(
                            child: Text(
                          'Item 1',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )),
                      ),
                      Container(
                        width: 200,
                        color: Colors.purple[500],
                        child: const Center(
                            child: Text(
                          'Item 2',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )),
                      ),
                      Container(
                        width: 200,
                        color: Colors.purple[400],
                        child: const Center(
                            child: Text(
                          'Item 3',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )),
                      ),
                      Container(
                        width: 200,
                        color: Colors.purple[300],
                        child: const Center(
                            child: Text(
                          'Item 4',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )),
                      ),
                    ],
                  ),
                )
              ],
            ),
            height: height * 0.3,
            color: Colors.pink,
          ),
          Container(
            height: height * 0.3,
            color: Colors.orange,
          )
        ],
      ),
    );
  }
}
