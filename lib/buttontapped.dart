import 'package:flutter/material.dart';

class ButtonTapped extends StatelessWidget {
  var icon;
   ButtonTapped({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Icon(
            icon,
            size: 35,
            color: Colors.grey.shade700,
          ),
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade300,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade600,
              offset: const Offset(4.0, 4.0),
              blurRadius: 15.0,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
            ),

          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.grey.shade700,
              Colors.grey.shade600,
              Colors.grey.shade500,
              Colors.grey.shade200,



            ],stops: const [
            0.1,
            0.3,
            0.8,
            1
          ],
          ),
        ),
      ),

    );
  }
}
