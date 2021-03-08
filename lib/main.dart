import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController scrollController = new ScrollController();

  List<Database> database = [
    Database(
        image:
            'https://freepngimg.com/thumb/birthday_cake/9-2-birthday-cake-png-pic.png',
        name: 'Blossom dream',
        price: '10.0'),
    Database(
        image:
            'https://freepngimg.com/thumb/birthday_cake/1-2-birthday-cake-picture.png',
        name: 'Tropical garden',
        price: '40.0'),
    Database(
        image:
            'https://freepngimg.com/thumb/birthday_cake/3-2-birthday-cake-png-picture.png',
        name: 'Merry berry',
        price: '20.0'),
    Database(
        image:
            'https://freepngimg.com/thumb/birthday_cake/6-2-birthday-cake-png-image.png',
        name: 'berry Merry',
        price: '50.0'),
    Database(
        image:
            'https://freepngimg.com/thumb/birthday_cake/2-2-birthday-cake-free-download-png.png',
        name: 'Chocolate',
        price: '70.0'),
    Database(
        image:
            'https://freepngimg.com/thumb/birthday_cake/9-2-birthday-cake-png-pic.png',
        name: 'Red valvet',
        price: '60.0'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: [
            Icon(
              Icons.search,
              size: 40.0,
              color: Colors.black,
            )
          ],
          title: Text(widget.title),
        ),
        body: Container(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20.0),
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Desserts',
                  style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                height: 100.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 90.0,
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Card(
                        margin: EdgeInsets.all(5.0),
                        color: Colors.black,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Fruit',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 90.0,
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Card(
                        margin: EdgeInsets.all(5.0),
                        color: Colors.black,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'With milk',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 90.0,
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Card(
                        margin: EdgeInsets.all(5.0),
                        color: Colors.black,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'With nuts',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 90.0,
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Card(
                        margin: EdgeInsets.all(5.0),
                        color: Colors.black,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Chocolate',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  controller: ScrollController(),
                  itemCount: database.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 200,
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.grey[200],
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 120,
                            width: 200,
                            child: Image.network(database[index].image),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(database[index].name,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w600,
                                    )),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  database[index].price,
                                  style: TextStyle(fontSize: 25.0),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.remove_circle_rounded,
                                        size: 50.0,
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        '0',
                                        style: TextStyle(fontSize: 25.0),
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Icon(Icons.add_circle_rounded, size: 50.0)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ],
          ),
        ));
  }
}

class Database {
  final String image;
  final String name;
  final String price;

  Database({this.image, this.name, this.price});
}
