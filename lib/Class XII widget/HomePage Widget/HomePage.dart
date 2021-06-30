import 'package:flutter/material.dart';
import 'package:ncert1/Class%20XII%20widget/ClassXIICard.dart';
import 'package:ncert1/HomePage%20Widget/data.dart';
import 'package:ncert1/NCERT%20Book%20widget/NCERTCards.dart';
import 'package:ncert1/NCERT%20Book%20widget/data.dart';

import 'MyDrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //   var navigator = [
    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>ClassXIICard())),

    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>ClassXIICard())),
    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>ClassXIICard())),
    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>ClassXIICard())),
    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>ClassXIICard())),
    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>ClassXIICard())),
    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>ClassXIICard()))
    // ];

    return Scaffold(
        appBar: AppBar(
          title: Text("NCERT"),
          actions: [IconButton(icon: Icon(Icons.share), onPressed: () {})],
        ),
        drawer: MyDrawer(),
        body: GridView.builder(
            itemCount: modal.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              NCERTModal ncertModal = modal[index];
              return InkWell(
                onTap: () async {
                  await Future.delayed(Duration(seconds: 1));
                  // return Circ
                  await Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NCERTCards()));
                },
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        ncertModal.img,
                        width: 80,
                        height: 60,
                      ),
                      Text(ncertModal.name)
                    ],
                  ),
                ),
              );
            }));
  }
}
