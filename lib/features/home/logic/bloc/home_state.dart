part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class GetServicesLoading extends HomeState {}

final class GetServicesSuccess extends HomeState {}

final class GetServicesError extends HomeState {}

final class GetRestaurantesLoading extends HomeState {}

final class GetRestaurantesSuccess extends HomeState {}

final class GetRestaurantesError extends HomeState {}
