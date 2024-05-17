import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Gorras Rivera",
        theme: ThemeData(
          primarySwatch: Colors.grey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(
          title: "Gorras Rivera",
        ));
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Column(
        children: [
          Container(
            height: 470,
            padding: EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                print("Esta Gorra esta presionada");
              },
              child: Card(
                elevation: 40,
                color: Colors.grey[300],
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      child: Image(
                        image: AssetImage("assets/cap.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    //gghgggggggggg
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Red Sox",
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Esta Gorra es una de las mas usadas en todo el catalogo de las gorras 59fifty",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Table(border: TableBorder.all(), columnWidths: {
              0: FixedColumnWidth(180),
              1: FlexColumnWidth(),
              2: FlexColumnWidth(),
            }, children: [
              TableRow(children: [
                Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "id Gorra",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Talla",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Precio",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ]),
              TableRow(children: [
                Container(padding: EdgeInsets.all(5), child: Text("01")),
                Container(padding: EdgeInsets.all(5), child: Text("7 1/4")),
                Container(padding: EdgeInsets.all(5), child: Text("999mxn")),
              ]),
              TableRow(children: [
                Container(padding: EdgeInsets.all(5), child: Text("02")),
                Container(padding: EdgeInsets.all(5), child: Text("7 3/8")),
                Container(padding: EdgeInsets.all(5), child: Text("999mxn")),
              ]),
              TableRow(children: [
                Container(padding: EdgeInsets.all(5), child: Text("03")),
                Container(padding: EdgeInsets.all(5), child: Text("7 1/2")),
                Container(padding: EdgeInsets.all(5), child: Text("999mxn")),
              ]),
            ]),
          ),
        ],
      ),
    );
  }
}
