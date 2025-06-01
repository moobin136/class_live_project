// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'বাটন ও টেক্সট ডেমো',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ButtonTextDemo(),
//     );
//   }
// }

// class ButtonTextDemo extends StatefulWidget {
//   @override
//   _ButtonTextDemoState createState() => _ButtonTextDemoState();
// }

// class _ButtonTextDemoState extends State<ButtonTextDemo> {
//   String displayedText = 'এখানে টেক্সট দেখানো হবে';

//   void updateText(String newText) {
//     setState(() {
//       displayedText = newText;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('বাটন ও টেক্সট ডেমো'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // টেক্সট প্রদর্শন এলাকা
//             Padding(
//               padding: EdgeInsets.all(20),
//               child: Text(
//                 displayedText,
//                 style: TextStyle(fontSize: 24),
//                 textAlign: TextAlign.center,
//               ),
//             ),
            
//             SizedBox(height: 20),
            
//             // বাটন সারি
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   onPressed: () => updateText('আপনি প্রথম বাটন ক্লিক করেছেন'),
//                   child: Text('বাটন ১'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () => updateText('দ্বিতীয় বাটন নির্বাচিত হয়েছে'),
//                   child: Text('বাটন ২'),
//                 ),
//               ],
//             ),
            
//             SizedBox(height: 20),
            
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   onPressed: () => updateText('তৃতীয় বাটনের টেক্সট দেখা যাচ্ছে'),
//                   child: Text('বাটন ৩'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () => updateText('চতুর্থ বাটন কাজ করছে'),
//                   child: Text('বাটন ৪'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }