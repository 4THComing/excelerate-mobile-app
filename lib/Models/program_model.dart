class Program {
  final String name;
  final String description;
  final String date;
  final String location;

  Program({
    required this.name,
    required this.description,
    required this.date,
    required this.location,
  });

  factory Program.fromJson(Map<String, dynamic> json) {
    return Program(
      name: json['name'],
      description: json['description'],
      date: json['date'],
      location: json['location'],
    );
  }
}