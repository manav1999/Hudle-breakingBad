import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class BreakingBadApi {
  String endpoint = "www.breakingbadapi.com";

  Future<Either<Exception,String>> getCharacters({int offset : 0})async {
    try{
      final queryParameters ={
        'limit':'10',
        'offset' : '$offset'
      };
      final uri = Uri.https(endpoint,"/api/characters",queryParameters);
      final response = await http.get(uri);
      return Right(response.body);
    }on Exception catch (x, _)
    {
      return Left(x);
    }
  }
}