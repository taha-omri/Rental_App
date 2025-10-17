import 'package:rental_app/domain/repositories/car_repo.dart';
import 'package:rental_app/data/models/car.dart';
import 'package:rental_app/data/datasources/firebase_data.dart';

class CarRepoImpl implements CarRepo {
  final FirebaseData dataSource;

  CarRepoImpl(this.dataSource);

  @override
  Future<List<Car>> fetchCars() {
    return dataSource.getCars();
  }
}