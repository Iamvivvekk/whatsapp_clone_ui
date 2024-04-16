class ContactsModel {
  final String name;
  final String imageUrl;
  final String? lastMessage;

  ContactsModel(
      {required this.name,
      required this.imageUrl,
      this.lastMessage =
          'chat con chat content chat contenttent chat content chat contentchat'});
}
