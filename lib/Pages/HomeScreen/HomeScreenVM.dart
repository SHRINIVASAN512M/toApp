//import 'package:todoapp/Helpers/AppNavigations/NavigationConfig.dart';
//import 'package:flutter/material.dart';
import 'package:todoapp/Helpers/AppNavigations/NavigationConfig.dart';
import 'package:todoapp/Pages/HomeScreen/HomeScreenModel.dart';
//import 'package:todoapp/Pages/SecondScreen/SecondScreen.dart';

import '../../Helpers/AppNavigations/NavigationMixin.dart';

class HomeScreenVM  extends HomeScreenModel{

  void navigateToSecondScreen() {
    // By using navigationStream add NavigatorPush() and pass the pageConfig and data
    navigationStream.add(NavigatorPush(pageConfig: Pages.aboutScreenConfig, data: null));
  }

 
}