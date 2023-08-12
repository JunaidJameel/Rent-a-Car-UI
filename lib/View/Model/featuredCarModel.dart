class FeaturedCarsModel {
  final String img;
  final String carName;
  final String pricePerDay;
  FeaturedCarsModel({
    required this.carName,
    required this.img,
    required this.pricePerDay,
  });
  static List<FeaturedCarsModel> featuredCarList = [
    FeaturedCarsModel(
        carName: 'Lamborghini Urus',
        img: 'assets/img/car1.png',
        pricePerDay: '520\$/day'),
    FeaturedCarsModel(
        carName: 'BMW M7 Series',
        img: 'assets/img/car2.png',
        pricePerDay: '400\$/day'),
    FeaturedCarsModel(
        carName: 'Ferrari 488 GT',
        img: 'assets/img/car3.png',
        pricePerDay: '490\$/day'),
    FeaturedCarsModel(
        carName: 'Audi A8',
        img: 'assets/img/car4.png',
        pricePerDay: '645\$/day'),
    FeaturedCarsModel(
        carName: 'McLaren 720S',
        img: 'assets/img/car5.png',
        pricePerDay: '599\$/day'),
    FeaturedCarsModel(
        carName: 'Rolls-Royce',
        img: 'assets/img/car6.png',
        pricePerDay: '699\$/day'),
  ];
}
