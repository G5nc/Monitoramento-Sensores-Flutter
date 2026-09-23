import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/area_monitoramento.dart';

class ApiService {
  // Windows / iOS Simulator / Chrome: localhost
  // Emulador Android: troque para http://10.0.2.2:8080
  static const String baseUrl = 'http://localhost:8080';

  Future<List<AreaMonitoramento>> listarAreas() async {
    final response = await http.get(Uri.parse('$baseUrl/areas'));

    if (response.statusCode != 200) {
      throw Exception('Falha ao carregar as áreas (${response.statusCode})');
    }

    final List<dynamic> jsonList = jsonDecode(response.body) as List<dynamic>;
    return jsonList
        .map((item) => AreaMonitoramento.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  Future<List<AreaMonitoramento>> simularColeta() async {
    final response = await http.post(Uri.parse('$baseUrl/areas/coleta'));

    if (response.statusCode != 200) {
      throw Exception('Falha ao simular coleta (${response.statusCode})');
    }

    final List<dynamic> jsonList = jsonDecode(response.body) as List<dynamic>;
    return jsonList
        .map((item) => AreaMonitoramento.fromJson(item as Map<String, dynamic>))
        .toList();
  }
}
