
import 'dart:convert';

class ProjectListData
{
  final bool status;
  final String message;
  Projects data;

  ProjectListData({required this.status,  required this.message, required this.data});

  factory ProjectListData.fromJson(Map<String, dynamic> json) {
    return ProjectListData(status: json['status'], message: json['message'],data: Projects.fromJson(json['data']),);
  }
}

class Projects
{
  late List<ProjectList> project_list;
  late List<ProjectTaskList> project_Task_list;
  late List<CasesList> case_list;

  Projects({required this.project_list});

  //Projects({required this.project_list,  required this.project_Task_list,  required this.case_list});

  factory Projects.fromJson(Map<String, List<dynamic>> json)
  {
    return Projects(project_list: ProjectList.fromJson(json!['project_list']),);
  }
}

class ProjectList
{
  final String names;

  ProjectList({required this.names,});

  factory ProjectList.fromJson(List<Map<String, dynamic>> json)
  {
    var name ="";
    late List<ProjectList> project_list = ProjectList(names: "") as List<ProjectList>;
    json.map((e)
    {
      name = e["name"];
      project_list.add(ProjectList(names: name));
    });
    return project_list;
  }
}
class ProjectTaskList
{

}
class CasesList
{

}