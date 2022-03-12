// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Character _$CharacterFromJson(Map<String, dynamic> json) => Character(
      json['char_id'] as int,
      json['name'] as String,
      json['birthday'] as String,
      (json['occupation'] as List<dynamic>).map((e) => e as String).toList(),
      json['img'] as String,
      json['status'] as String,
      json['nickname'] as String,
      (json['appearance'] as List<dynamic>).map((e) => e as int).toList(),
      json['portrayed'] as String,
    );

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
      'char_id': instance.char_id,
      'name': instance.name,
      'birthday': instance.birthday,
      'occupation': instance.occupation,
      'img': instance.img,
      'status': instance.status,
      'nickname': instance.nickname,
      'appearance': instance.appearance,
      'portrayed': instance.portrayed,
    };
