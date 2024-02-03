class HeroInfo {
  String title;
  String image;

  HeroInfo({
    required this.title,
    required this.image,
  });
}

class HeroItems {
  List<HeroInfo> items = [
    HeroInfo(title: "Viet Nam", image: 'assets/images/vietnam.png'),
    HeroInfo(title: "Belgium", image: "assets/images/belgium.png"),
    HeroInfo(title: "France", image: "assets/images/france.png"),
    HeroInfo(title: "Poland", image: "assets/images/poland.png"),
    HeroInfo(title: "Spain", image: "assets/images/spain.png"),
    HeroInfo(title: "Sweden", image: "assets/images/sweden.png"),
    HeroInfo(title: "United-Kingdom", image: "assets/images/united-kingdom.png")
  ];
}
