import 'package:flutter/material.dart';
import 'package:hudle/model/character.dart';

class CharacterScreen extends StatelessWidget {
  Character c;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Center(
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      //width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.0),
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: NetworkImage(c.img),
                          ))),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Name: ${c.name}" ,),
                    Text("NickName : ${c.nickname}",)],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Portrayed: ${c.portrayed}", ),
                    Text("Status: ${c.status}")],
                ),
                SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
                  child: Column(
                    children:  [
                      Center(child:Text("Occupation")),
                      for(var temp in c.occupation) Text("$temp, ")

                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black)
                  ),
                  child: Column(
                    children:  [
                      Center(child:Text("Appearance")),
                      for(var temp in c.appearance) Text("Season : $temp, ")

                    ],
                  ),
                ),




              ],
            ),
          ),
        ));
  }

  CharacterScreen(this.c);
}
