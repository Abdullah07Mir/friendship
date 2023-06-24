class list {
  const list({required this.text, required this.icon,});
  final String text;
  final String icon;
}

const List<list> profileitems = <list>[
  list(text: 'Edit profile',
    icon:"assets/images/Editt.svg" ,),
  list(text: 'Settings',
    icon:"assets/images/setting2.svg" ,),
  list(text: 'Contact support',
    icon:"assets/images/messages1.svg" ,),
  list(text: 'Invite friends',
    icon:"assets/images/shuffle.svg" ,),
  list(text: 'Logout',
    icon:"assets/images/logoutcurve.svg" ,),
];


class historyList {
  const historyList({required this.title, required this.subtitle,required this.text,});
  final String title;
  final String subtitle;
  final String text;
}

const List<historyList> historyItems = <historyList>[
  historyList(
    title: 'W',
    subtitle:"Wednesday" ,
   text: '02-03-2023 - Using time 30 minutes',
  ),
  historyList(
    title: 'T',
    subtitle:"Tuesday" ,
    text: '01-03-2023 - Using time 29 minutes',
  ),
  historyList(
    title: 'M',
    subtitle:"Monday" ,
    text: '28-02-2023 - Using time 49 minutes',
  ),
  historyList(
    title: 'S',
    subtitle:"Sunday" ,
    text: '27-02-2023 - Using time 6 minutes',
  ),
  historyList(
    title: 'S',
    subtitle:"Saturday" ,
    text: '26-02-2023 - Using time 9 minutes',
  ),
];