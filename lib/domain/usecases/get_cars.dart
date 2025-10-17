import 'package:rental_app/data/models/car.dart';
import 'package:rental_app/domain/repositories/car_repo.dart';

class GetCars {
  final CarRepo repository;

  GetCars(this.repository);

  Future<List<Car>> call() async {
    return await repository.fetchCars();
  }
}
