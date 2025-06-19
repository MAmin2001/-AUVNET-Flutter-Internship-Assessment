part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class GetServicesEvent extends HomeEvent {}

class GetRestaurantesEvent extends HomeEvent {}
