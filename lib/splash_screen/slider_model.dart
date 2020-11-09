class SliderModel {
  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath, this.title, this.desc});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc(
      "Trip planning can be a daunting task. Where do you begin? What’s step one? What’s step two? What’s step three? Try our app for better experience");
  sliderModel.setTitle("Plan Your Trip");
  sliderModel.setImageAssetPath("assets/images/plantrip.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc("Are you planning for a trip? ");
  sliderModel.setTitle("Explore New Places");
  sliderModel.setImageAssetPath("assets/images/explore.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc(
      "If you like to log your trips but don’t want to carry a travel diary all along, then let your smartphone take over this task through a useful travel app.");
  sliderModel.setTitle("Enjoy Your Trip");
  sliderModel.setImageAssetPath("assets/images/location.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}
