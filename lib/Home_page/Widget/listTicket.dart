import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Api/ControllerListTicket.dart';
import '../../Component/color_component.dart';
import '../../Detail_Page/detail_page_UI.dart';

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
                height: 520,
                width: 360,
                child: Obx(() => controller.isLoading.value
                    ? Text("Loading")
                    : ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.data.value!.embedded!.events.length,
                  itemBuilder: (context, index, ) {
                    return InkWell(
                      onTap: () {
                        if (controller.data.value != null) {
                          int tappedIndex = index;
                          if (tappedIndex >= 0 && tappedIndex < controller.data.value.embedded!.events.length) {
                            String eventName = controller.data.value.embedded!.events[tappedIndex].name;
                            String imageUrl = controller.data.value.embedded!.events[tappedIndex].images![0].url;
                            Get.to(
                                  () => DetailPage(
                                index: tappedIndex,
                                eventName: eventName,
                                imageUrl: imageUrl,
                              ),
                              transition: Transition.rightToLeft,
                              duration: Duration(milliseconds: 500),
                            );
                          }
                        }
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
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
                                    controller.data.value.embedded!
                                        .events[index]
                                        .images![index].url,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          controller.data.value.embedded!
                                              .events[index]
                                              .dates!
                                              .start
                                              .localDate,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: MyColors.ocean,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 150,
                                    // Set a specific width or use constraints to ensure proper truncation.
                                    child: Text(
                                      controller.data.value.embedded!.events[index].name,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
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