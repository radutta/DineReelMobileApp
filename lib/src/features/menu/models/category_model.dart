class CategoryModel {
  final String icon;
  final String title;

  CategoryModel(this.icon, this.title);
}

List<CategoryModel> categories = [
  CategoryModel('assets/menu/images/Starters.svg', 'Starters'),
  CategoryModel('assets/menu/images/noodle.svg', 'Soups'),
  CategoryModel('assets/menu/images/chicken.svg', 'Chicken'),
  CategoryModel('assets/menu/images/beef.svg', 'Red Meat'),
  CategoryModel('assets/menu/images/crab.svg', 'Sea Food'),
  CategoryModel('assets/menu/images/salad.svg', 'Salads'),
  CategoryModel('assets/menu/images/icecream.svg', 'Deserts'),
  CategoryModel('assets/menu/images/ricefried.svg', 'Rice'),
  CategoryModel('assets/menu/images/spaghetti.svg', 'Noodles'),
  CategoryModel('assets/menu/images/smoothies.svg', 'Beverages'),
  CategoryModel('assets/menu/images/sausage.svg', 'Barbeque'),
  CategoryModel('assets/menu/images/croissant.svg', 'Continental'),
];
