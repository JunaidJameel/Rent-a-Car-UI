class CarPartsModel {
  final String img;
  final String carparts1;
  final String carparts2;

  CarPartsModel(
      {required this.img, required this.carparts1, required this.carparts2});

  static List<CarPartsModel> carpartsList = [
    CarPartsModel(
        img: 'assets/img/seat.png',
        carparts1: 'Capacity',
        carparts2: '4 Seats'),
    CarPartsModel(
        img: 'assets/img/part1.png',
        carparts1: 'Max Speed',
        carparts2: '265 KM/h'),
    CarPartsModel(
        img: 'assets/img/part2.png', carparts1: 'Power', carparts2: '580 HP'),
  ];
}
