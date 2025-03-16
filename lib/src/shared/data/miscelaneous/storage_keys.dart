enum StorageKey {
  userEmail(keyName: 'user_email'),
  userPassword(keyName: 'user_password'),
  authToken(keyName: 'auth_token');

  const StorageKey({required this.keyName});

  final String keyName;
}
