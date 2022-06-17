import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerC extends StatelessWidget {
  const DrawerC({Key? key, required this.screenwidth}) : super(key: key);
  final double screenwidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 18, 18, 65),
      width: screenwidth * 0.20,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            const Center(
              child: Text(
                "Pubudu Lakmal",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                textScaleFactor: 2,
              ),
            ),
            socialMediaButton(),
            const DrawerNavigation(),
            const Text(
              "Made with ❤️️ by @Pubudu_Lakmal\nUsing Flutter Web",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DrawerNavigation extends StatelessWidget {
  const DrawerNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton.icon(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.white;
                  }
                  return Colors.white54;
                }),
              ),
              onPressed: () {},
              icon:
                  const Icon(Icons.home_outlined, size: 32, color: Colors.blue),
              label: const Text(
                "Home",
                style: TextStyle(
                  fontSize: 20,
                ),
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
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.workspaces,
                size: 32,
              ),
              label: const Text(
                "Skills",
                style: TextStyle(fontSize: 20, color: Colors.white),
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
                style: TextStyle(fontSize: 20, color: Colors.white),
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
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
        ],
      ),
    );
  }
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
