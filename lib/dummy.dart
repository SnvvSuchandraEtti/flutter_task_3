
// // import 'package:flutter/material.dart';
// // import 'package:device_preview/device_preview.dart';
// // import 'package:flutter/foundation.dart' show kReleaseMode;
// // import 'dart:math' as math;



// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         fontFamily: 'Poppins',
//       ),
//       home: const CourseScreen(),
//     );
//   }
// }
// import 'package:flutter/material.dart';


// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});
  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.orange,
//       body: SafeArea(
//         child: Column(
//           children: [
//             _buildHeader(),
//             Expanded(
//               child: _buildCourseContent(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildHeader() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       child: Row(
//         children: [
//           IconButton(
//             icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
//             onPressed: () {},
//           ),
//           const Expanded(
//             child: Text(
//               "Course",
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 18,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ),
//           IconButton(
//             icon: const Icon(Icons.more_vert, color: Colors.white),
//             onPressed: () {},
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildCourseContent() {
//     return Container(
//       width: double.infinity,
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(30),
//           topRight: Radius.circular(30),
//         ),
//       ),
//       child: ClipRRect(
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(30),
//           topRight: Radius.circular(30),
//         ),
//         child: SingleChildScrollView(
//           physics: const BouncingScrollPhysics(),
//           child: Column(
//             children: [
//               _buildCourseHeader(),
//               const SizedBox(height: 16),
//               _buildCourseSections(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildCourseHeader() {
//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.all(24),
//       decoration: const BoxDecoration(
//         color: Color(0xFFFFA726),
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(30),
//           topRight: Radius.circular(30),
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             "Spanish",
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 28,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 16),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Row(
//                   children: const [
//                     Text(
//                       "Beginner",
//                       style: TextStyle(
//                         color: Colors.black87,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     SizedBox(width: 4),
//                     Icon(Icons.keyboard_arrow_down, size: 18),
//                   ],
//                 ),
//               ),
//               Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   Container(
//                     width: 70,
//                     height: 70,
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.2),
//                       shape: BoxShape.circle,
//                     ),
//                   ),
//                   Container(
//                     width: 60,
//                     height: 60,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       shape: BoxShape.circle,
//                       border: Border.all(color: Colors.white, width: 2),
//                     ),
//                     child: const Center(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             "43%",
//                             style: TextStyle(
//                               color: Color(0xFFFFA726),
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16,
//                             ),
//                           ),
//                           Text(
//                             "Complete",
//                             style: TextStyle(
//                               color: Colors.grey,
//                               fontSize: 10,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           const SizedBox(height: 16),
//           Row(
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(4),
//                 decoration: BoxDecoration(
//                   color: Colors.pinkAccent,
//                   borderRadius: BorderRadius.circular(4),
//                 ),
//                 child: const Icon(Icons.diamond, color: Colors.white, size: 16),
//               ),
//               Container(
//                 margin: const EdgeInsets.only(left: 4),
//                 padding: const EdgeInsets.all(4),
//                 decoration: BoxDecoration(
//                   color: Colors.pinkAccent,
//                   borderRadius: BorderRadius.circular(4),
//                 ),
//                 child: const Icon(Icons.diamond, color: Colors.white, size: 16),
//               ),
//               const SizedBox(width: 8),
//               const Text(
//                 "2 Milestones",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildCourseSections() {
//     final sections = [
//       {
//         'title': 'Basics',
//         'progress': '4/4',
//         'icon': Icons.description,
//         'color': Colors.orange,
//         'progressColor': Colors.orange,
//       },
//       {
//         'title': 'Occupations',
//         'progress': '1/6',
//         'icon': Icons.work,
//         'color': Colors.red,
//         'progressColor': Colors.red,
//       },
//       {
//         'title': 'Conversation',
//         'progress': '3/4',
//         'icon': Icons.chat_bubble,
//         'color': Colors.blue,
//         'progressColor': Colors.blue,
//       },
//       {
//         'title': 'Places',
//         'progress': '1/6',
//         'icon': Icons.location_on,
//         'color': Colors.green,
//         'progressColor': Colors.green,
//       },
//       {
//         'title': 'Family members',
//         'progress': '3/4',
//         'icon': Icons.people,
//         'color': Colors.purple,
//         'progressColor': Colors.purple,
//       },
//       {
//         'title': 'Foods',
//         'progress': '2/4',
//         'icon': Icons.apple,
//         'color': Colors.blue,
//         'progressColor': Colors.blue,
//       },
//     ];

