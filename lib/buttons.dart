import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  var icon;
  Buttons({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Icon(
        icon,
        size: 37,
        color: Colors.grey.shade800,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey
            .shade300, //there will be no effect on this line cause we already have linear gradient
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
            Colors.grey.shade200,
            Colors.grey.shade300,
            Colors.grey.shade400,
            Colors.grey.shade500,
          ],
          stops: const [0.1, 0.3, 0.8, 1],
        ),
      ),
    );
  }
}
