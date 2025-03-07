import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContentWidget extends StatefulWidget {
  const ContentWidget({super.key});

  @override
  State<ContentWidget> createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blueGrey.shade900,
      padding: const EdgeInsets.all(30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const TitleText("'잇당'과 비슷한 사례"),
            const ContentText(
              "칼로리 제로 식품을 대상화하여 식품 정보를 제공하는 플랫폼은 없었으나,\n단순히 '식품 정보' 자체를 제공하는 플랫폼은 꽤 있었다.",
            ),
            const SizedBox(height: 50),
            const ContentText("1. 식품 안전 나라"),
            HyperLinkImage(
              url: "https://www.foodsafetykorea.go.kr/",
              image: "assets/foodsafetycountry.png",
            ),
            const ContentText(
              "식품 안전에 대한 상세한 정보를 제공하는 누리집.\n음식에 대한 제도들도 상세히 알려주고\n소비자가 스스로 식품에 대해 판단할 수 있는 능력을 기를 수 있게 해준다.",
              align: TextAlign.start,
            ),
            const SizedBox(height: 50),
            const ContentText("2. Open Food Facts"),
            HyperLinkImage(
              url:
                  "https://play.google.com/store/apps/details?id=org.openfoodfacts.scanner",
              image: "assets/openfood.png",
            ),
            const ContentText(
              "제품의 바코드를 카메라로 찍으면, 해당 제품에 대한 식품 정보를 제공하는 어플리케이션",
            ),
            const SizedBox(height: 50),
            const ContentText("3. QR Food"),
            HyperLinkImage(
              url: "https://portal.foodqr.kr/",
              image: "assets/qrfood.png",
            ),
            HyperLinkImage(
              url: "https://youtu.be/hvD6Jq0aJSA",
              image: "assets/qrfood-video.png",
            ),
            const ContentText(
              "제품사와 협력하여, 제품마다 정보를 쉽게 볼 수 있는 QR 코드 부착",
            ),
            const SizedBox(height: 30),
            const ContentText(
              "제로 식품에 관한 플랫폼도 없고, 사용자 간의 리뷰를 기반으로 식품 정보를 제공하는 플랫폼 또한 없다.\n사용자 간의 커뮤니티를 만듬으로써 우리만의 차별점을 만들 수 있을 것 같다.",
            ),
            const SizedBox(height: 100),
            const TitleText("'ESG 경영' 이란?"),
            const ContentText(
              "ESG 경영은\n환경(Environment), 사회(Social), 지배구조(Governance)의 세 가지 분야에서 책임 있는 활동을 통해 지속 가능한 성장을 추구하는\n경영 방식을 말한다.",
            ),
            const SizedBox(height: 15),
            const ContentText(
              "쉽게 말해, 기업이 단기적인 이익만 생각하는 게 아니라\n지구와 사람들에게 좋은 영향을 미치면서, 투명하고 공정하게 운영됨으로써 장기적인 성장을 이루는 것을 말한다.",
            ),
            const SizedBox(height: 100),
            const TitleText("우리는 어떤 전략을 펼칠 수 있을까?"),
            const ContentText(
              "환경(Environment)",
            ),
            const ContentText(
              "1. 사탕수수 농장은 열대우림을 파괴하고, 많은 물을 소비하는데, 제로 식품이 대중화되면 설탕 농장 면적을 줄이는 데 도움이 될 수 있다.\n다만, 인공감미료를 만드는데 더 많은 탄소 배출이 있을 수 있음..",
            ),
            const ContentText(
              "2. 소비자들의 건강한 식습관을 도움으로써, 장기적으로 의료 폐기물(주사기, 약품 포장 등)과 의료 자원의 과소비가 줄어들 가능성이 있다.",
            ),
            const ContentText(
              "3. '지구 소비 제로' 라는 페이지를 만들어서,\n사용자가 친환경 소재의 포장을 사용 하는 제품이나, 소비 후 분리수거가 간편한 제품들을 쉽게 찾아 볼 수 있도록 한다.\n우리의 어플을 통해 친환경 제품들이 소비자들에게 보다 적극적으로 노출되며\n소비자들은 분리수거가 간편한 제품들을 쉽게 찾아볼 수 있어 지구 살리기에 보다 적극적으로 동참할 수 있게 된다.",
            ),
            const SizedBox(height: 15),
            const ContentText(
              "사회(Social)",
            ),
            const ContentText(
              "1. 당뇨 환자, 건강 취약 계층을 위한 맞춤형 제로 식품 정보를 제공한다.",
            ),
            const ContentText(
              "2. 소비자의 실제 리뷰 데이터를 기반으로 정보를 제공함으로써, 생산자들은 소비자의 피드백을 더욱 면밀히 반영하게 되고,\n이를 통해 보다 신뢰할 수 있는 제품을 개발하도록 유도한다.\n이는 궁극적으로 소비자와 생산자 간의 투명성을 높이고, 건강하고 안전한 식품 시장 형성에 기여한다.",
            ),
            const ContentText(
              "3. 제로 메뉴를 제공하는 식당이 무료로 등록할 수 있도록 지원함으로써,\n해당 식당들의 홍보 효과를 극대화하고 지역 경제 활성화에 기여한다.\n또한, 이는 소상공인들에게 추가적인 판로를 제공하는 지원 효과도 가질 수 있다.",
            ),
            const SizedBox(height: 15),
            const ContentText(
              "지배구조(Governance)",
            ),
            const ContentText(
              "1. 사용자들에게 정보의 출처를 자세하고 정확하게 명시한다.",
            ),
            const ContentText(
              "2. 제로 식품을 판매하는 브랜드와 협력 시 ESG 원칙을 준수하는 기업을 우선 선정한다.",
            ),
            const ContentText(
              "3. 건강 및 안전성 관련 이슈가 발견될 경우 빠르게 수정 및 공지 할 수 있는 페이지를 마련한다.\n해당 페이지에서 사용자에게 지속적으로 피드백을 받을 수 있는 환경을 구성한다.",
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 2),
            Text(
              "- 작성자: 조형구 -",
              style: TextStyle(
                color: Colors.blueGrey.shade200,
                fontFamily: "chosun",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  final String content;
  const TitleText(this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          selectionColor: Colors.green,
        ),
      ),
      child: SelectableText(
        content,
        style: const TextStyle(
          fontSize: 40,
          color: Colors.white,
          fontFamily: "yangjin",
        ),
      ),
    );
  }
}

