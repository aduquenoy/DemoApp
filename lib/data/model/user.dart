class User {
  final int range;
  final int theme;
  final int unit;
  final String lang;

  const User({
    required this.range,
    required this.theme,
    required this.unit,
    required this.lang,
  });

  User copy({
    int? range,
    int? theme,
    int? unit,
    String? lang,
  }) =>
      User(
        range: range ?? this.range,
        theme: theme ?? this.theme,
        unit: unit ?? this.unit,
        lang: lang ?? this.lang,
      );

  static User fromJson(Map<String, dynamic> json) {
    return User(
      range: json['range'] as int,
      theme: json['theme'] as int,
      unit: json['unit'] as int,
      lang: json['lang'] as String,
      //range: (json['range'] as List<dynamic>).map((e) => e as int).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'range': range,
      'theme': theme,
      'unit': unit,
      'lang': lang,
    };
  }
}