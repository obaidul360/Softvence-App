import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300], // ব্যাকগ্রাউন্ড হালকা ধূসর
        body: const Center(child: CommunityLearningDialog()),
      ),
    );
  }
}

class CommunityLearningDialog extends StatefulWidget {
  const CommunityLearningDialog({super.key});

  @override
  State<CommunityLearningDialog> createState() =>
      _CommunityLearningDialogState();
}

class _CommunityLearningDialogState extends State<CommunityLearningDialog> {
  // রেডিও বাটনের ভ্যালু ট্র্যাক করার জন্য ভেরিয়েবল
  int _selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.0), // বক্সের কোণা গোল করার জন্য
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, 
        children: [
      
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: () {
             
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.close, size: 20, color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(height: 16),

     
          const Text(
            "Community learning",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0D1B3E), // গাঢ় নীল রঙ
            ),
          ),
          const SizedBox(height: 16),

         
          Text(
            "Our blog takes the message from the weekend and lays out next right steps, so you can hear a message and do a message in practical. Our blog takes the message from the weekend and lays out next right steps...",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey[600],
              height: 1.4,
            ),
          ),
          const SizedBox(height: 24),

          // রেডিও বাটন ১
          RadioListTile<int>(
            value: 1,
            groupValue: _selectedValue,
            activeColor: Colors.blue,
            title: const Text(
              "Show One Never show again",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            onChanged: (value) {
              setState(() {
                _selectedValue = value!;
              });
            },
          ),

          // রেডিও বাটন ২
          RadioListTile<int>(
            value: 2,
            groupValue: _selectedValue,
            activeColor: Colors.blue,
            title: const Text(
              "Show Every time",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            onChanged: (value) {
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
          const SizedBox(height: 24),

          // কন্টিনিউ বাটন
          SizedBox(
            width: double.infinity,
            height: 55,
            child: ElevatedButton(
              onPressed: () {
                print("Selected Option: $_selectedValue");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1E88E5), // ভাইব্রেন্ট ব্লু
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 0,
              ),
              child: const Text(
                "Continue",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Text("Update"),
          Text("Continue"),
          Text("Next"),
          Text("Save"),
          Text("Upload"),
        ],
      ),
    );
  }
}
