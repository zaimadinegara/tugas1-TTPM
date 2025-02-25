import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ProfilePage());
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
        backgroundColor: const Color.fromARGB(255, 38, 146, 234),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('asset/zaim.jpeg'),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Zaim M Tsaqif Adinegara',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('NIM: 123220200', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Tombol 1")),
                ElevatedButton(onPressed: () {}, child: Text("Tombol 2")),
                ElevatedButton(onPressed: () {}, child: Text("Tombol 3")),
                ElevatedButton(onPressed: () {}, child: Text("Tombol 4")),
                ElevatedButton(onPressed: () {}, child: Text("Tombol 5")),
                ElevatedButton(onPressed: () {}, child: Text("Tombol 6")),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  Color cardColor;
                  switch (index) {
                    case 0:
                      cardColor = const Color.fromARGB(255, 28, 159, 95);
                      break;
                    case 1:
                      cardColor = Colors.green;
                      break;
                    case 2:
                      cardColor = const Color.fromARGB(255, 67, 204, 71);
                      break;
                    case 3:
                      cardColor = const Color.fromARGB(255, 45, 182, 184);
                      break;
                    default:
                      cardColor = Colors.grey;
                  }

                  return Card(
                    color: cardColor,
                    elevation: 5,
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'asset/pohonn.png',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
