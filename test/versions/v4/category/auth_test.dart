import 'package:test/test.dart';

import 'package:tmdb_api/tmdb_api.dart';
import '../../../../lib/keys.dart';

void main() {
  TMDB tmdb = TMDB(ApiKeys(Keys.API, Keys.API_V4));
  group('Auth', () {
    test('Create request token', () async {
      Map result = await tmdb.v4.auth.createRequestToken();
      print(result);
      expect(result is Map, true);
      expect(result['success'], true);
    });

    test('Create access token', () async {
      Map result = await tmdb.v4.auth.createAccessToken(
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYmYiOjE1ODQzNjgxODYsInN1YiI6IjVkZjEyMTYzZGI5NTJkMDAxOWJlZjAyNiIsImp0aSI6IjE5MDcxMDgiLCJhdWQiOiJjMjVkZDA2ODZmZDEyODk4YzJiMTg2ZTY5ZTY3MjhmYyIsInNjb3BlcyI6WyJhcGlfcmVhZCIsImFwaV93cml0ZSJdLCJ2ZXJzaW9uIjoxfQ.cCgOIDlLk7F0LS-OlMJNl059TucIspxhhENuTW_dE1c');
      print(result);
      expect(result is Map, true);
      expect(result['success'], true);
    });

    test('Delete access token', () async {
      //doesn't work
      //https://trello.com/c/Q1ceDQ8e
      Map result = await tmdb.v4.auth.deleteAccessToken(
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYmYiOjE1ODQzNjgxODYsInN1YiI6IjVkZjEyMTYzZGI5NTJkMDAxOWJlZjAyNiIsImp0aSI6IjE5MDcxMDgiLCJhdWQiOiJjMjVkZDA2ODZmZDEyODk4YzJiMTg2ZTY5ZTY3MjhmYyIsInNjb3BlcyI6WyJhcGlfcmVhZCIsImFwaV93cml0ZSJdLCJ2ZXJzaW9uIjoxfQ.cCgOIDlLk7F0LS-OlMJNl059TucIspxhhENuTW_dE1c');
      print(result);
      expect(result is Map, true);
      expect(result['success'], true);
    });
  });
}
