import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Playlist());
  }
}

class Playlist extends StatefulWidget {
  const Playlist({super.key});

  @override
  State<Playlist> createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  bool _test = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            "Music Player",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
        ),
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            SafeArea(
                child: ListView.separated(
                    separatorBuilder: (_, index) => const Divider(
                          color: Colors.white30,
                          height: 0,
                          thickness: 1,
                          indent: 70,
                        ),
                    itemCount: 3,
                    itemBuilder: (_, index) => Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: ListTile(
                            onTap: () {},
                            tileColor: Colors.black,
                            hoverColor: Colors.white12,
                            title: Text(
                              "NF",
                              style: const TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              "Lost",
                              style: TextStyle(color: Colors.white60),
                            ),
                            leading: Image.asset('img.jpeg'),
                            trailing: Text('h'),
                          ),
                        ))),
            Positioned(
                child: Container(
              color: Colors.amber,
              margin: EdgeInsets.all(2),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListTile(
                  tileColor: Colors.amber,
                  title: Text('Artist Name'),
                  subtitle: Text('Artist Name'),
                  leading: Text(''),
                  onTap: () {},
                ),
              ),
            ))
          ],
        ));
  }
}
