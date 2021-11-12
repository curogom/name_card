import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CuroGom Namecard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NameCard(),
    );
  }
}

class NameCard extends StatefulWidget {
  const NameCard({Key? key}) : super(key: key);

  @override
  _NameCardState createState() => _NameCardState();
}

class _NameCardState extends State<NameCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const CircleAvatar(
            radius: 100.0,
            backgroundImage: AssetImage('images/ico_curogom.png'),
          ),
          Text(
            'CuroGom',
            style: GoogleFonts.lobster(
                textStyle: TextStyle(
              color: Colors.indigo.shade50,
              fontSize: 40.0,
            )),
          ),
          Text(
            'FLUTTER DEVELOPER',
            style: GoogleFonts.bebasNeue(
              textStyle: TextStyle(
                color: Colors.indigo.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
            width: 300.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          Card(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: const Icon(
                Icons.phone,
                color: Colors.indigo,
              ),
              title: Text(
                '010-2906-2852',
                style: GoogleFonts.ibmPlexMono(
                  textStyle: TextStyle(
                    color: Colors.indigo.shade900,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ),
          ),
          Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  color: Colors.indigo,
                ),
                title: Text(
                  'i_am@curogom.dev',
                  style: GoogleFonts.ibmPlexMono(
                    textStyle: TextStyle(
                      color: Colors.indigo.shade900,
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ))
        ],
      )),
    );
  }
}
