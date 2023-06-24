final List<Chat> chats = [
  Chat(
    name: 'Angela H, Stout',
    message: 'its Match! Angela and you liked...',
    time: '11:30 AM',
    unseenCount: 2,
    profileImageUrl: 'assets/images/chatpic.png',
  ),
  Chat(
    name: 'Carolyn T. Sierra',
    message: 'its Match! Angela and you liked...',
    time: '1:45 PM',
    unseenCount: 1,
    profileImageUrl: 'assets/images/chatpic2.png',
  ),
  Chat(
    name: 'Sophia',
    message: 'Lorem ipsom is simply a dimmy text',
    time: '3:20 PM',
    unseenCount: 4,
    profileImageUrl: 'assets/images/Ellipse 2.png',
  ),
  Chat(
    name: 'Samuel',
    message: 'Lorem ipsom is simply a dimmy text',
    time: '3:20 PM',
    unseenCount: 3,
    profileImageUrl: 'assets/images/Ellipse 3.png',
  ),
  Chat(
    name: 'ALex',
    message: 'Lorem ipsom is simply a dimmy text',
    time: '3:20 PM',
    unseenCount: 6,
    profileImageUrl: 'assets/images/Ellipse 4.png',
  ),
  Chat(
    name: 'Galina',
    message: 'Lorem ipsom is simply a dimmy text',
    time: '1d ago',
    unseenCount: 0,
    profileImageUrl: 'assets/images/Ellipse 5.png',
  ),
  Chat(
    name: 'Samuei',
    message: 'Lorem ipsom is simply a dimmy text',
    time: '2d ago',
    unseenCount: 0,
    profileImageUrl: 'assets/images/chatpic.png',
  ),
];
class Chat {
  final String name;
  final String message;
  final String time;
  final int unseenCount;
  final String profileImageUrl;

  Chat({
    required this.name,
    required this.message,
    required this.time,
    required this.unseenCount,
    required this.profileImageUrl,
  });
}