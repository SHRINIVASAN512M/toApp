import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Todo-App")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            TextFormField(
              controller: titleController,
              decoration: const InputDecoration(
                hintText: "Title",
              ),
            ),
            TextFormField(    
              controller: descriptionController,
              decoration: const InputDecoration(
                hintText: "Description",
              ),
              keyboardType: TextInputType.multiline,
              maxLines: 8,
              minLines: 5,
              ),
              ElevatedButton(onPressed: (){
                onSubmitDaata();
              }, child: const Text("Submit"))
          ],
        ),
      ),
            
    );
  }
  Future<void> onSubmitDaata() async{
    final title = titleController.text;
    final Description = descriptionController.text; 
    final body = {
      "title" : title,
      "description" : Description,
      "is_completed": false
    };
    final uri = 'http://api.nstack.in/v1/todos';
    final url = Uri.parse(uri);
    final response = await http.post(url,body: jsonEncode(body),
    headers:  {'Content-Type': 'application/json'});

    if(response.statusCode == 201){
      print(response.statusCode);
      print(response);
      titleController.text = '';
      descriptionController.text = '';
      showMessage("Creation Succefull");
    }
    else{
      print(response.statusCode);
      showErrorMessage("Creation Failed!!");
    }
  }

  void showMessage(String message) {
    final snackbar = SnackBar(content: Text(message,style: TextStyle(color: Colors.deepOrange),),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
   void showErrorMessage(String message) {
    final snackbar = SnackBar(content: Text(message),
    backgroundColor: const Color.fromRGBO(255, 82, 82, 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }


}