import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  Preferences._();

  static final Preferences _instance = Preferences._();

  static SharedPreferences? _shared;

  final String _isLogged = 'is_logged';
  final String _isGuest = 'is_guest';
  final String _token = 'token';
  final String _studId = 'studId';
  final String _guestId = 'guestId';
  final String _userName = 'userName';
  final String _inviteCode = 'inviteCode';
  final String _registrationCoins = 'registrationCoins';
  final String _isPermission = '_is_permission';
  final String _isOnboarding = '_is_onboarding';
  final String _universityName = '_universityName';
  final String _universityId = '_universityId';

  static Future<void> init() async {
    _shared = await SharedPreferences.getInstance();
  }

  set isLogged(bool value) => _shared?.setBool(_isLogged, value);
  bool get isLogged => _shared?.getBool(_isLogged) ?? false;

  set isGuest(bool value) => _shared?.setBool(_isGuest, value);
  bool get isGuest => _shared?.getBool(_isGuest) ?? false;

  set isPermission(bool value) => _shared?.setBool(_isPermission, value);
  bool get isPermission => _shared?.getBool(_isPermission) ?? false;

  set isOnboarding(bool value) => _shared?.setBool(_isOnboarding, value);
  bool get isOnboarding => _shared?.getBool(_isOnboarding) ?? false;

  set token(String? value) {
    if (value == null) return;
    _shared?.setString(_token, value);
  }

  String? get token => _shared?.getString(_token);

  set userName(String? value) {
    if (value == null) return;
    _shared?.setString(_userName, value);
  }

  String? get userName => _shared?.getString(_userName);

  set inviteCode(String? value) {
    if (value == null) return;
    _shared?.setString(_inviteCode, value);
  }

  String? get inviteCode => _shared?.getString(_inviteCode);

  set registrationCoins(int? value) {
    if (value == null) return;
    _shared?.setInt(_registrationCoins, value);
  }

  int? get registrationCoins => _shared?.getInt(_registrationCoins);

  set studId(String? value) {
    if (value == null) return;
    _shared?.setString(_studId, value);
  }

  String? get studId => _shared?.getString(_studId);

  set guestId(String? value) {
    if (value == null) return;
    _shared?.setString(_guestId, value);
  }

  String? get guestId => _shared?.getString(_guestId);

  set universityName(String? value) {
    if (value == null) return;
    _shared?.setString(_universityName, value);
  }

  String? get universityName => _shared?.getString(_universityName);

  set universityId(String? value) {
    if (value == null) return;
    _shared?.setString(_universityId, value);
  }

  String? get universityId => _shared?.getString(_universityId);


  Future<void> clear() async {
    await _shared?.clear();
  }

  Future<void> logout() async {
    await _shared?.remove(_isLogged);
    await _shared?.remove(_token);
    await _shared?.remove(_isGuest);
    await _shared?.remove(_studId);
    await _shared?.remove(_universityName);
    await _shared?.remove(_universityId);
    await _shared?.remove(_userName);
    await _shared?.remove(_inviteCode);
    await _shared?.remove(_registrationCoins);
    await _shared?.remove(_guestId);
  }



  static Preferences get instance => _instance;
}
