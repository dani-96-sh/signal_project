import 'package:flutter/material.dart';

Widget CostumWidget({required String imageTitle, required String nameCoin}) {
  return Padding(
    padding: EdgeInsets.all(5),
    child: Card(
      shadowColor: Colors.amber,
      elevation: 5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Image(
              width: 70,
              height: 70,
              image: AssetImage('images/$imageTitle'),
            ),
          ),
          SizedBox(
            width: 25,
          ),
          Text(
            '$nameCoin',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            width: 25,
          ),
          Text(
            '12,120',
            style: TextStyle(fontSize: 18, color: Colors.green),
          ),
          Icon(
            Icons.north,
            size: 18,
            color: Colors.green,
          ),
          SizedBox(
            width: 25,
          ),
          Text(
            '11,100',
            style: TextStyle(fontSize: 18, color: Colors.red),
          ),
          Icon(
            Icons.south,
            size: 18,
            color: Colors.red,
          ),
        ],
      ),
    ),
  );
}
