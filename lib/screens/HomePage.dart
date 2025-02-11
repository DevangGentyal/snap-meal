import 'package:flutter/material.dart';
import 'package:snap_meal/constants/colors.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: const SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TopBar(),
                ProgressBar(),
                ScanMealCard(),
                Headline(),
                CardListView(),
                SHeadline(),
              ],
            ),
          ),
        ));
  }
}

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          foregroundImage: AssetImage('assets/images/profile.png'),
        ),
        title: const Text('Hi, Devang',
            style: TextStyle(
                fontSize: 28,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        subtitle: Text("Let's track your meals",
            style: TextStyle(fontSize: 12, color: Colors.grey[600]!)),
        trailing: const Text('12AM', style: TextStyle(color: Colors.black)),
      ),
    );
  }
}

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 2,
                spreadRadius: 1),
          ],
        ),
        child: Column(
          children: [
            ListTile(
              title: const Text("Today's Progress",
                  style: TextStyle(fontSize: 20, color: Colors.black)),
              trailing: const Text('On Track!',
                  style: TextStyle(color: Colors.green)),
            ),
            Container(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 75,
                    height: 80,
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.5),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(10, 20),
                            blurRadius: 10,
                            spreadRadius: 0,
                            color: Colors.grey.withOpacity(.05)),
                      ],
                    ),
                    child: Column(
                      children: [
                        const Text('1,200',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Calories',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 75,
                    height: 80,
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.5),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(10, 20),
                            blurRadius: 10,
                            spreadRadius: 0,
                            color: Colors.grey.withOpacity(.05)),
                      ],
                    ),
                    child: Column(
                      children: [
                        const Text('32g',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Protein',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 75,
                    height: 80,
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.5),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(10, 20),
                            blurRadius: 10,
                            spreadRadius: 0,
                            color: Colors.grey.withOpacity(.05)),
                      ],
                    ),
                    child: Column(
                      children: [
                        const Text('48g',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Fats',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 75,
                    height: 80,
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.5),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(10, 20),
                            blurRadius: 10,
                            spreadRadius: 0,
                            color: Colors.grey.withOpacity(.05)),
                      ],
                    ),
                    child: Column(
                      children: [
                        const Text('165g',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Carbs',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScanMealCard extends StatefulWidget {
  const ScanMealCard({Key? key}) : super(key: key);

  @override
  State<ScanMealCard> createState() => _ScanMealCardState();
}

class _ScanMealCardState extends State<ScanMealCard> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> _openCamera() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Center everything
          children: [
            if (_image != null)
              Padding(
                padding: EdgeInsets.only(right: 10), // Adjust spacing
                child: Image.file(
                  _image!,
                  width: 200,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),

            Expanded(
              child: Container(
                height: 80,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10),
                  ),
                  onPressed: _openCamera,
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // Keeps it compact
                    children: [
                      Icon(Icons.camera_alt, color: Colors.white, size: 24),
                      SizedBox(height: 5), // Space between icon and text
                      Text(
                        "Scan Meal",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(width: 10), // Space between buttons

            Expanded(
              child: Container(
                height: 80,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10),
                  ),
                  onPressed: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.add, color: Colors.white, size: 24),
                      SizedBox(height: 5),
                      Text(
                        "Add Manually",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Headline extends StatelessWidget {
  const Headline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Suggested Meals",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.normal),
            ),
            Text(
              "The best food for you",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
        Text(
          "View More",
          style: TextStyle(
              color: Color(0xff15BE77), fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}

class SHeadline extends StatelessWidget {
  const SHeadline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Popular Menu",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.normal),
            ),
            Text(
              "The best food for you",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
        Text(
          "View More",
          style: TextStyle(
              color: Color(0xff15BE77), fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}

class CardListView extends StatelessWidget {
  const CardListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, bottom: 15.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 175,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            Card(
                "Vegan",
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Resturant%20Image%20(1).png?alt=media&token=461162b1-686b-4b0e-a3ee-fae1cb8b5b33",
                "8 min away"),
            Card(
                "Italian ",
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Restaurant%20Image.png?alt=media&token=43509b4c-269e-4279-8c88-36dc9ed27a66",
                "12 min away"),
            Card(
                "Vegan",
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Resturant%20Image%20(1).png?alt=media&token=461162b1-686b-4b0e-a3ee-fae1cb8b5b33",
                "15 min away"),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String text;
  final String imageUrl;
  final String subtitle;

  const Card(this.text, this.imageUrl, this.subtitle, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, right: 15),
      child: Container(
        width: 150,
        height: 150,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.5),
          boxShadow: [
            BoxShadow(
                offset: const Offset(10, 20),
                blurRadius: 10,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.05)),
          ],
        ),
        child: Column(
          children: [
            Image.network(imageUrl, height: 70, fit: BoxFit.cover),
            const Spacer(),
            Text(text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            const SizedBox(
              height: 5,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 12),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
