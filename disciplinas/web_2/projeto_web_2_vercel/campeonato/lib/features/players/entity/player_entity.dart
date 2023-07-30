class PlayerEntity {
  String idTeam;
  String name;
  String photo;
  double height;
  int weight;
  int age;
  String position;
  int number;

  PlayerEntity(
      {required this.idTeam,
      required this.age,
      required this.height,
      required this.name,
      required this.number,
      required this.photo,
      required this.position,
      required this.weight});
}
