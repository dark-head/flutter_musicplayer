class Artist {
  String id;
  final String name;

  Artist({this.id = '', required this.name});

  static List<Artist> artists = [
    Artist(id: '1', name: 'asdf'),
    Artist(id: '2', name: 'qwer'),
    Artist(id: '3', name: 'zxcv'),
    Artist(id: '4', name: 'yuio'),
    Artist(id: '5', name: 'hjkl'),
  ];
}
