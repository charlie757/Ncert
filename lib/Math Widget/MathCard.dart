import 'package:flutter/material.dart';
import 'package:ncert1/Math%20Widget/data.dart';
import 'package:ncert1/Math%20part1%20widget/MathPart1.dart';

class MathCard extends StatelessWidget {
  const MathCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maths"),
      ),
      body: GridView.builder(
          itemCount: modal4.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            Math math = modal4[index];
            return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mathpart1()));
              },
              child: Card(
                elevation: 10,
                shadowColor: Colors.pink,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      math.img,
                      height: 70,
                      width: 80,
                    ),
                    Text(math.name)
                  ],
                ),
              ),
            );
          }),
    );
  }
}
