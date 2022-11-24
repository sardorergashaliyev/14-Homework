import 'package:flutter/material.dart';

import 'data_model.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<DataModel> list = [
    DataModel(
      son: 189,
      discription:
          'lanasmith It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. There are many variation... more',
      time: '2 hours ago',
      avatar:
          "https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg?w=2000",
      name: "Christina Smith",
      price: 26,
    ),
    DataModel(
      son: 189,
      discription:
          'lanasmith It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. There are many variation... more',
      time: '2 hours ago',
      avatar:
          "https://media.istockphoto.com/id/537373196/photo/trees-forming-a-heart.jpg?s=612x612&w=0&k=20&c=onZKNjkycICe4q2ZDnKi39z42Ax9tpZT7pph-2e5Seo=",
      name: "Joe Evans",
      price: 40,
    ),
    DataModel(
      son: 189,
      discription:
          'lanasmith It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. There are many variation... more',
      time: '2 hours ago',
      avatar:
          "https://media.istockphoto.com/id/537373196/photo/trees-forming-a-heart.jpg?s=612x612&w=0&k=20&c=onZKNjkycICe4q2ZDnKi39z42Ax9tpZT7pph-2e5Seo=",
      name: "Joe Evans",
      price: 1,
    ),
    DataModel(
      son: 189,
      discription:
          'lanasmith It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. There are many variation... more',
      time: '2 hours ago',
      avatar:
          "https://media.istockphoto.com/id/537373196/photo/trees-forming-a-heart.jpg?s=612x612&w=0&k=20&c=onZKNjkycICe4q2ZDnKi39z42Ax9tpZT7pph-2e5Seo=",
      name: "Joe Evans",
      price: 5,
    ),
  ];

  bool like = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
            color: const Color(0xffF4F5F7),
            child: Column(
              children: [
                const Image(
                  image: AssetImage('assets/Group1.png'),
                ),
                Container(
                  height: 26,
                  width: 89,
                  child: const Image(
                    image: AssetImage('assets/Group2.png'),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Row(children: [
                      Container(
                        margin: const EdgeInsets.only(left: 16, top: 20),
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                "https://source.unsplash.com/random/${index + 5}",
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Row(children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 16, top: 20),
                              child: Text(
                                list[index].name,
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff172B4D),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 16),
                              child: Text(
                                list[index].time,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff7C859F),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 9, top: 4),
                          height: 13.33,
                          width: 13.33,
                          child: const Image(
                            image: AssetImage('assets/Exclude.png'),
                          ),
                        )
                      ]),
                    ]),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(list[index].discription),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      height: 280,
                      width: double.infinity,
                      child: Image(
                        image: NetworkImage(
                            "https://source.unsplash.com/random/${index + 1}"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            like = !like;
                            like == false
                                ? list[index].son += 1
                                : list[index].son -= 1;
                            setState(() {});
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 18, top: 21),
                            child: like
                                ? Container(
                                    height: 19,
                                    width: 20,
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Color(0xff7C859F),
                                    ))
                                : Container(
                                    height: 19,
                                    width: 20,
                                    child: const Image(
                                      image: AssetImage(
                                        'assets/Heart.png',
                                      ),
                                    ),
                                  ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 6, top: 21),
                          child: Text(
                            '${list[index].son}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Color(0xff7C859F),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 18, top: 21),
                          height: 20,
                          width: 20,
                          child: const Image(
                            image: AssetImage('assets/Chat.png'),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 21, top: 21),
                          height: 18,
                          width: 18,
                          child: const Image(
                            image: AssetImage('assets/Send.png'),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          margin: const EdgeInsets.only(left: 114, top: 21),
                          decoration: const BoxDecoration(
                              color: Color(0xff3F8AE0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4))),
                          child: Text(
                            'Unlock for \$${list[index].price}',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    )
                  ],
                );
              },
            ),
          )
        ]),
      ),
    );
  }
}
