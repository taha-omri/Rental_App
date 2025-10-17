import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:rental_app/data/datasources/firebase_data.dart';
import 'package:rental_app/data/repositories/car_repo_impl.dart';
import 'package:rental_app/domain/repositories/car_repo.dart';
import 'package:rental_app/domain/usecases/get_cars.dart';
import 'package:rental_app/presentation/bloc/car_bloc.dart';

GetIt getIt = GetIt.instance;

void initInjection() {
  try {
    getIt.registerLazySingleton<FirebaseFirestore>(
        () => FirebaseFirestore.instance);
    getIt.registerLazySingleton<FirebaseData>(
        () => FirebaseData(firestore: getIt<FirebaseFirestore>()));
    getIt.registerLazySingleton<CarRepo>(
        () => CarRepoImpl(getIt<FirebaseData>()));
    getIt.registerLazySingleton<GetCars>(() => GetCars(getIt<CarRepo>()));
    getIt.registerFactory(() => CarBloc(getCars: getIt<GetCars>()));
  } catch (e) {
    rethrow;
  }
}
