part of 'car_bloc.dart';

abstract class CarState {}

final class CarInitial extends CarState {}

class CarLoading extends CarState {}

class CarsLoaded extends CarState {
  final List<Car> cars;

  CarsLoaded(this.cars);
}

class CarError extends CarState {
  final String message;

  CarError(this.message);
}
