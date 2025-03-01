import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<String> skillLevels = ['Begginer', 'Intermediate', 'Advanced'];
  String? chosenLevel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          height: 1000,
          child: Stack(
            children: [
              Container(color: Colors.white),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 245, 165, 54),
                ),
              ),
              Positioned(
                top: 0,
                left: -3,
                child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 245, 165, 54),
                  radius: MediaQuery.of(context).size.width / 2 + 5,
                ),
              ),
              Positioned(
                top: 60,
                left: -40,
                child: Opacity(
                  opacity: 0.4,
                  child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 238, 193, 73),
                    radius: 90,
                  ),
                ),
              ),
              Positioned(
                top: 20,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.arrow_back_ios, color: Colors.white, size: 25),
                      SizedBox(width: 120),
                      Text(
                        'Curse',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 140),
                      Icon(Icons.more_vert, color: Colors.white, size: 25),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 60,
                right: -70,
                child: Opacity(
                  opacity: 0.4,
                  child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 238, 193, 73),
                    radius: 80,
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 50,
                child: Column(
                  children: [
                    Text(
                      'Spanish',
                      style: TextStyle(
                        fontSize: 38,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2<String>(
                          isExpanded: true,
                          hint: Text(
                            'Beginner',
                            style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 232, 158, 53)),
                          ),
                          items: skillLevels
                              .map(
                                (String level) => DropdownMenuItem<String>(
                                  value: level,
                                  child: Text(
                                    level,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 239, 174, 81),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                          value: chosenLevel,
                          onChanged: (String? value) {
                            setState(() {
                              chosenLevel = value;
                            });
                          },
                          buttonStyleData: const ButtonStyleData(
                            padding: EdgeInsets.symmetric(horizontal: 18),
                            height: 42,
                            width: 150,
                          ),
                          menuItemStyleData: const MenuItemStyleData(height: 42),
                        ),
                      ),
                    ),
                    SizedBox(height: 38),
                    Row(
                      children: [
                        Text(
                          "♦️ ♦️ ",
                          style: const TextStyle(
                              fontSize: 18, color: Colors.pinkAccent),
                        ),
                        Text(
                          "2 Milestones",
                          style: const TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 100,
                right: 40,
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: CircularProgressIndicator(
                    value: 0.43,
                    color: Colors.white,
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                    backgroundColor: Colors.white38,
                    strokeCap: StrokeCap.round,
                    strokeWidth: 5,
                  ),
                ),
              ),
              Positioned(
                top: 120,
                right: 65,
                child: Column(
                  children: [
                    Text(
                      "43%",
                      style: const TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Text(
                      "completed",
                      style: const TextStyle(fontSize: 11, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 300,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              moduleCard(Icons.file_open, "Basics", 4,
                                  const Color.fromARGB(255, 240, 168, 69)),
                              SizedBox(width: 12),
                              moduleCard(Icons.shopping_bag_sharp, "Occupations", 1,
                                  Colors.red),
                            ],
                          ),
                          Row(
                            children: [
                              moduleCard(Icons.message, "Conversation", 3, Colors.blue),
                              SizedBox(width: 12),
                              moduleCard(Icons.location_on, "Places", 1, Colors.green),
                            ],
                          ),
                          Row(
                            children: [
                              moduleCard(Icons.group, "family members", 2, Colors.purple),
                              SizedBox(width: 12),
                              moduleCard(Icons.apple_sharp, "foods", 1,
                                  const Color.fromARGB(255, 14, 95, 161)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget moduleCard(icon, text, value, color) {
    return Padding(
      padding: const EdgeInsets.only(left: 22, top: 12, bottom: 12),
      child: Container(
        width: 160,
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 0, blurRadius: 12),
          ],
        ),
        child: Column(
          children: [
            SizedBox(height: 12),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 0,
                    blurRadius: 12,
                  ),
                ],
              ),
              child: Center(child: Icon(icon, color: color, size: 30)),
            ),
            SizedBox(height: 6),
            Text(
              text,
              style: const TextStyle(fontSize: 18, color: Colors.black),
            ),
            Text(
              "$value/5",
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),
            SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.all(12),
              child: LinearProgressIndicator(
                minHeight: 6,
                borderRadius: BorderRadius.circular(22),
                value: value / 5,
                color: color,
              ),
            ),
            SizedBox(height: 6),
          ],
        ),
      ),
    );
  }
}
