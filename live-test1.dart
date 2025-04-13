main() {
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]}
  ];

  Map<String, double> avgscores = {};

  for(var student in students){
    String name = student["name"];
    List<int> scores = List<int>.from(student["scores"]);
    int sum = 0;
    for (int score in scores){
      sum += score;
    }
    double avg = sum / scores.length;
    avg = double.parse(avg.toStringAsFixed(2));
    avgscores[name] = avg;
  }
  var sortedEntries = avgscores.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  Map<String, double> sortedMap = {
    for (var entry in sortedEntries) entry.key: entry.value
  };

  print(sortedMap);


}