class Artikel {
  int id;
  String title;
  String slug;
  String text;
  String thumbnail;
  
  Artikel({
    required this.id,required this.title,required this.slug,required this.text,required this.thumbnail
  });

  factory Artikel.fromJson(Map<String,dynamic> json){
    return Artikel(id: json['id'], title: json['title'], slug: json['slug'], text: json['text'], thumbnail: json['thumbnail']);
  }
}
