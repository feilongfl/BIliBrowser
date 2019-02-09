class AttentionCardType256 {
  int upid;
  String schema;
  int playcnt;
  String typeinfo;
  String author;
  String upper;
  String title;
  String cover;
  String intro;
  String upperavatar;
  int ctime;
  int id;
  int replycnt;

  AttentionCardType256(
      {this.upid,
      this.schema,
      this.playcnt,
      this.typeinfo,
      this.author,
      this.upper,
      this.title,
      this.cover,
      this.intro,
      this.upperavatar,
      this.ctime,
      this.id,
      this.replycnt});

  AttentionCardType256.fromJson(Map<String, dynamic> json) {
    upid = json['upId'];
    schema = json['schema'];
    playcnt = json['playCnt'];
    typeinfo = json['typeInfo'];
    author = json['author'];
    upper = json['upper'];
    title = json['title'];
    cover = json['cover'];
    intro = json['intro'];
    upperavatar = json['upperAvatar'];
    ctime = json['ctime'];
    id = json['id'];
    replycnt = json['replyCnt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['upId'] = this.upid;
    data['schema'] = this.schema;
    data['playCnt'] = this.playcnt;
    data['typeInfo'] = this.typeinfo;
    data['author'] = this.author;
    data['upper'] = this.upper;
    data['title'] = this.title;
    data['cover'] = this.cover;
    data['intro'] = this.intro;
    data['upperAvatar'] = this.upperavatar;
    data['ctime'] = this.ctime;
    data['id'] = this.id;
    data['replyCnt'] = this.replycnt;
    return data;
  }
}
