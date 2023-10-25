enum Languages {
  arduino('Arduino'),
  c('C'),
  cplusplus('C++'),
  dart('Dart'),
  java('Java'),
  ruby('Ruby');

  final String value;
  const Languages(this.value);
}

enum Category {
  beginner('Beginner'),
  intermediate('Intermediate'),
  advanced('Advanced');

  final String value;
  const Category(this.value);
}
