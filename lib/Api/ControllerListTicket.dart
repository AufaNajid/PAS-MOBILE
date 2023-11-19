import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'api_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class ControllerListTicket extends GetxController {
  Rx<TicketModel> data =
      TicketModel().obs;
  RxList<Classification> listmodelctr
  = <Classification>[].obs;
  RxBool isLoading = true.obs;



  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  void filterProductsByCategory(Genre genre) {
    print("Filtering by category : $nameEnumValues");
    listmodelctr.assignAll(listmodelctr.where((Genre) => Genre.genre == nameEnumValues).toList());
    print("Filtered product count: ${listmodelctr.length}");
  }


  void loadData() async {
    try {
      final response = await http.get(Uri.parse(
          "https://app.ticketmaster.com/discovery/v2/events.json?classificationId=KZFzniwnSyZfZ7v7na&apikey=9a0q73hG0j9Jdrbm4wQKHUvswi5qcPnN"));

      if (response.statusCode == 200) {
        data.value = allTicketModelFromJson(response.body);
        isLoading.value = false;
        print("HALO ${data.value.embedded!.events[0].name}");

      } else {
        print("status code : " + response.statusCode.toString());
      }
    } catch (e) {
      print("error : " + e.toString());
    }
  }
}
