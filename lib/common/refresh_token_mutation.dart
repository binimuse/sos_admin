class RefreshTokenMutation {
  static const String refreshtoken = '''
mutation refreshToken(){
  refreshToken(){
    data {
      id
    }tokens {
      refresh_token
      access_token
    }
  }
  }
 ''';
}
