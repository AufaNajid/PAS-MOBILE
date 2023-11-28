import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pas_mobile11/Api/ControllerListTicket.dart';
import 'package:pas_mobile11/Detail_Page/detail_page_UI.dart';
import 'package:pas_mobile11/Component/color_component.dart';

class ListTicket extends StatelessWidget {
  ListTicket({Key? key}) : super(key: key);

  final ControllerListTicket controller = Get.put(ControllerListTicket());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<List<Map<String, dynamic>>>(
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            if (controller.data.value != null) {
              return Container(
                height: 510,
                width: 360,
                child: Obx(() => controller.isLoading.value
                    ? Text("Halo")
                    : ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.data.value!.embedded!.events.length,
                  itemBuilder: (context, index, ) {
                    return Container(
                      height: 120,
                      width: 360,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(255, 249, 249, 0.4),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            height: 95,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(
                                    controller.data.value.embedded!.events[index].images![index].url),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text(
                                        "DEC 8",
                                        style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w900,
                                          color: MyColors.txtDate,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 7),
                                      child: Text(
                                        controller.data.value.embedded!.events[index].dates!.start.localDate,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: MyColors.ocean,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  child: Text(
                                    controller.data.value.embedded!.events[index].name,
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: MyColors.txtJdlTheater,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "James M. Nederland Theatre \nChicago,IL",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: MyColors.txtLocateTct,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                )),
              );
            } else {
              return Text('No tickets available');
            }
          }
        },
      ),
    );
  }
}
