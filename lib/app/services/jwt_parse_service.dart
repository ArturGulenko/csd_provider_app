import 'package:jwt_decoder/jwt_decoder.dart';

class JWTParseService {
  static Map<String, dynamic> parse(String token) {
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    return decodedToken;
  }
}
