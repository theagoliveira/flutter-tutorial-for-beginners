import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location; // Location name for the UI
  String time; // Time in that location
  String flag; // URL to an asset flag icon
  String url; // Location URL for API endpoint

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    Response response = await get('http://worldtimeapi.org/api/timezone/$url');
    Map data = jsonDecode(response.body);
    // print(data);

    // Get properties from data
    String datetime = data["datetime"];
    String offset = data["utc_offset"].substring(1, 3);
    // print(datetime);
    // print(offset);

    // Create a datetime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    // print(now);

    // Set the time property
    time = now.toString();
  }
}
