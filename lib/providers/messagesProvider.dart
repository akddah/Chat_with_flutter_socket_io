import 'package:flutter/foundation.dart';
import 'package:flutter_socket_io_chat/models/messageModel.dart';

class MessagesProvider with ChangeNotifier {
  final List<Message> _messages = [];

  List<Message> get allMessages => [..._messages];

  void addMessage(Message message) {
    _messages.insert(0, message);
    notifyListeners();
  }
}
