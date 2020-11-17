import 'package:flutter/material.dart';

class FeedbackHome extends StatefulWidget {
  @override
  _FeedbackHomeState createState() => _FeedbackHomeState();
}

class _FeedbackHomeState extends State<FeedbackHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
      ),
      body: Stack(
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                  child: Row(
                    children: [
                      feedbackColumnWidget('Feedbacks', 12),
                      feedbackColumnWidget('Queries', 10),
                    ]
                  ),
                ),
              ),
            ],
          ),
        ]
      ),
    );
  }

  Widget feedbackColumnWidget(String title, int counter){
    return Container(
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.orangeAccent
      ),
      child: Column(
        children: [
          Text(counter.toString(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(title,
          style: TextStyle(
            fontSize: 16.0,
            letterSpacing: 1.0,
            fontWeight: FontWeight.w800
          ),)
        ]
      ),
    );
  }
}