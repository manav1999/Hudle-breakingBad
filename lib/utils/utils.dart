
import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:hudle/model/apiResponse.dart';
import 'package:hudle/utils/breakingBadApi.dart';
import 'package:hudle/utils/networkError.dart';

class UtilityProvider with ChangeNotifier{

  final api = BreakingBadApi();
  Future<Either<NetworkError,ApiResponse>> getCharacterInfo(int offset) async {
    final apiResult = await api.getCharacters(offset: offset);
    return apiResult.fold((e){
      return Left(NetworkError(e.toString()));

    }, (r){
      return Right(ApiResponse.fromJson(r));
    });
  }

  final _streamController = StreamController<Either<NetworkError,ApiResponse>>();

  Stream<Either<NetworkError,ApiResponse>> get characterStream {
    return _streamController.stream;
  }

  Future<void> getNewCharacters(int offset) async {
    final result = await getCharacterInfo(offset);
    _streamController.add(result);


  }



}