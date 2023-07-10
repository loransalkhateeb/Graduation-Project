import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import '../model/users_model.dart';
import '../shared/component/constant.dart';

class DoctorHomePageProvider extends ChangeNotifier {
  StudentModel docProvider = StudentModel.empty();

  Future<StudentModel> getinfo(String university_id) async {
    final response = await http.post(
        Uri.parse("${ConsValues.BASEURL}homePage_Doctor.php"),
        body: {"university_id": university_id});

    if (response.statusCode == 200) {
      var jsonBody = jsonDecode(response.body);
      var users = jsonBody["users"];
      docProvider = StudentModel.fromJson(jsonBody);

      notifyListeners();
      return docProvider;
    } else {
      return StudentModel.empty();
    }
  }
}