class ConversationModel {
  String fullName;
  String image;
  String message;
  String date;
  int messageCount;

  ConversationModel(
      {this.fullName, this.image, this.message, this.messageCount, this.date});
  ConversationModel.fromJson(Map<String, dynamic> json) {
    fullName = json['full_name'];
    image = json['image'];
    message = json['message'];
    date = json['date'];
    messageCount = json['message_count'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['full_name'] = this.fullName;
    data['image'] = this.image;
    data['message'] = this.message;
    data['date'] = this.date;
    data['message_count'] = this.messageCount;
    return data;
  }
}

List<ConversationModel> conversation = [
  ConversationModel(
      fullName: 'INNOCENT G.',
      image:
          'https://png.pngtree.com/svg/20161027/service_default_avatar_182956.png',
      date: '12:00 AM',
      message: 'Tell your users as possible.',
      messageCount: 0),
  ConversationModel(
      fullName: 'RUBERANDINDA P.',
      image:
          'https://png.pngtree.com/svg/20161027/service_default_avatar_182956.png',
      message: 'Keep your welcome statement ',
      date: '12:00 AM',
      messageCount: 1),
  ConversationModel(
      fullName: 'RUGAMBA A.',
      image:
          'https://png.pngtree.com/svg/20161027/service_default_avatar_182956.png',
      message: 'Try using a bullet point list',
      date: '12:00 AM',
      messageCount: 0),
  ConversationModel(
      fullName: 'BIKORIMANA David',
      image:
          'https://png.pngtree.com/svg/20161027/service_default_avatar_182956.png',
      date: '12:00 AM',
      message: 'this helps readability',
      messageCount: 3),
];
