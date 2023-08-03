class BusinessMenuCardModel {
  final String title;
  final String imageUrl;
  final String price;
  final String desc;
  bool available;
  BusinessMenuCardModel({
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.desc,
    required this.available,
  });
}

List<BusinessMenuCardModel> businessMenuData = [
  BusinessMenuCardModel(
    available: true,
    title: 'biriyani',
    imageUrl:
        "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    price: '₹ 550',
    desc:
        'It is made with Indian spices, vegetables, rice, and\nusually some type of meat (chicken, beef, goat,\nlamb, prawn, ',
  ),
  BusinessMenuCardModel(
    available: true,
    title: 'biriyani',
    imageUrl:
        "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    price: '₹ 550',
    desc:
        'It is made with Indian spices, vegetables, rice, and\nusually some type of meat (chicken, beef, goat,\nlamb, prawn, ',
  ),
];
