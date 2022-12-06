import 'package:flutter/material.dart';
import 'package:sportnews/Pages/WatchPage.dart';

import 'Model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<DiscountModel> discountData = [
    DiscountModel(
      discount: 50,
      stadiumName: "Pahlavon Stadium",
      rate: 3.6,
      location: "Sergeli, Tashkent",
      image: "images/stadion.png",
      time: '07.00-09.00',
      distance: '10 km',
      price: 15,
      play: 'Copa America Final 2019',
    ),
    DiscountModel(
      discount: 45,
      stadiumName: "Bunyodkor Stadium",
      rate: 3.9,
      location: "Chilonzor, Tashkent",
      image: "images/stadion.png",
      time: '09.00-11.00',
      distance: '10 km',
      price: 12,
      play: 'Arsenal vs. Liverpol',
    ),
    DiscountModel(
      discount: 60,
      stadiumName: "Humo Arena",
      rate: 4.1,
      location: "Tashkent",
      image: "images/stadion.png",
      time: '07.00-09.00',
      distance: '10 km',
      price: 22,
      play: 'Arsenal vs. Liverpol',
    ),
    DiscountModel(
      discount: 45,
      stadiumName: "Pakhtakar Stadium",
      rate: 3.1,
      location: "Tashkent",
      image: "images/stadion.png",
      time: '07.00-09.00',
      distance: '10 km',
      price: 12,
      play: 'Arsenal vs. Chelsea',
    ),
  ];
  List listOfStadium = [
    "Basketball",
    "Ping-Pong",
    "Football",
    "Horseback",
    "Swimming Poll",
  ];
  int isChecked = 0;
  ScrollController discountController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff11111D),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 45),
            child: TextFormField(
              onChanged: (search) {
                setState(() {});
              },
              style: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              decoration: InputDecoration(
                suffixIcon: Container(
                  margin: const EdgeInsets.all(6),
                  padding: const EdgeInsets.all(10),
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.1),
                  ),
                  child: Image.asset("images/Filter.png"),
                ),
                labelText: "City / Stadium",
                labelStyle: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                ),
                prefixIcon: Container(
                  padding: const EdgeInsets.all(16),
                  height: 22,
                  width: 22,
                  child: Image.asset(
                    "images/Search.png",
                  ),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 18.5, horizontal: 24),
                filled: true,
                fillColor: const Color(0xffFFFFFF).withOpacity(0.03),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: Color(0xff62C5ED),
                      width: 1.5,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: Color(0xff62C5ED),
                      width: 1.5,
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: const Color(0xffFFFFFF).withOpacity(0.3),
                      width: 1.5,
                    )),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 25, right: 107),
                  child: Text(
                    "Know your favourite team score",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                      controller: discountController,
                      itemCount: discountData.length,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            isChecked = index;
                            setState(() {});
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            height: 150,
                            padding: const EdgeInsets.all(20),
                            width: MediaQuery.of(context).size.width - 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(colors: [
                                Colors.white.withOpacity(0.1),
                                Colors.white.withOpacity(0.08),
                              ]),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      25,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Up to ${discountData[index].discount}% discount",
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      Text(
                                        discountData[index].stadiumName,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 18,
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            color: Color(0xffF3E18F),
                                            size: 18,
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            discountData[index].rate.toString(),
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Color(0xffF3E18F),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 16,
                                            width: 16,
                                            child: Image.asset(
                                                'images/Location.png'),
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            discountData[index].location,
                                            style: TextStyle(
                                              color:
                                                  Colors.white.withOpacity(0.5),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Image.asset("images/stadium1.png"),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 10,
                  child: ListView.builder(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 2 - 18),
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: discountData.length,
                      itemBuilder: (context, index) {
                        return isChecked == index
                            ? Container(
                                margin: const EdgeInsets.only(right: 6),
                                height: 6,
                                width: 18,
                                decoration: BoxDecoration(
                                  color: const Color(0xff62C5ED),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              )
                            : Container(
                                margin: const EdgeInsets.only(right: 6),
                                height: 6,
                                width: 6,
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xffFFFFFF).withOpacity(0.4),
                                  shape: BoxShape.circle,
                                ),
                              );
                      }),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 28,
                  width: double.infinity,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: listOfStadium.length,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 12, top: 5, bottom: 5),
                          child: Text(
                            listOfStadium[i],
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.35),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 261,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(left: 17),
                          height: 261,
                          width: 231,
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff1A1A26),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 169,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                  image: DecorationImage(
                                    image:
                                        AssetImage(discountData[index].image),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 36,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 17, vertical: 7),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("images/blur.png"),
                                        ),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "\$${discountData[index].price}",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: Color(
                                            (0xffF3E18F),
                                          ),
                                        ),
                                      )),
                                    ),
                                    SizedBox(
                                      height: 36,
                                      child: Image.asset(
                                        "images/save.png",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7),
                                    child: Text(
                                      discountData[index].stadiumName,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    padding: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      color: const Color(0xff62C5ED),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Text(
                                      discountData[index].distance,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  SizedBox(
                                    height: 16,
                                    width: 16,
                                    child: Image.asset("images/Location.png"),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    discountData[index].location,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Color(0xffF3E18F),
                                        size: 18,
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        discountData[index].rate.toString(),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(0xffF3E18F),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  SizedBox(
                                    height: 16,
                                    width: 16,
                                    child: Image.asset("images/Time.png"),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Available time: ",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    discountData[index].time,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xff62C5ED),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 21, top: 30),
                  child: Text(
                    "Nearby Games",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 275,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (_)=> WatchPage(data: discountData[index]),));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 12),
                            padding: const EdgeInsets.all(10),
                            height: 126,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.white.withOpacity(0.07),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                    height: 106,
                                    width: 80,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        discountData[index].image,
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 7, bottom: 7, left: 12),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              discountData[index].play,
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white),
                                            ),
                                            const Spacer(),
                                            Container(
                                              height: 30,
                                              width: 30,
                                              padding: const EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white
                                                    .withOpacity(0.02),
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.bookmark_border,
                                                  color: Colors.white
                                                      .withOpacity(0.2),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              height: 16,
                                              width: 16,
                                              child: Image.asset(
                                                  "images/Location.png"),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              discountData[index].location,
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                color:
                                                    Colors.white.withOpacity(0.5),
                                              ),
                                            ),
                                            const Spacer(),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 3,
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              height: 16,
                                              width: 16,
                                              child:
                                                  Image.asset("images/Time.png"),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "Available time: ",
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                color:
                                                    Colors.white.withOpacity(0.5),
                                              ),
                                            ),
                                            const Spacer(),
                                            Text(
                                              discountData[index].time,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: Color(0xff62C5ED),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              color: Color(0xffF3E18F),
                                              size: 18,
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              discountData[index].rate.toString(),
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: Color(0xffF3E18F),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              "\$${discountData[index].price}",
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                                color: Color(0xffF3E18F),
                                              ),
                                            ),
                                            const Spacer(),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  right: 10),
                                              padding: const EdgeInsets.all(2),
                                              decoration: BoxDecoration(
                                                color: const Color(0xff62C5ED),
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                              ),
                                              child: Text(
                                                discountData[index].distance,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                Container(
                  height: 455,
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(0.15)),
                  child: Column(
                    children: [
                      Image.asset("images/calendar.png"),
                      const SizedBox(
                        height: 11,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 14,
                              horizontal: 17,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                            child: Text(
                              "Cencel",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 18,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 14,
                              horizontal: 17,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xff62C5ED)),
                            child: const Text(
                              "Done",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 21, top: 30),
                  child: Text(
                    "Active Games",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 275,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (contex)=>WatchPage(data: discountData[index],),),);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 12),
                            padding: const EdgeInsets.all(10),
                            height: 126,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.white.withOpacity(0.07),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                    height: 106,
                                    width: 80,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        discountData[index].image,
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 7, bottom: 7, left: 12),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              discountData[index].stadiumName,
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white),
                                            ),
                                            const Spacer(),
                                            Container(
                                              height: 30,
                                              width: 30,
                                              padding: const EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white
                                                    .withOpacity(0.04),
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.bookmark,
                                                  color: Colors.white
                                                      .withOpacity(0.8),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              height: 16,
                                              width: 16,
                                              child: Image.asset(
                                                  "images/Location.png"),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              discountData[index].location,
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                color:
                                                    Colors.white.withOpacity(0.5),
                                              ),
                                            ),
                                            const Spacer(),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 3,
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              height: 16,
                                              width: 16,
                                              child:
                                                  Image.asset("images/Time.png"),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "Available time: ",
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                color:
                                                    Colors.white.withOpacity(0.5),
                                              ),
                                            ),
                                            const Spacer(),
                                            Text(
                                              discountData[index].time,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: Color(0xff62C5ED),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              color: Color(0xffF3E18F),
                                              size: 18,
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              discountData[index].rate.toString(),
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: Color(0xffF3E18F),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              "\$${discountData[index].price}",
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                                color: Color(0xffF3E18F),
                                              ),
                                            ),
                                            const Spacer(),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  right: 10),
                                              padding: const EdgeInsets.all(2),
                                              decoration: BoxDecoration(
                                                color: const Color(0xff62C5ED),
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                              ),
                                              child: Text(
                                                discountData[index].distance,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      padding: const EdgeInsets.only(left: 22),
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 18),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 120,
                                width: 116,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(14),
                                  child: Image.asset(
                                    discountData[index].image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                discountData[index].stadiumName,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 12,
                                    child: Image.asset("images/Location.png"),
                                  ),
                                  Text(
                                    discountData[index].distance,
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                 SizedBox(width: 20,),
                                  const Icon(
                                    Icons.star,
                                    color: Color(0xffF3E18F),
                                    size: 18,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    discountData[index].rate.toString(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xffF3E18F),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xff62C5ED),
        unselectedItemColor: const Color(0xffffffff).withOpacity(0.5),
        backgroundColor: const Color(
          0xff1B1B26,
        ),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Saved"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
      ),
    );
  }
}
