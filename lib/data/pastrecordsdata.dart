//Past Records Data in HomeScreen

class PastRecord {
  String idText;
  int idScore;
  String scoreText;
  String image;
  int numScored;

  PastRecord(
      {required this.idText,
      required this.idScore,
      required this.image,
      required this.numScored,
      required this.scoreText});
}

List<PastRecord> pastRecordData = [
  PastRecord(
      idText: 'ID',
      idScore: 02,
      image: 'assets/homeimg1.png',
      numScored: 08,
      scoreText: 'Score'),
  PastRecord(
      idText: 'ID',
      idScore: 032,
      image: 'assets/homeimg1.png',
      numScored: 09,
      scoreText: 'Score'),
  PastRecord(
      idText: 'ID',
      idScore: 021,
      image: 'assets/homeimg1.png',
      numScored: 04,
      scoreText: 'Score'),
  PastRecord(
      idText: 'ID',
      idScore: 041,
      image: 'assets/homeimg1.png',
      numScored: 02,
      scoreText: 'Score')
];
