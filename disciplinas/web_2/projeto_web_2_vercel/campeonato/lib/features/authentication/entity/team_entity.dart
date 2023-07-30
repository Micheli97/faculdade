class TeamEntity {
  String id;
  String name;
  String photo;
  String city;
  String coach;
  String website;
  bool selecionado;

  TeamEntity(
      {required this.id,
      required this.name,
      required this.photo,
      required this.city,
      required this.coach,
      required this.website,
      this.selecionado = false});
}
