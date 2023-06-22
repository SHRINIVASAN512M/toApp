import 'package:flutter/material.dart';

// import 'Helpers/AppNavigations/NavigationConfig.dart';
// import 'Helpers/AppNavigations/NavigationHelpers.dart';
import 'Pages/HomeScreen/HomeScreen.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomeScreen(),
    //   onGenerateRoute:
    //       AppRoute(initialPage: Pages.homeScreenConfig, initialPageData: null)
    //           .onGenerateRoute,
     );
  }
}