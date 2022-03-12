import 'package:json_annotation/json_annotation.dart';

part 'character.g.dart';

@JsonSerializable()
class Character {
  int char_id;
  String name;
  String birthday;
  List<String> occupation;
  String img;
  String status;
  String nickname;
  List<int> appearance;
  String portrayed;



  factory Character.fromJson(Map<String,dynamic> json) => _$CharacterFromJson(json);

  Map<String,dynamic> toJson() => _$CharacterToJson(this);

  Character(this.char_id, this.name, this.birthday, this.occupation, this.img,
      this.status, this.nickname, this.appearance, this.portrayed);
}
