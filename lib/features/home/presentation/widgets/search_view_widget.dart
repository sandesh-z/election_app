import 'package:flutter/material.dart';

Widget buildRowTile(
    String partyName, int status, String canditateName, int voteCount,
    {String postName = ""}) {
  return Row(
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                postName,
                style: const TextStyle(fontSize: 25),
              )
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Image(image: partyImage),
              Text(
                partyName,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 50,
            width: status == 0 ? 150 : 200,
            // color: Colors.green,
            child: Card(
                color: status == 0 ? Colors.green : Colors.yellow,
                child: Stack(
                  children: [
                    Center(
                      child: status == 0
                          ? const Text(
                              "निर्वाचित",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          : const Text(
                              "निकटतम प्रतिद्वन्द्वी",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                    ),
                    const SizedBox(width: 5),
                    Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: status == 0
                            ? const Icon(
                                Icons.done,
                                color: Colors.white,
                                size: 25,
                              )
                            : null),
                  ],
                )),
          ),
          Row(
            children: [
              Text("$canditateName - $voteCount मत",
                  style: TextStyle(fontSize: 25)),
            ],
          ),
        ],
      ),
    ],
  );
}
