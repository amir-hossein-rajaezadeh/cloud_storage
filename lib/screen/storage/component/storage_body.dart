import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StorageBody extends StatelessWidget {
  const StorageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff9fafe),
      // color: Colors.black,
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 48, left: 31, right: 47),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.arrow_back,
                  size: 25,
                ),
                Icon(
                  CupertinoIcons.ellipsis_vertical,
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30, left: 30),
            child: const Text(
              "Storage",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, right: 30, left: 30),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(47)),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 35, top: 22),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Globel etatics",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      height: MediaQuery.of(context).size.height * .4,
                      width: MediaQuery.of(context).size.width,
                      child: Transform.rotate(
                        angle: 3.17,
                        child: Container(
                          margin: const EdgeInsets.only(
                              top: 0, right: 30, left: 30),
                          child: const CircularProgressIndicator(
                            backgroundColor: Color(0xffd7e2f7),
                            color: Color(0xff4695ee),
                            value: 0.7,
                            strokeWidth: 12,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: Column(
                        children: const [
                          Text(
                            "64%",
                            style: TextStyle(
                                fontSize: 36, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "used space",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25, bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 54),
                        child: Column(
                          children: [
                            const Text(
                              "Total space",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 4),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 5),
                                    width: 14,
                                    height: 14,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffeaedfa),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                  const Text(
                                    "2 TB",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          const Text(
                            "Used space",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 4),
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 5),
                                  width: 14,
                                  height: 14,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: const Color(0xff4d93e4),
                                  ),
                                ),
                                const Text(
                                  "1.28 TB",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 200,
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(top: 23),
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: index == 0
                              ? const Color(0xfffce5c8)
                              : index == 1
                                  ? const Color(0xfff9dbe4)
                                  : const Color(0xffcef7f4),
                        ),
                        child: index == 0
                            ? const Icon(
                                Icons.image,
                                color: Color(0xffe9b876),
                              )
                            : index == 1
                                ? const Icon(
                                    Icons.file_copy,
                                    color: Color(0xfff5627f),
                                  )
                                : const Icon(
                                    Icons.music_note,
                                    color: Color(0xff63e4d8),
                                  ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
