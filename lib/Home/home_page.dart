import 'package:betweenapp/Home/page1.dart';
import 'package:betweenapp/Home/page2.dart';
import 'package:betweenapp/Home/page3.dart';
import 'package:betweenapp/Home/page4.dart';

//import 'package:betweenapp/Home/clientPage.dart';
//import 'package:betweenapp/Home/distributorsPage.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> pages = [Page1(), Page2(), Page3(), Page4()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          elevation: 10,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.green],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
          ),
          title: Text("Between App"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(Icons.offline_bolt),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text("           "),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(Icons.offline_bolt),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text("         "),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(Icons.offline_bolt),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text("           "),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(Icons.offline_bolt),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text("           "),
                        ),
                      ],
                    ),
                  ),
                ],
                child: Icon(
                  Icons.notifications,
                  size: 20.0,
                ),
              ),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 4,
            tabs: [
              Tab(text: "Client", icon: Icon(Icons.people)),
              Tab(text: "Distributors", icon: Icon(Icons.people)),
            ],
          ),
        ),
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          showElevation: true,
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          onItemSelected: (index) => setState(() => _currentIndex = index),
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              activeColor: Colors.blue,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Favorites'),
              activeColor: Colors.red,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.message),
              title: const Text(
                'Messages test for mes teset test test ',
              ),
              activeColor: Colors.green,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
              activeColor: Colors.deepPurple,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final categories = [
    "Pharmacy",
    "Beauty",
    "Medical",
    "Furniture",
    "School",
    "Builiding",
    "Food"
  ];
  final RecentsCategories = ["Medical", "Furniture", "School", "Builiding"];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, "null");
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // throw UnimplementedError();
    final suggetionsList = query.isEmpty
        ? RecentsCategories
        : categories.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.location_city),
        title: RichText(
            text: TextSpan(
                text: suggetionsList[index].substring(0, query.length),
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: [
              TextSpan(
                  text: suggetionsList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey))
            ])),
      ),
      itemCount: suggetionsList.length,
    );
  }
}

Widget buildPage(String text) => Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
    );

Widget buildCard() => Container(
      width: 100,
      height: 100,
      color: Colors.red,
    );
