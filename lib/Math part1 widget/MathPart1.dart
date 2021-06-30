import 'package:flutter/material.dart';
import 'package:ncert1/Math%20part1%20widget/data.dart';
import 'package:ncert1/PDF%20Widget/pdf.dart';

class Mathpart1 extends StatelessWidget {
  const Mathpart1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("math-I (XII)"),
      ),
      body: ListView.builder(
          itemCount: modal5.length,
          itemBuilder: (context, index) {
            MathPart1 mathPart1 = modal5[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => PDF()));
              },
              child: Container(
                  height: 80,
                  child: Card(
                    elevation: 10,
                    shadowColor: Colors.cyan,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(mathPart1.name1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.blue,
                                alignment: Alignment.center,
                                height: 20,
                                child: Text(
                                  "Download this",
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Container(
                              alignment: Alignment.center,
                              height: 20,
                              color: Colors.orange,
                              child: Text("Online Study"),
                            ))
                          ],
                        )
                      ],
                    ),
                  )),
            );
          }),
    );
  }
}
