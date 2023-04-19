import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  late String location;
  late String time;
  late String url;
  String flag;
  late bool isDaytime;

  WorldTime({required this.location,required this.flag,required this.url});

  Future<void> getTime() async {
  try{
        Response response = await get(
            Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
        Map data = jsonDecode(response.body);
        String datetime = data['datetime'];
        String offset = data['utc_offset'].substring(1, 3);

        DateTime now = DateTime.parse(datetime);
        now = now.add(Duration(hours: int.parse(offset)));
        isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
        time = DateFormat.jm().format(now);
      }
  catch(e){
    print("error occurred $e");
    time = "could not get the data";
    }
  }





}

