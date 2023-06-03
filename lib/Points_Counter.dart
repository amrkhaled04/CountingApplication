import 'package:flutter/material.dart';

void main() {
  runApp(const Points_Counters());
}

class Points_Counters extends StatefulWidget {
  const Points_Counters({super.key});

  @override
  State<Points_Counters> createState() => _Points_CountersState();
}

class _Points_CountersState extends State<Points_Counters> {
  int t1 = 0;

  int t2 = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            "Points Counter",
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Divider(color: Colors.grey,thickness: 2,),
              ),
              const Row(
                children: [
                  Spacer(flex: 1),
                  Text(
                    "Team A",
                    style: TextStyle(fontSize: 30),
                  ),
                  Spacer(flex: 2),
                  Text(
                    "Team B",
                    style: TextStyle(fontSize: 30),
                  ),
                  Spacer(flex: 1),
                ],
              ),
              Row(
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    '$t1',
                    style: const TextStyle(fontSize: 200),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Text(
                    '$t2',
                    style: const TextStyle(fontSize: 200),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
              Row(
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.orange),
                        onPressed: () {t1++;
                          setState(() {

                          });},
                        child: const Text("Add 1 point"),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.orange),
                        onPressed: () {t1+=2;setState(() {

                        });},
                        child: const Text("Add 2 point"),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.orange),
                        onPressed: () {t1+=3;setState(() {

                        });},
                        child: const Text("Add 3 point"),
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.orange),
                        onPressed: () {t2++;setState(() {

                        });},
                        child: const Text("Add 1 point"),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.orange),
                        onPressed: () {t2+=2;setState(() {

                        });},
                        child: const Text("Add 2 point"),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.orange),
                        onPressed: () {t2+=3;setState(() {

                        });},
                        child: const Text("Add 3 point"),
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orange,fixedSize: const Size(150,20),),
                  onPressed: () {t1 = 0;t2 = 0;setState(() {

                  });},
                  child: const Text("Reset"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Divider(color: Colors.grey,thickness: 2,),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
