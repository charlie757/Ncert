import 'package:flutter/material.dart';
import 'package:ncert1/Class%20XII%20widget/ClassXIICard.dart';
import 'package:ncert1/NCERT%20Book%20widget/data.dart';

class NCERTCards extends StatelessWidget {
  const NCERTCards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colors = [
      Colors.red,
      Colors.cyan,
      Colors.orange,
      Colors.purple,
      Colors.green,
      Colors.blue,
      Colors.orangeAccent,
      Colors.red,
      Colors.cyan,
      Colors.orange,
      Colors.purple,
    ];

    return Scaffold(
      appBar: AppBar(title: Text("NCERT Books")),
      body: GridView.builder(
          itemCount: modal1.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            NCERTBooks ncertBooks = modal1[index];
            return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ClassXIICard()));
                },
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: colors[index],
                        child: Text(ncertBooks.number),
                      ),
                      Text(ncertBooks.name)
                    ],
                  ),
                ));
          }),
    );
  }
}
