import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:hudle/screens/widgets/character_tile.dart';
import 'package:hudle/screens/widgets/error_tile.dart';

import '../getit.dart';
import '../model/character.dart';
import '../utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AfterLayoutMixin {
  List<Widget> characterList = [];
  ScrollController _scrollController = ScrollController();
  int offset=0;
  bool isloading =false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {

      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent && isloading == false)
        {
          offset+=10;
          getCharacters(offset);


        }
    });
  }
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(A
        title: Text("Breaking Bad App"),
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: characterList.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: characterList.length,
                  controller: _scrollController,
                  itemBuilder: (BuildContext context, int index) {
                    return characterList[index];
                  })),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    getCharacters(offset);
  }

  void getCharacters(int offset) {
    setState(() {
      isloading=true;
    });
    getIt<UtilityProvider>().getNewCharacters(offset);
    getIt<UtilityProvider>().characterStream.listen((snapshot) {
      snapshot.fold((l) {
        characterList.add(ErrorTile(l.message));
      }, (r) {
        List<Widget> temp = [];
        for (var x in r.c) {
          Widget t = CharacterTile(x);
          temp.add(t);
        }
        characterList.addAll(temp);
      });
      setState(() {
        isloading=false;
      });
    });
  }
}
