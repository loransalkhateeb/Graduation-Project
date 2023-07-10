import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project_manager/model/doctorList_model.dart';
import 'package:project_manager/shared/component/constant.dart';

class DoctorProvider extends ChangeNotifier {
  List<DoctorNameModel> listDoctorName = [];
  getdoctorname() async {
    clearList();
    final response =
        await http.post(Uri.parse("${ConsValues.BASEURL}doctorList.php"));
    if (response.statusCode == 200) {
      var jsonbody = jsonDecode(response.body);
      List names_doctor = jsonbody["Users"];
      names_doctor.forEach((element) {
        listDoctorName.add(DoctorNameModel(
            docName: element['name'], docID: element['nameuniversity_id']));
      });
    }
    notifyListeners();
  
}

void clearList() {
  listDoctorName.clear();}
}
