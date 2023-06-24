class Subscard {
  final String number;
  final String price;
  final String percent;

  Subscard({
    required this.number,
    required this.price,
    required this.percent,
  });
}
final List<Subscard> subcard = [
  Subscard(
    number: '3',
    price: '42 USD dollars',
    percent: 'Save 30%',
  ),
  Subscard(
    number: '2',
    price: '36 USD dollars',
    percent: 'Save 10%',
  ),
  Subscard(
    number: '1',
    price: '20 USD dollars',
    percent: 'Save 0%',
  ),
];