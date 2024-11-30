import 'package:flutter/material.dart';

class LayoutView extends StatelessWidget {
  LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        margin: const EdgeInsets.fromLTRB(40, 80, 40, 80),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                    child: Card(
                        color: Colors.blue[100],
                        child: const SizedBox(
                            height: 150,
                            child: Center(
                              child: Text("Card one"),
                            )))),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: Card(
                        color: Colors.blue[100],
                        child: const SizedBox(
                            height: 150,
                            child: SizedBox(
                              height: 100,
                              child: Center(
                                child: Text("Card Two"),
                              ),
                            )))),
              ],
            ),
            const Expanded(
              child: Card(
                  color: Color.fromARGB(255, 95, 54, 244),
                  child: SizedBox(
                    child: Center(
                      child: Text("card three"),
                    ),
                  )),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                    child: Card(
                        color: Colors.blue[100],
                        child: const SizedBox(
                          height: 400,
                          child: Center(
                            child: Text("card 5"),
                          ),
                        ))),
                Expanded(
                    child: Card(
                        color: Colors.blue[100],
                        child: const SizedBox(
                          height: 400,
                          child: Center(
                            child: Text("card 6"),
                          ),
                        )))
              ],
            )
          ],
        ),
  
    );
  }
}
