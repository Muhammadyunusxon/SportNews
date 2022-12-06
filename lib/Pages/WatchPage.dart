
import 'package:flutter/material.dart';
import 'package:sportnews/Pages/Model.dart';

class WatchPage extends StatefulWidget {
  final DiscountModel data;

  const WatchPage({Key? key, required this.data}) : super(key: key);

  @override
  State<WatchPage> createState() => _WatchPageState();
}

class _WatchPageState extends State<WatchPage> {
  bool isPause=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff000000),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 276,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/watch.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.only(
                    top: 24, right: 6, left: 16, bottom: 8),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                      isPause? Color(0xffCD3A35).withOpacity(0.1): Colors.transparent,
                          isPause? Color(0xff131620).withOpacity(0.5): Colors.transparent,
                    ])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 22,
                          child: Image.asset("images/addPerson.png"),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    InkWell(
                      onTap: (){
                        isPause = !isPause;
                        setState(() {
                        });
                      },
                      child: Center(
                        child:
                        Container(
                          margin: EdgeInsets.all(30),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: isPause? Color(0xffE0E1EB).withOpacity(0.3):Colors.transparent,
                            border:  Border.all(color: isPause? Colors.white:Colors.transparent, width: 1),
                          ),
                          child: isPause? Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ): SizedBox.shrink(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                     isPause? widget.data.play: "",
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                     Text(
                      isPause? "John Doe, Antony, Alen + 32 Others":"",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xffE5E5E8),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Text(
                          "30:23",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        const Text(
                          " / 90:00",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffA6A9B8),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 1, horizontal: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: const Color(0xffF6423A),
                          ),
                          child: const Text(
                            "Live",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 10,
                                color: Colors.white),
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.fullscreen,
                          color: Color(0xffA6A9B8),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 2.5,
                  width: MediaQuery.of(context).size.width / 3 * 2,
                  color: Colors.red,
                ),
                Container(
                  height: 2.5,
                  width: MediaQuery.of(context).size.width / 3,
                  color: const Color(0xffA6A9B8),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 60,
                ),
                Text(
                  "Info",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Chat",
                  style: TextStyle(fontSize: 16, color: Color(0xffA6A9B8)),
                ),
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Line Up",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffA6A9B8),
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  height: 1,
                  width: MediaQuery.of(context).size.width / 3 - 16,
                  color: Colors.white,
                ),
                Container(
                  height: 1,
                  margin: const EdgeInsets.only(right: 16),
                  width: MediaQuery.of(context).size.width / 3 * 2 - 16,
                  color: const Color(0xff404247),
                ),
              ],
            ),
            Container(
              height: 289,
              margin: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("images/back.png")),
              ),
              child: Image.asset("images/frame.png"),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Ongoing",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),


        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(16),
          color: const Color(0xff11111D),
          child: Row(
            children: [
              Container(
                height: 52,
                width: 265,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color(0xffFF443B),
                      Color(0xffB93532),
                    ]),
                    borderRadius: BorderRadius.circular(14)),
                child: const Center(
                    child: Text(
                  "Place",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                )),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 52,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: const Color(0xff21222D),
                    ),
                    gradient: LinearGradient(colors: [
                      const Color(0xff24242F).withOpacity(0.5),
                      const Color(0xff21222D),
                    ])),
                child: const Icon(
                  Icons.messenger,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ));
  }
}
