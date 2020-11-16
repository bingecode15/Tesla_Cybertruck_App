class Info {
  final String name;
  final String bgImage;
  final String description;
  final bool isOn;

  Info(this.name, this.bgImage, this.description, this.isOn);
}

final List<Info> information = [
  Info("Engine", "assets/images/info_engine_new.png", "Sleeping mode", false),
  Info("Climate", "assets/images/info_climate_new.png", "A/C is ON", true),
  Info("Tires", "assets/images/info_tires_new.png", "Low pressure", true),
];
