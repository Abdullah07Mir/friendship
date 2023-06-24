
class postCard {
  final String image;
  final String name;
  final bool liked;

  postCard({required this.image, required this.liked,required this.name});
}


final List<postCard> postitems = [
  postCard(image: "assets/images/Image (1).jpg", liked: false,name: "Sarah"),
  postCard(image: "assets/images/Image (2).jpg", liked: true,name: "Samuel"),
  postCard(image: "assets/images/Image (3).jpg", liked: false,name: "Alex"),
  postCard(image: "assets/images/Image (4).jpg", liked: true,name: "Gallina"),
];