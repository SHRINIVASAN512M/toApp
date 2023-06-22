
//import 'dart:convert';

import 'dart:convert';

import 'package:flutter/material.dart';
//import 'package:todoapp/Helpers/AppNavigations/NavigationHelpers.dart';
//import 'package:todoapp/Helpers/AppNavigations/NavigationMixin.dart';
//import 'package:todoapp/Pages/HomeScreen/HomeScreenVM.dart';
import 'package:http/http.dart' as http;
import '../SecondScreen/SecondScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  //final HomeScreenVM _homeScreenVM = HomeScreenVM();
  List items = [];
  @override
  void initState() {
    super.initState();

    fetchData();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Todo-App")),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          final item = items[index] as Map<String,dynamic>;
          return ListTile(
             leading: Text('${index+1}'),
             title: Text(item['title']?? ''),
             subtitle: Text(item['description']?? ''),
           // title:  Text(item.toString()),            
          );
        }),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
       // _homeScreenVM.navigateToSecondScreen();
            navigateToAddPage();
      }, label :const Text("Create"),),
          
    );
  }

   void navigateToAddPage(){
  final route = MaterialPageRoute(builder: (context)  => const SecondScreen(),
   );
   Navigator.push(context, route);
  }

    //Future<void> fetchData() async{
    //final uri = 'http://api.nstack.in/v1/todos?page=1&limit=10';
    //final url  = Uri.parse(uri);
    //final response = await http.get(url);
    //if (response.statusCode == 200) {
      //final json = jsonDecode(response.body) as Map;
      //final result = json['items'] as List;
      //setState(() {
        //items = result;
      //});
      //print(response.body);
      //print(response.statusCode);
    //} else {
      //print("error");
    //}
  //}

  
    Future<void> fetchData() async {
    final url = Uri.parse('http://api.nstack.in/v1/todos?page=1&limit=10');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      setState(() {
        items = jsonResponse as List<dynamic>;
      });
    } else {
      // Handle error
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}



