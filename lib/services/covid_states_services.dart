import 'dart:convert';

import 'package:covid_19_api/models/covid_states_model.dart';
import 'package:covid_19_api/services/utilities/app_urls.dart';
import 'package:http/http.dart' as http;

class CovidStatesServices {
  Future<CovidStatesModel> fetchCovidStates() async {
    final response = await http.get(
      Uri.parse(AppUrls.worldStatesApi),
    );
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return CovidStatesModel.fromJson(data);
    } else {
      throw Exception('Error Occured While Recieving response');
    }
  }

  Future<List<dynamic>> countriesListApi() async {
    var data;
    final response = await http.get(
      Uri.parse(AppUrls.countriesList),
    );
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('Error Occured While Recieving response');
    }
  }
}
