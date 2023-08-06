class MenuCategoryModel {
  final String icon;
  final String title;

  MenuCategoryModel(this.icon, this.title);
}

List<MenuCategoryModel> categories = [
  MenuCategoryModel('assets/menu/images/Starters.svg', 'Starters'),
  MenuCategoryModel('assets/menu/images/noodle.svg', 'Soups'),
  MenuCategoryModel('assets/menu/images/chicken.svg', 'Chicken'),
  MenuCategoryModel('assets/menu/images/beef.svg', 'Red Meat'),
  MenuCategoryModel('assets/menu/images/crab.svg', 'Sea Food'),
  MenuCategoryModel('assets/menu/images/salad.svg', 'Salads'),
  MenuCategoryModel('assets/menu/images/icecream.svg', 'Deserts'),
  MenuCategoryModel('assets/menu/images/ricefried.svg', 'Rice'),
  MenuCategoryModel('assets/menu/images/spaghetti.svg', 'Noodles'),
  MenuCategoryModel('assets/menu/images/smoothies.svg', 'Beverages'),
  MenuCategoryModel('assets/menu/images/sausage.svg', 'Barbeque'),
  MenuCategoryModel('assets/menu/images/croissant.svg', 'Continental'),
];
