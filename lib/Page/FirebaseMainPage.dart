import 'package:flutter/material.dart';
import 'dart:math' as math;

class FirebaseMainPage extends StatefulWidget {
  const FirebaseMainPage({super.key});

  @override
  State<FirebaseMainPage> createState() => _FirebaseMainPageState();
}

class _FirebaseMainPageState extends State<FirebaseMainPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color.fromRGBO(253, 253, 253, 1.0),
        ),
        BackWalking(),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color.fromRGBO(253, 253, 253, 0.3),
        ),
        Center(
          child: Image.asset(
            "assets/string.png",
            height: MediaQuery.of(context).size.height,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height / 3,
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Column(
                  children: [
                    GamesLogo(),
                    SmartPhone(),
                    ImagePart("assets/firebase_logo.png"),
                    ImagePart("assets/Free_plan.png"),
                    ImagePart("assets/now_data.png"),
                    ImagePart("assets/what_is_now_gb.png"),
                    ImagePart("assets/what_is_ten_gb.png"),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 100),
                      child: ImagePart("assets/our_data.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 100),
                      child: TextPart(
                          "#1 친구 가게 놀러가기 기능\n기능적 핵심: 인테리어 정보를 저장하여 불러올 수 있어야 한다.\n1. 친구 목록에서 친구 가게 놀러가기 클릭\n2. 해당 유저의 아이디로 데이터 불러오기 (데이터 요청 증가)\n3. 데이터 중 인테리어 데이터를 불러와 위치, 각도, 그림 리소스 경로를 참조하여 에셋 배치하기\n4. 친구 가게에서 선물하기나 도와주기를 클릭 (서버 요청)\n5. 나의 데이터를 업데이트하거나 상대의 데이터를 업데이트 (서버 요청)\n\n-> 한 이벤트에 요청을 3번이나 보낸다.\n요청은 유저간에 최대한 겹치면 안되고 일정 수 이상의 유저가 DB와 연결되어 있으면 기다리게 대기 시켜야 한다.(로딩)\n요청 수보다 요청 시에 주고 받게 되는 데이터의 용량이 관건\n인테리어 객체에 제한이 없다면 용량이 급격하게 증가할 수 있으니 가구 인테리어 개수에 제한을 두는 것이 좋을 것 같다."),
                    ),
                    TextPart(
                        "#2 친구에게 선물하기 기능만 구현\n1. 친구 목록에서 친구에게 선물하기 클릭\n2. 친구 데이터 업데이트 (업데이트 요청)\n3. 내 데이터 업데이트 (업데이트 요청)\n\n놀러가기 기능과 동일하게 한 이벤트에 요청 3번 발생하지만\n인테리어 정보들을 불러오지 않기 때문에 용량으로 계산했을 때,\데이터 비용(cost)이 확연히 줄 것 이다."),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 100),
                      child: TextPart(
                          "결론: 데이터의 요청 용량면에서 따졌을 때, 선물하기 요청만 구현하는 게 확실히 데이터 비용을 줄 일 수 있을 것이다.\n개인적으로 구현 가능성 측면에서 염려하던 인테리어 정보 기능은 친구 기능과는 별개로 공부하여 가장 최적화된 방법으로 구현할 것을 요구."),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class GamesLogo extends StatelessWidget {
  const GamesLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(120, 104, 95, 1.0),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          const BoxShadow(
            color: Colors.black,
            spreadRadius: 0.2,
            blurRadius: 2,
          )
        ],
      ),
      child: const Center(
        child: Text(
          "도토리 게임즈",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontFamily: "apple",
          ),
        ),
      ),
    );
  }
}

class BackWalking extends StatefulWidget {
  const BackWalking({super.key});

  @override
  State<BackWalking> createState() => _BackWalkingState();
}

class _BackWalkingState extends State<BackWalking> {
  double left = -1000;
  double top = 0;

  void move() async {
    while (true) {
      await Future.delayed(Duration(seconds: 3));
      setState(() {
        top = math.Random().nextDouble() * 200 - 100;
        left = left > 0 ? -1000 : 2000;
      });
      await Future.delayed(Duration(seconds: 1));
      setState(() {});
      await Future.delayed(Duration(seconds: 1));
      setState(() {});
      await Future.delayed(Duration(seconds: 1));
      setState(() {});
      await Future.delayed(Duration(seconds: 1));
      setState(() {});
      await Future.delayed(Duration(seconds: 1));
      setState(() {});
      await Future.delayed(Duration(seconds: 1));
      setState(() {});
      await Future.delayed(Duration(seconds: 1));
      setState(() {});
      await Future.delayed(Duration(seconds: 1));
      setState(() {});
      await Future.delayed(Duration(seconds: 1));
      setState(() {});
      await Future.delayed(Duration(seconds: 1));
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    move();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(seconds: 10),
            left: left,
            top: top,
            child: Transform(
              transform:
                  left < 0 ? Matrix4.rotationY(math.pi) : Matrix4.rotationY(0),
              child: Image.asset(
                "assets/walking_dog.gif",
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SmartPhone extends StatefulWidget {
  const SmartPhone({super.key});

  @override
  State<SmartPhone> createState() => _SmartPhoneState();
}

class _SmartPhoneState extends State<SmartPhone> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 100),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(67, 67, 67, 1.0),
      ),
      child: Column(
        children: [
          Container(
            height: 20,
            width: 20,
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          Image.asset(
            "assets/Hello_Hamster.gif",
            height: MediaQuery.of(context).size.height / 2,
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}

class ImagePart extends StatelessWidget {
  final String imgPath;
  const ImagePart(this.imgPath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(251, 242, 233, 1.0),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.brown.withOpacity(0.7),
            spreadRadius: 0.2,
            blurRadius: 3,
          ),
        ],
      ),
      child: Center(
        child: GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (builder) {
                return Dialog(
                  child: Image.asset(imgPath),
                );
              },
            );
          },
          child: Image.asset(imgPath),
        ),
      ),
    );
  }
}

class TextPart extends StatelessWidget {
  final String content;
  const TextPart(this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (builder) {
            return Dialog(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  content,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            );
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(251, 242, 233, 1.0),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.brown.withOpacity(0.7),
              spreadRadius: 0.2,
              blurRadius: 3,
            ),
          ],
        ),
        child: Text(
          content,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontFamily: "pen",
          ),
        ),
      ),
    );
  }
}
