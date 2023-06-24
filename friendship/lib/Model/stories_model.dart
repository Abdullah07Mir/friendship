// class list {
//   const list({required this.name, required this.image,});
//   final String name;
//   final String image;
// }
//
// const List<list> items = <list>[
//   list(name: 'Sarah',
//       image:"assets/images/Ellipse 1.png" ,),
//   list(name: 'Sofhia',
//     image:"assets/images/Ellipse 2.png" ,),
//   list(name: 'Samuel',
//     image:"assets/images/Ellipse 3.png" ,),
//   list(name: 'Alex',
//     image:"assets/images/Ellipse 4.png" ,),
//   list(name: 'Samuei',
//     image:"assets/images/Ellipse 1.png" ,),
//
// ];
class UserModel {
  UserModel(this.stories, this.userName, this.imageUrl);

  final List<StoryModel> stories;
  final String userName;
  final String imageUrl;
}

class StoryModel {
  StoryModel(this.imageUrl);

  final String imageUrl;
}
final sampleUsers = [
  UserModel([
    StoryModel(
        "assets/images/Image (1).jpg"),
  ], "Sarah",
      "assets/images/Ellipse 1.png"),
  UserModel(
      [
    StoryModel(
        "assets/images/Image (2).jpg"),
    StoryModel(
        "assets/images/Image (1).jpg"),

  ], "Sofhia",
      "assets/images/Ellipse 2.png"),
  UserModel([
    StoryModel(
        "assets/images/Image (3).jpg"),
  ], "Samuel",
      "assets/images/Ellipse 3.png"),
  UserModel([
    StoryModel(
        "assets/images/Image (4).jpg"),
    StoryModel(
        "assets/images/Image (1).jpg"),
  ], "Alex",
      "assets/images/Ellipse 4.png"),
  UserModel([
    StoryModel(
        "assets/images/Image (2).jpg"),
  ], "Samuei",
      "assets/images/Ellipse 1.png"),
];