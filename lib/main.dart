import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String showText = "Stop";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: Scaffold(
            appBar: AppBar(title: const Text("Remote Car")),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.pinkAccent,
                        width: 2,
                      )),
                      height: 200,
                      width: 360,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 90,
                              child: ElevatedButton(
                                  onPressed: () {
                                    onPressed("Forward");
                                  },
                                  child: const Text("Forward")),
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: 90,
                                    child: ElevatedButton(
                                        onPressed: () {
                                          onPressed("Left");
                                        },
                                        child: const Text("Left")),
                                  ),
                                  SizedBox(
                                    width: 90,
                                    child: ElevatedButton(
                                        onPressed: () {
                                          onPressed("Stop");
                                        },
                                        child: const Text("Stop")),
                                  ),
                                  SizedBox(
                                    width: 90,
                                    child: ElevatedButton(
                                        onPressed: () {
                                          onPressed("Right");
                                        },
                                        child: const Text("Right")),
                                  ),
                                ]),
                            SizedBox(
                              width: 90,
                              child: ElevatedButton(
                                  onPressed: () {
                                    onPressed("Reverse");
                                  },
                                  child: const Text("Reverse")),
                            )
                          ]),
                    ),
                    Text(
                      showText,
                      style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrangeAccent),
                    )
                  ]),
            )));
  }

  void onPressed(String s) {
    setState(() {
      showText = s;
    });
  }
}
