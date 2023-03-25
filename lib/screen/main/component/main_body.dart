import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  MainBody({Key? key}) : super(key: key);

  List<String> titleList = [
    "Remove form favorites",
    "Personal",
    "Graphic desgin"
  ];

  List<String> iconAssetsList = [
    "assets/icons/unsave.png",
    "assets/icons/file.png",
    "assets/icons/exel.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: const Color(0xfff6f8fe),
      // color: Colors.black,

      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 30, top: 35),
                child: const ImageIcon(
                  AssetImage("assets/icons/menu.png"),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                margin: const EdgeInsets.only(top: 35, right: 30),
                height: 60,
                child: Image.asset(
                  "assets/images/profile.png",
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, top: 5),
            alignment: Alignment.topLeft,
            child: const Text(
              "Files",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            height: 44,
            margin: const EdgeInsets.only(right: 30, left: 30, top: 20),
            child: TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(color: Color(0xffECEEF9), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(color: Color(0xffECEEF9), width: 2),
                ),
                suffixIcon: Icon(Icons.search),
                hintText: 'Search',
                contentPadding: EdgeInsets.only(top: 5, left: 10),
                filled: true,
                fillColor: Color(0xffeceef9),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 20, left: 30),
            child: const Text(
              "Favorite",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            height: 150,
            margin: const EdgeInsets.only(top: 16, left: 30),
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                String title = titleList[index];
                String icon = iconAssetsList[index];

                return Container(
                  margin: const EdgeInsets.only(right: 26),
                  width: 122,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17),
                    border: Border.all(
                      width: 0.8,
                      color: Colors.white,
                    ),
                  ),
                  child: Column(
                    children: [
                      if (index == 0)
                        Container(
                          margin: const EdgeInsets.only(top: 38),
                          child: ImageIcon(
                            AssetImage(
                              icon,
                            ),
                            color: Colors.black,
                            size: 33,
                          ),
                        )
                      else
                        Container(
                          margin: const EdgeInsets.only(
                              top: 0, right: 20, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 20),
                                child: Image.asset(
                                  icon,
                                  height: 40,
                                ),
                              ),
                              const Icon(
                                CupertinoIcons.ellipsis_vertical,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      Container(
                        margin: EdgeInsets.only(top: index != 1 ? 20 : 55),
                        child: Text(
                          title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ),
                      if (index == 2)
                        Container(
                          margin: const EdgeInsets.only(top: 7),
                          child: const Text(
                            "xlsx 551 KB",
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.w300),
                          ),
                        ),
                      if (index == 2)
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.only(top: 8, left: 15),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/icons/profile2.png",
                                  height: 20,
                                  width: 20,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "assets/icons/profile3.png",
                                    height: 20,
                                    width: 20,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "assets/icons/profile4.png",
                                    height: 20,
                                    width: 20,
                                    fit: BoxFit.cover,
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
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
            alignment: Alignment.topLeft,
            child: const Text(
              "Recent uploads",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 35, top: 17),
            child: const Text(
              "November. 11",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            margin: const EdgeInsets.only(right: 30, left: 35, top: 15),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 20, left: 14),
                  child: const Text(
                    "2 photos have been uploaded",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 8, left: 16),
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Cloud > Photos > Nature",
                        style:
                            TextStyle(fontSize: 9, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 16),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/icons/profile2.png",
                              height: 20,
                              width: 20,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                "assets/icons/profile3.png",
                                height: 20,
                                width: 20,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                "assets/icons/profile4.png",
                                height: 20,
                                width: 20,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 14, bottom: 11),
                  height: 124,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(left: 0, right: 13),
                        height: 124,
                        width: 165,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Image.asset(
                            index == 0
                                ? "assets/images/nature1.png"
                                : "assets/images/nature2.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 30, left: 35, top: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 15, left: 40),
                  child: const Text(
                    "1 file has been uploaded",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 13, left: 44),
                  child: const Text(
                    "Cloud > Docunets",
                    style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 44, top: 16, bottom: 11),
                  child: Row(
                    children: [
                      Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xffD6E6F5),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(12),
                          child: Image.asset("assets/images/word.png"),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: const Text(
                              "Monthly Report  December",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 12),
                            child: const Text(
                              "doc. 338 KB",
                              style: TextStyle(
                                  fontSize: 9, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