class ContentText extends StatelessWidget {
  final String content;
  final TextAlign align;
  const ContentText(
    this.content, {
    super.key,
    this.align = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          selectionColor: Colors.green,
        ),
      ),
      child: SelectableText(
        content,
        textAlign: align,
        style: const TextStyle(
          fontSize: 15,
          color: Colors.white,
          fontFamily: "chosun",
        ),
      ),
    );
  }
}

class HyperLinkImage extends StatefulWidget {
  final String url;
  final String image;
  Size size;
  HyperLinkImage({
    super.key,
    required this.url,
    required this.image,
    this.size = Size.zero,
  });

  @override
  State<HyperLinkImage> createState() => _HyperLinkImageState();
}

class _HyperLinkImageState extends State<HyperLinkImage> {
  bool focus = false;

  @override
  Widget build(BuildContext context) {
    if (widget.size == Size.zero) {
      widget.size = const Size(500, 300);
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: MouseRegion(
        onEnter: (details) {
          setState(() {
            focus = true;
          });
        },
        onExit: (details) {
          setState(() {
            focus = false;
          });
        },
        child: GestureDetector(
          onTapDown: (details) {
            setState(() {
              focus = true;
            });
          },
          onTapUp: (details) {
            setState(() {
              focus = false;
            });
            launchUrl(Uri.parse(widget.url));
          },
          child: SizedBox(
            width: widget.size.width,
            height: widget.size.height,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      widget.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 150),
                  opacity: focus ? 0.5 : 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black,
                    ),
                    child: const Center(
                      child: Text(
                        "클릭 시, 사이트로 이동",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
