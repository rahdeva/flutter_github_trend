import 'dart:convert';
import 'package:flutter_github_trend/data/models/github_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  static SharedPreferencesManager? _instance;
  late SharedPreferences _preferences;

  // Private constructor
  SharedPreferencesManager._internal();

  // Public method to get the instance of SharedPreferencesManager
  static Future<SharedPreferencesManager> getInstance() async {
    if (_instance == null) {
      _instance = SharedPreferencesManager._internal();
      await _instance!._init();  // Initialize the SharedPreferences
    }
    return _instance!;
  }

  // Initialize SharedPreferences
  Future<void> _init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  // Set List of GitHubRepository
  Future<void> setRepositories(String key, List<GitHubRepository> repositories) async {
    List<String> jsonStringList = repositories.map(
      (repo) => jsonEncode(repo.toJson())
    ).toList();
    await _preferences.setStringList(key, jsonStringList);
  }

  // Get List of GitHubRepository
  List<GitHubRepository>? getRepositories(String key) {
    List<String>? jsonStringList = _preferences.getStringList(key);
    if (jsonStringList == null) return null;
    return jsonStringList.map(
      (jsonString) => GitHubRepository.fromJson(jsonDecode(jsonString))
    ).toList();
  }
}
