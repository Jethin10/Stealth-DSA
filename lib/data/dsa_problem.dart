class DsaProblem {
  final String id;
  final String title;
  final String codeTemplate;
  final List<String> dropZones;
  final Map<String, String> blocks;
  final Map<String, String> solution;

  DsaProblem({
    required this.id,
    required this.title,
    required this.codeTemplate,
    required this.dropZones,
    required this.blocks,
    required this.solution,
  });

  factory DsaProblem.fromJson(Map<String, dynamic> json) {
    return DsaProblem(
      id: json['id'],
      title: json['title'],
      codeTemplate: json['codeTemplate'],
      dropZones: List<String>.from(json['dropZones']),
      blocks: Map<String, String>.from(json['blocks']),
      solution: Map<String, String>.from(json['solution']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'codeTemplate': codeTemplate,
      'dropZones': dropZones,
      'blocks': blocks,
      'solution': solution,
    };
  }
}
