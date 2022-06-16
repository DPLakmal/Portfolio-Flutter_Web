import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Screenwidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        //  backgroundColor: const Color.fromARGB(0, 1, 12, 51),

        body: Row(
      children: [sidePanel(Screenwidth), mainPage(Screenwidth, ScreenHeight)],
    ));
  }
}

mainPage(double screenwidth, double screenHeght) {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          height: screenHeght,
          width: screenwidth * 0.8,
          color: Colors.red,
          child: home(),
        ),
        Container(
          height: screenHeght,
          width: screenwidth * 0.80,
          color: Colors.green,
        ),
        Container(
          height: screenHeght,
          width: screenwidth * 0.80,
          color: Colors.black,
        ),
        Container(
          height: screenHeght,
          width: screenwidth * 0.80,
          color: Colors.red,
        ),
      ],
    ),
  );
}

sidePanel(double screenwidth) {
  return Container(
    color: const Color.fromARGB(255, 18, 18, 65),
    width: screenwidth * 0.20,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 45),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(360),
                side: const BorderSide(
                  width: 4,
                  color: Color.fromARGB(255, 177, 175, 175),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(360),
                child: Image.asset(
                  "profile.png",
                  scale: 1.5,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Center(
              child: Text(
                "Pubudu Lakmal",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                textScaleFactor: 2,
              ),
            ),
          ),
          socialMediaButton(),
          NavigationPage(),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "made using Flutter Web",
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    ),
  );
}

NavigationPage() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 50),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.home_outlined,
              size: 32,
            ),
            label: const Text(
              "Home",
              textScaleFactor: 1.5,
            )),
        const SizedBox(
          height: 30,
        ),
        TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.person_outlined,
              size: 32,
            ),
            label: const Text(
              "About",
              textScaleFactor: 1.5,
            )),
        const SizedBox(
          height: 30,
        ),
        TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.work_outline_outlined,
              size: 32,
            ),
            label: const Text(
              "Projects",
              textScaleFactor: 1.5,
            )),
        const SizedBox(
          height: 30,
        ),
        TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.receipt_long,
              size: 32,
            ),
            label: const Text(
              "Blog",
              textScaleFactor: 1.5,
            )),
      ],
    ),
  );
}

socialMediaButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(360),
          child: Material(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(360)),
            color: Colors.white12,
            child: IconButton(
              hoverColor: Colors.lightBlue,
              icon: const Icon(
                FontAwesomeIcons.twitter,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(360),
          child: Material(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(360)),
            color: Colors.white12,
            child: IconButton(
              hoverColor: Colors.orangeAccent,
              onPressed: () {},
              icon: const Icon(
                Icons.mail,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(360),
          child: Material(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(360)),
            color: Colors.white12,
            child: IconButton(
              hoverColor: Colors.deepOrange,
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.stackOverflow,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(360),
          child: Material(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(360)),
            color: Colors.white12,
            child: IconButton(
              hoverColor: Colors.black87,
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.github,
                color: Colors.white,
              ),
              color: Colors.black,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(360),
          child: Material(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(360)),
            color: Colors.white12,
            child: IconButton(
              hoverColor: Colors.blue[800],
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.linkedin,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

home() {
  return Image.asset("profile.png");
}
