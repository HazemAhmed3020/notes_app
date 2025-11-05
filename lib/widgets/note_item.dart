
import 'package:flutter/material.dart';
class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 10,
      ),
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        color: Color(0xFFFFCD7A),
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            title: Text(
              'Flutter tips',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            subtitle: Text(
              'Build your career with tharwat samy',
              style: TextStyle(fontSize: 20, color: Colors.black26),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.black, size: 30),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Text('May 21,2022',textAlign: TextAlign.end ,style: TextStyle(color: Colors.black26),),
          )
        ],
      ),
    );
  }
}
