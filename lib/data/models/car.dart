class Car {
  final String model;
  final double distance;
  final double fuelcapicity;
  final double pricePerHour;

  Car(
      {required this.model,
      required this.distance,
      required this.fuelcapicity,
      required this.pricePerHour});

  factory Car.fromMap(Map<String, dynamic> map) {
    return Car(
      model: map['model'],
      distance: map['distance'],
      fuelcapicity: map['fuelcapicity'],
      pricePerHour: map['pricePerHour'],
    );
  }
}
