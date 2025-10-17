import 'package:rental_app/data/models/car.dart';

abstract class CarRepo {
  Future<List<Car>> fetchCars();
}
