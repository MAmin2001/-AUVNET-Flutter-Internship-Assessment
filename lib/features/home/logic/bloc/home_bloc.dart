import 'dart:math';

import 'package:auvnet_e_commerce_task/features/home/data/restaurantes_model.dart';
import 'package:auvnet_e_commerce_task/features/home/data/services_model.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  List<ServicesModel> servicesList = [];
  List<RestaurantesModel> restaurantesList = [];
  bool isLoadingServices = false;
  HomeBloc() : super(HomeInitial()) {
    on<GetServicesEvent>((event, emit) {
      servicesList = [];
      isLoadingServices = true;
      emit(GetServicesLoading());
      FirebaseFirestore.instance
          .collection('services')
          .get()
          .then((value) {
            print(value.docs);
            value.docs.forEach((item) {
              servicesList.add(
                ServicesModel.fromJson(item as Map<String, dynamic>),
              );
            });
            isLoadingServices = false;
            emit(GetServicesSuccess());
          })
          .catchError((e) {
            isLoadingServices = false;
            emit(GetServicesError());
          });
    });

    on<GetRestaurantesEvent>((event, emit) {
      restaurantesList = [];

      FirebaseFirestore.instance
          .collection('restaurantes')
          .get()
          .then((value) {})
          .catchError((e) {});
    });
  }
}
