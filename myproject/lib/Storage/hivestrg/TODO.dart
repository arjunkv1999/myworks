import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("task_box");
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: myToDo(),
            debugShowCheckedModeBanner: false,
          )));
}
class myToDo extends StatefulWidget {
  const myToDo({super.key});

  @override
  State<myToDo> createState() => _myToDoState();
}

class _myToDoState extends State<myToDo> {
  //to store task from hive db
  List<Map<String, dynamic>> task=[];
  //object creation of hive
  final tbox = Hive.box('task_box');
  @override
  void initState(){
    loadTask();
    super.initState();
  }
  Future<void> CreatTask(Map<String, String> task) async {
    await tbox.add(task);
    loadTask();
  }

  void loadTask(){
    final data = tbox.keys.map((id){
    final value = tbox.get(id);
    return {'key' : id, 'name' : value['name'], 'details' : value['details']};
    }).toList();

    setState(() {
      task = data.reversed.toList();
    });
  }

  Future<void> deleteTask(int key) async {
    await tbox.delete(key);
    loadTask();
  }
  //reading single data
  Map<String,dynamic> readData(int key){
    final data = tbox.get(key);
    return data;
  }

  Future<void> UpdateTask(int id, Map<String, dynamic> uptask) async {
    await tbox.put(id, uptask);
    loadTask();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TODO"),),
      body: task.isEmpty
      ? const Center(
        child: Text("NO DATA",
        style: TextStyle(fontSize: 45),),
      )
      :ListView.builder(itemCount:task.length,
      itemBuilder: (context,index){
        return Card(
          color: Colors.redAccent,
          margin: const EdgeInsets.all(15),
          elevation: 3,
          child: ListTile(
            title:  Text(task[index]['name']),
            subtitle:  Text(task[index]['details']),
            trailing: Wrap(
              children: [
                IconButton(onPressed: (){
                  showForm(context,task[index]['key']);
                }, 
                icon: const Icon(Icons.edit_calendar_outlined)),
                IconButton(onPressed: (){
                  deleteTask(task[index]['key']);
                }, 
                icon: const Icon(Icons.delete_forever))
              ],
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> showForm(context,null),
        child: const Icon(Icons.add),
        ),
    );
  }
  final TextEditingController name_controller =TextEditingController();
  final TextEditingController details_controller = TextEditingController();
  void showForm(BuildContext context, int? id) async {
    if(id != null){
      final ex_task = task.firstWhere((element)=> element['key'] == id);
      name_controller.text = ex_task['name'];
      details_controller.text = ex_task['details'];
    }
    showModalBottomSheet(context: context,
     isScrollControlled: true,
     elevation: 5,
     builder: (context){
       return Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom + 120,
          top: 15,
          left: 15,
          right: 15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: name_controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),hintText: "TASK NAME"
              ),
            ),
             TextField(
              controller: details_controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),hintText: "TASK DETAILS"
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(onPressed: (){
              if(id == null){
              CreatTask({'name' : name_controller.text, 'details' : details_controller.text});
              }
              if(id != null){
                UpdateTask(id,{'name' :name_controller.text, 'details' :details_controller.text});
              }

              name_controller.text = "";
              details_controller.text = "";
              Navigator.of(context).pop();
            }, child: Text(id == null ? "Creat Task" : "Update Task")),
          ],
        ),
       );
    });
  }
  
 
  
  
  

}