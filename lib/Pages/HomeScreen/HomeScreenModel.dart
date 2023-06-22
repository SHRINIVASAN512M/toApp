import 'package:mobx/mobx.dart';


import 'package:todoapp/Helpers/AppNavigations/NavigationMixin.dart';

part 'HomeScreenModel.g.dart';

class HomeScreenModel= _HomeScreenModel with _$HomeScreenModel;

abstract class _HomeScreenModel with Store,NavigationMixin{
  
  @observable
  bool isAppLoading = false;

  /* Declare a method setIsAvengersLoading with required parameter isLoading to assign the value to this.isAvengersLoading */
  @action
  void setIsAvengersLoading({required bool isLoading}) {
    // Assign the value of paramter isLoading to isAvengersLoading
    isAppLoading = isLoading;
  }

}