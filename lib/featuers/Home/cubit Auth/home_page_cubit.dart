import 'package:finalproject/core/model/Auth.dart';
import 'package:finalproject/core/utilts/SharedPreference.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial()) {
    getUser();
  }

  Auth? model;

  static HomePageCubit get(BuildContext context) => BlocProvider.of(context);

  getUser() async {
    model = await Preferences.instance.getUserModel();
    emit(HomePageSuccess());
  }
}
