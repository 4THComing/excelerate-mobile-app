import 'dart:convert';

import 'package:flutter/services.dart';

import '../Models/program_model.dart';

class ProgramService {
  Future<List<Program>> getPrograms() async {
    final String response =
        await rootBundle.loadString('assets/programs.json');

    final List<dynamic> data = json.decode(response);

    return data.map((json) => Program.fromJson(json)).toList();
  }
}