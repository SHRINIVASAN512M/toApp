// ignore_for_file: constant_identifier_names, file_names, non_constant_identifier_names


import 'package:todoapp/Pages/HomeScreen/HomeScreen.dart';
import 'package:todoapp/Pages/SecondScreen/SecondScreen.dart';
import 'NavigationHelpers.dart';

// Declare the Routes as Enum
enum Routes {
  HomeScreen,
  SecondScreen,
}

// Create class named Pages which holds the pages in the application 
class Pages{ 
   
  // // HomeScreen Config
   static final PageConfig homeScreenConfig = PageConfig(route: Routes.HomeScreen , build: (_) => HomeScreen());


  static final PageConfig aboutScreenConfig = PageConfig(
    route: Routes.SecondScreen,
    build: (_) => const SecondScreen(),
  );
}