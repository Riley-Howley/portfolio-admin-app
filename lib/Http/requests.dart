import 'dart:io';

import '../Models/contact.dart';
import 'dart:convert';

List<Contact> contactList = [];

String ip = "https://10.0.2.2:7119/api";

HttpClient client = new HttpClient();

Future getAllMessages() async {
  client.badCertificateCallback =
      ((X509Certificate cert, String host, int port) => true);

  HttpClientRequest request = await client.getUrl(Uri.parse("$ip/contacts"));
  HttpClientResponse response = await request.close();

  if (response.statusCode == 200) {
    List<dynamic> jsonData =
        jsonDecode(await response.transform(utf8.decoder).join());

    if (contactList.isNotEmpty) {
      contactList.clear();
      for (var i in jsonData) {
        contactList.add();
      }
    }
  }
}
