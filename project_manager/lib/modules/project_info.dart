import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:project_manager/modules/home_page_doc/home_page_doc.dart';
import 'package:project_manager/shared/component/component.dart';
import 'package:http/http.dart' as http;
import '../shared/component/constant.dart';

class ProjectInfo extends StatefulWidget {
  String stdName1;
  String stdName2;
  String stdName3;
  String stdName4;
  String stdID1;
  String stdID2;
  String stdID3;
  String stdID4;
  String projectName;
  String description;
  String goals;
  String timeLine1;
  String timeLine2;
  // String docname;
  String docid;
  ProjectInfo({
    super.key,
    required this.stdName1,
    required this.stdName2,
    required this.stdName3,
    required this.stdName4,
    required this.stdID1,
    required this.stdID2,
    required this.stdID3,
    required this.stdID4,
    required this.projectName,
    required this.description,
    required this.goals,
    required this.timeLine1,
    required this.timeLine2,
    // required this.docname,
    required this.docid
  });

  @override
  State<ProjectInfo> createState() => _ProjectInfoState(
        studentName1: stdName1,
        studentName2:stdName2,
        studentName3:stdName3,
        studentName4: stdName4,
        stdID1:stdID1,
        stdID2:stdID2,
        stdID3:stdID3,
        stdID4:stdID4,
        projectName: projectName,
        description:description ,
        goals:goals ,
        timeLine1:timeLine1 ,
        timeLine2: timeLine2,
        docid:docid,
        // docname: docname
      );
}

class _ProjectInfoState extends State<ProjectInfo> {
  String studentName1;
  String studentName2;
  String studentName3;
  String studentName4;
  String stdID1;
  String stdID2;
  String stdID3;
  String stdID4;
  String projectName;
  String description;
  String goals;
  String timeLine1;
  String timeLine2;
  String docid;
  // String docname;
  _ProjectInfoState({
    required this.studentName1,
    required this.studentName2,
    required this.studentName3,
    required this.studentName4,
    required this.stdID1,
    required this.stdID2,
    required this.stdID3,
    required this.stdID4,
    required this.projectName,
    required this.description,
    required this.goals,
    required this.timeLine1,
    required this.timeLine2,
    required this.docid,
    // required this.docname
    }
    );
    Future changeState(stdID1)async{
      var url="${ConsValues.BASEURL}change_state_approved.php";
      var res=await http.post(Uri.parse(url),
      body:{'university_id': stdID1}
      );
      if(res.statusCode==200){
        var jsonBody=jsonDecode(res.body);

      }
    }
     Future changeStateRejected(stdID1)async{
      var url="${ConsValues.BASEURL}change_state_rejected.php";
      var res=await http.post(Uri.parse(url),
      body:{'university_id': stdID1}
      );
      if(res.statusCode==200){
        var jsonBody=jsonDecode(res.body);

      }
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
        title: const Text(
          "Project Information",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/student.png"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      height: 80.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              studentName1,
                              style: const TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: mainColor,
                              ),
                              maxLines: 2,
                            ),
                          ),
                          Text(
                            stdID1,
                            style: const TextStyle(
                              fontSize: 15.0,
                              color: mainColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/student.png"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      height: 80.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              studentName2,
                              style:const TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: mainColor,
                              ),
                              maxLines: 2,
                            ),
                          ),
                          Text(
                            stdID2,
                            style:const TextStyle(
                              fontSize: 15.0,
                              color: mainColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/student.png"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      height: 80.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              studentName3,
                              style:const TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: mainColor,
                              ),
                              maxLines: 2,
                            ),
                          ),
                          Text(
                            stdID3,
                            style:const TextStyle(
                              fontSize: 15.0,
                              color: mainColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/student.png"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      height: 80.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              studentName4,
                              style:const TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: mainColor,
                              ),
                              maxLines: 2,
                            ),
                          ),
                          Text(
                            stdID4,
                            style:const TextStyle(
                              fontSize: 15.0,
                              color: mainColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/doctor.png"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      height: 80.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:  [
                          Expanded(
                            child:  Text(
                              'wael alqsas ',
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: mainColor,
                              ),
                              maxLines: 2,
                            ),
                          ),
                          Text(
                            docid,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: mainColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/project-name.png"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        projectName,
                        style:const TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: mainColor,
                        ),
                        maxLines: 1,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/job-description.png"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      height: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Text(
                              description,
                              style:const TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: mainColor,
                              ),
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/goals.png"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      height: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Text(
                              goals,
                              style: const TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: mainColor,
                              ),
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/timeline.png"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Project Timeline",
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: mainColor,
                        ),
                        maxLines: 2,
                      ),
                      Text(
                        timeLine1,
                        style: const TextStyle(
                          fontSize: 15.0,
                          color: mainColor,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Text(
                        "TO",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: mainColor,
                        ),
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        timeLine2,
                        style: const TextStyle(
                          fontSize: 15.0,
                          color: mainColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 50.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  defualtButton(
                    text: "Approved",
                    function: () {
                      changeState(stdID1);
                      navigateTo(context, HomePageDoc());
                    },
                    radius: 40,
                    width: 150,
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  defualtButton(
                      text: "Regected",
                      function: () {
                        changeStateRejected(stdID1);
                        navigateTo(context, HomePageDoc());
                      },
                      radius: 40,
                      width: 150,
                      backGroundClolor: Colors.red),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
