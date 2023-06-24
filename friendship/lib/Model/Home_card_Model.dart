import 'package:flutter/material.dart';

class Card {
  const Card({required this.name, required this.distance,
    required this.image, required this.age, required this.uni,required this.address});
  final String name;
  final String distance;
  final String image;
  final String age;
  final String uni;
  final String address;
}
const List<Card> carditems = <Card>[
  Card(name: 'Galina Smith',
      distance:"1.3 Miles away" ,
      image: 'assets/images/image 14.png',
      age:'16\'y Old' ,
      uni:"Yale University" ,
      address:"7th AveAltoona, Pennsylvania (PA)"
  ),
  Card(name: 'Alex Hales',
      distance:"5.5 Miles away" ,
      image: 'assets/images/Alex.jpg',
      age:'17\'y Old' ,
      uni:"Example University" ,
      address:"710 Ellwood St El Campo texas"
  ),
  Card(name: 'Justin Bieber',
      distance:"2.5 Miles away" ,
      image: 'assets/images/jbieber.jpg',
      age:'20\'y Old' ,
      uni:"Comsats University" ,
      address:"Blue Area, Islamabad"
  ),

];