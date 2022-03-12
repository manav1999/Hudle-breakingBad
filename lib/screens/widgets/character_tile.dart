import 'package:flutter/material.dart';
import 'package:hudle/model/character.dart';
import 'package:hudle/screens/widgets/characterScreen.dart';

class CharacterTile extends StatelessWidget {

  Character c;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>CharacterScreen(c)));
      },
      child: Card(

        child: Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(c.img))),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(child: Text(c.name,style: TextStyle(color: Colors.white),),),
          ),
        ),
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
      ),
    );


  }

  CharacterTile(this.c);
}
