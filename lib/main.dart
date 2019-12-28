import 'package:flutter/material.dart';

import 'custom.dart';
import 'layout.dart';

void main() => runApp(MaterialApp(
      home: Layouting(),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var cekWarna = false;
  String number = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number = "Halo";
          });
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              "assets/img/gambar.gif",
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            Text(
              "DSC PNJ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextEdi18(
              data: "Depok Indonesia",
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cekWarna = !cekWarna;
                });
              },
              icon: Icon(
                Icons.home,
                size: 40,
                color: cekWarna ? Colors.red : Colors.black,
              ),
            ),
            ButtonCustom(
              onPressed: () {
                print("Klik");
              },
            ),
            SizedBox(
              height: 10,
            ),
            ButtonCustom(
              title: "Tambah Data",
              warnaDepan: Colors.red,
              warnaBelakang: Colors.green,
            ),
            SizedBox(
              height: 10,
            ),
            ButtonCustom(
              title: "Lihat Data",
            ),
          ],
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(),
//       floatingActionButton: InkWell(
//         onTap: () {
//           print("single Click");
//         },
//         onDoubleTap: () {
//           print("Double Click");
//         },
//         onLongPress: (){
//           showDialog(
//             context: context,
//             builder: (context){
//               return AlertDialog(
//                 title: Text("Ditahan"),
//                 content: Text("Sudah berhasil"),
//                 actions: <Widget>[
//                   FlatButton(
//                     onPressed: (){},
//                     child: Text("Ok"),
//                   )
//                 ],
//               );
//             }
//           );
//         },
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(16),
//             color: Colors.red,
//           ),
//           padding: EdgeInsets.all(16),
//           child: Text(
//             "Add Product",
//             style: TextStyle(
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ),
//       appBar: AppBar(
//         title: Text("DSC PNJ"),
//         actions: <Widget>[
//           FlatButton(onPressed: () {}, child: Text("Search")),
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.settings),
//           ),
//         ],
//       ),
//     );
//   }
// }