//     return Padding(
//       padding: const EdgeInsets.all(16),
//       child: GridView.builder(
//         shrinkWrap: true,
//         physics: const NeverScrollableScrollPhysics(),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 16,
//           mainAxisSpacing: 16,
//           childAspectRatio: 1.1,
//         ),
//         itemCount: sections.length,
//         itemBuilder: (context, index) {
//           final section = sections[index];
//           return _buildSectionCard(
//             title: section['title'] as String,
//             progress: section['progress'] as String,
//             icon: section['icon'] as IconData,
//             color: section['color'] as Color,
//             progressColor: section['progressColor'] as Color,
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildSectionCard({
//     required String title,
//     required String progress,
//     required IconData icon,
//     required Color color,
//     required Color progressColor,
//   }) {
//     final progressParts = progress.split('/');
//     final progressValue = int.parse(progressParts[0]) / int.parse(progressParts[1]);

//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 10,
//             spreadRadius: 1,
//           ),
//         ],
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             padding: const EdgeInsets.all(12),
//             decoration: BoxDecoration(
//               color: color.withOpacity(0.1),
//               shape: BoxShape.circle,
//             ),
//             child: Icon(icon, color: color),
//           ),
//           const SizedBox(height: 12),
//           Text(
//             title,
//             style: const TextStyle(
//               fontWeight: FontWeight.w600,
//               fontSize: 16,
//             ),
//           ),
//           const SizedBox(height: 4),
//           Text(
//             progress,
//             style: TextStyle(
//               color: Colors.grey[600],
//               fontSize: 12,
//             ),
//           ),
//           const SizedBox(height: 8),
//           Container(
//             width: 100,
//             height: 4,
//             decoration: BoxDecoration(
//               color: Colors.grey[200],
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: FractionallySizedBox(
//               alignment: Alignment.centerLeft,
//               widthFactor: progressValue,
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: progressColor,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



// // class TaskScreen extends StatefulWidget {
// //   const TaskScreen({super.key});

// //   @override
// //   _TaskScreenState createState() => _TaskScreenState();
// // }

// // class _TaskScreenState extends State<TaskScreen> {
// //   // Variables to track which task is expanded
// //   bool isTrainingExpanded = false;
// //   bool isDistanceExpanded = false;
// //   bool isWaterBalanceExpanded = false;

// //   @override
// //   Widget build(BuildContext context) {
// //     final mediaQuery = MediaQuery.of(context);
// //     final screenHeight = mediaQuery.size.height;
// //     final screenWidth = mediaQuery.size.width;
// //     final padding = mediaQuery.padding;

// //     return Scaffold(
// //       backgroundColor: const Color(0xFF604DFD),
// //       body: Padding(
// //         padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             SizedBox(height: padding.top + screenHeight * 0.01),
// //             const Text(
// //               "TODAY'S TASK",
// //               style: TextStyle(
// //                 fontSize: 48,
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.white,
// //               ),
// //             ),
// //             SizedBox(height: screenHeight * 0.01),
// //             Text(
// //               "Marathon Running Prep",
// //               style: TextStyle(
// //                 fontSize: screenHeight * 0.024,
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.white,
// //               ),
// //             ),
// //             SizedBox(height: screenHeight * 0.01),
// //             Expanded(
// //               child: ListView(
// //                 children: [
// //                   TaskItem(
// //                     icon: Icons.play_circle_outline,
// //                     title: "Training",
// //                     subtitle: "Daily workouts to help your body become more resilient during a marathon",
// //                     duration: "1h a day",
// //                     screenHeight: screenHeight,
// //                     isExpanded: isTrainingExpanded,
// //                     onTap: () {
// //                       setState(() {
// //                         isTrainingExpanded = !isTrainingExpanded;
// //                         isDistanceExpanded = false;
// //                         isWaterBalanceExpanded = false;
// //                       });
// //                     },
// //                     image: Image.asset('training.jpg'),
// //                   ),
// //                   TaskItem(
// //                     icon: Icons.location_on,
// //                     title: "Distance",
// //                     subtitle: "Daily running training. Distance 10km",
// //                     duration: "1.5h a day",
// //                     screenHeight: screenHeight,
// //                     isExpanded: isDistanceExpanded,
// //                     onTap: () {
// //                       setState(() {
// //                         isTrainingExpanded = false;
// //                         isDistanceExpanded = !isDistanceExpanded;
// //                         isWaterBalanceExpanded = false;
// //                       });
// //                     },
// //                     image: Image.asset('distance.jpg'),
// //                   ),
// //                   TaskItem(
// //                     icon: Icons.local_drink,
// //                     title: "Water balance",
// //                     subtitle: "Maintain your optimal water balance as\nrecommended by the trainer",
// //                     duration: "1.8L a day",
// //                     screenHeight: screenHeight,
// //                     isExpanded: isWaterBalanceExpanded,
// //                     onTap: () {
// //                       setState(() {
// //                         isTrainingExpanded = false;
// //                         isDistanceExpanded = false;
// //                         isWaterBalanceExpanded = !isWaterBalanceExpanded;
// //                       });
// //                     },
// //                     image: Image.asset('water.jpg'),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //             Align(
// //               alignment: Alignment.bottomRight,
// //               child: FloatingActionButton(
// //                 onPressed: () {},
// //                 backgroundColor: Colors.orange,
// //                 child: const Icon(Icons.mark_email_read_outlined),
// //               ),
// //             ),
// //             SizedBox(height: screenHeight * 0.02),
// //           ],
// //         ),
// //       ),
// //       bottomNavigationBar: BottomNavigationBar(
// //         backgroundColor: Colors.white,
// //         items: [
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.home, color: Colors.orange, size: screenHeight * 0.04),
// //             label: '',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Transform(
// //               alignment: Alignment.center,
// //               transform: Matrix4.rotationY(math.pi), // Flips the icon horizontally
// //               child: Icon(
// //                 Icons.chat_bubble_outline_sharp,
// //                 color: Colors.orange,
// //                 size: screenHeight * 0.04,
// //               ),
// //             ),
// //             label: '',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.person_outline_outlined, color: Colors.orange, size: screenHeight * 0.04),
// //             label: '',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.search, color: Colors.orange, size: screenHeight * 0.04),
// //             label: '',
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class TaskItem extends StatelessWidget {
// //   final IconData icon;
// //   final String title;
// //   final String subtitle;
// //   final String duration;
// //   final double screenHeight;
// //   final bool isExpanded;
// //   final VoidCallback onTap;
// //   final Image image;

// //   const TaskItem({super.key, 
// //     required this.icon,
// //     required this.title,
// //     required this.subtitle,
// //     required this.duration,
// //     required this.screenHeight,
// //     required this.isExpanded,
// //     required this.onTap,
// //     required this.image,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return GestureDetector(
// //       onTap: onTap,
// //       child: AnimatedContainer(
// //         duration: const Duration(milliseconds: 300),
// //         margin: EdgeInsets.only(bottom: screenHeight * 0.02),
// //         padding: EdgeInsets.all(screenHeight * 0.02),
// //         decoration: BoxDecoration(
// //           color: Colors.white.withOpacity(0.1),
// //           borderRadius: BorderRadius.circular(15),
// //         ),
// //         child: Column(
// //           children: [
// //             Row(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 Icon(icon, color: Colors.white, size: screenHeight * 0.04),
// //                 SizedBox(width: screenHeight * 0.02),
// //                 Expanded(
// //                   child: Column(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: [
// //                       Text(
// //                         title,
// //                         style: TextStyle(
// //                           color: Colors.white,
// //                           fontSize: screenHeight * 0.025,
// //                           fontWeight: FontWeight.bold,
// //                         ),
// //                       ),
// //                       SizedBox(height: screenHeight * 0.01),
// //                       Text(
// //                         subtitle,
// //                         style: TextStyle(
// //                           color: Colors.white70,
// //                           fontSize: screenHeight * 0.02,
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //                 Text(
// //                   duration,
// //                   style: TextStyle(
// //                     color: Colors.white70,
// //                     fontSize: screenHeight * 0.02,
// //                   ),
// //                 ),
// //               ],
// //             ),
// //             if (isExpanded) ...[
// //               SizedBox(height: screenHeight * 0.02),
// //               ClipRRect(
// //                 borderRadius: BorderRadius.circular(15),
// //                 child: image,
// //               ),
// //             ],
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
