import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:user_app/auth/home/model/data_response_dto.dart';

class Api_Manager {
  Future<Patient> getPatient() async {
    var client = http.Client();
    var patient;

    try {
      var response = await client.get(Uri.https("https://ccr-dev.cmedhealth.com",
          "/api/v1/patient/4154?access_token=0a401346-1b99-4815-af16-79c4686371a5"));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);
        var patient = Patient.fromJson(jsonMap);
      }
    } catch (Exception) {
      return patient;
    }
    return patient;
  }
}
