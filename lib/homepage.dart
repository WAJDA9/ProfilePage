import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), ),
        child: BottomNavigationBar(
          elevation: 20,
          showUnselectedLabels: true,
          currentIndex: selectedIndex,
          onTap: (index){setState(() {
            selectedIndex=index;
          });},
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          backgroundColor: Color.fromARGB(47, 0, 0, 0),
          items: [
          BottomNavigationBarItem(icon: Icon(
            Icons.feed,
            ),
            label: "Feed"),
            BottomNavigationBarItem(icon: Icon(
            Icons.signal_cellular_alt_rounded,
            ),
            label: "analytics"),
            BottomNavigationBarItem(icon: Icon(
            Icons.terminal_rounded,
            ),
            label: "accounts"),
          BottomNavigationBarItem(icon: Icon(
            Icons.more_horiz_outlined,
            ),
            label: "more"),
        ]),
        ),
        appBar: AppBar(
          elevation: 0,
          bottomOpacity: 0.0,
          backgroundColor: Color.fromARGB(255,144,101,251),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(color: Colors.white, Icons.settings))
          ],
        ),
        backgroundColor:  Color.fromARGB(255,144,101,251),
        body: Stack(
          children: [
            IndexedStack(
              index:selectedIndex,
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          margin: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                      color: Colors.orange,
                                      width: 3,
                                    )),
                                width: 150,
                                height: 150,
                                child: CircleAvatar(
                                  radius: 100,
                                  backgroundImage: const AssetImage("assets/avatar.jpg"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        "Wajdi Zakhama",
                        style: GoogleFonts.aboreto(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Mobile developer",
                        style: GoogleFonts.albertSans(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                       SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                       minWidth: 50,
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                       padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                        color: Color.fromARGB(221, 44, 43, 43), 
                        textColor: Colors.white, 
                       onPressed: () {},
                        child: Text("Share Account"),
    ),
    Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
      height: 500,
      decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
      
    )
    
                    ],
                  ),
                ),
                Visibility(
                visible: selectedIndex == 1,
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    Container(
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                      color: Colors.white,),
                      margin:EdgeInsets.all(15),
                      child: IconButton(
                        iconSize: 35,
                        color: Colors.tealAccent, 
                        onPressed: (){},
                        icon: Icon(Icons.code),
                      )
                      ),
                    Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                      color: Colors.white,),
                      margin:EdgeInsets.all(15),
                      child: IconButton(
                        iconSize: 35,
                        color: Colors.orangeAccent, 
                        onPressed: (){},
                        icon: Icon(Icons.shopping_cart),
                      )),
                    Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                      color: Colors.white,),
                      margin:EdgeInsets.all(15),
                      child: IconButton(
                        iconSize: 35,
                        color: Colors.pinkAccent, 
                        onPressed: (){},
                        icon: Icon(Icons.circle_notifications_sharp),
                      )),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                      color: Colors.white,),
                      margin:EdgeInsets.all(15),
                      child: IconButton(
                        iconSize: 35,
                        color: Colors.indigo, 
                        onPressed: (){},
                        icon: Icon(Icons.video_collection),
                      )),
                  ],
                ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}