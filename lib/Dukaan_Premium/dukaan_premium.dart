import 'package:flutter/material.dart';
import 'package:ui_designs/Dukaan_Premium/refactor.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PremiumPage extends StatefulWidget {
  const PremiumPage({Key? key}) : super(key: key);

  @override
  State<PremiumPage> createState() => _PremiumPageState();
}

class _PremiumPageState extends State<PremiumPage> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'PxqKgrykDac',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: true,
    ),
  );

  Widget textSame(text) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text("Ducan Premium"),
        leading: Icon(Icons.arrow_back),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100,
                      color: Colors.blue,
                      child: Column(),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100,
                      color: Colors.white,
                    ),
                  ],
                ),
                Container(
                  width: 360,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(color: Color.fromARGB(255, 218, 216, 216)),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.blue),
                            child: Icon(
                              Icons.local_mall_rounded,
                              color: Colors.white,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "dukaan",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "PREMIUM",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              )
                            ],
                          ),
                        ],
                      ),
                      Text("Get Dukaan Premium for just\n???4,999/year",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center),
                      Text(
                        "All the advanced features of scaling your\nGet Dukaan Premium for just",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textSame("Features"),
                  PremiumFeatures(
                    title: "Custom domain name",
                    subTitle:
                        "Get your own custom domain and build \nyour brand on the internet.",
                    tileIcon: Icons.language_rounded,
                  ),
                  PremiumFeatures(
                      title: "Custom domain name",
                      subTitle:
                          "Get your own custom domain and build \nyour brand on the internet.",
                      tileIcon: Icons.verified_outlined),
                  PremiumFeatures(
                    title: "Custom domain name",
                    subTitle:
                        "Get your own custom domain and build \nyour brand on the internet.",
                    tileIcon: Icons.laptop_mac_sharp,
                  ),
                  PremiumFeatures(
                    title: "Custom domain name",
                    subTitle:
                        "Get your own custom domain and build \nyour brand on the internet.",
                    tileIcon: Icons.headset_mic_outlined,
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 4,
              color: Color.fromARGB(255, 241, 240, 240),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textSame("What is Ducaan Premium?"),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: YoutubePlayer(
                        controller: _controller,
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: Colors.amber,
                        progressColors: ProgressBarColors(
                          playedColor: Colors.amber,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 4,
              color: Color.fromARGB(255, 241, 240, 240),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: textSame("Frequently asked question"),
                  ),
                  Accordion(
                    title: 'What type of businesses can use Ducaan Premium?',
                    content:
                        'Ducan coters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Ducan is the perfect platform fot you.',
                  ),
                  Accordion(
                    title: 'What is your refund policy?',
                    content:
                        'Ducan coters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Ducan is the perfect platform fot you.',
                  ),
                  Accordion(
                    title: 'What type of businesses can use Ducaan Premium?',
                    content:
                        'Ducan coters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Ducan is the perfect platform fot you.',
                  ),
                  Accordion(
                    title: 'What type of businesses can use Ducaan Premium?',
                    content:
                        'Ducan coters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Ducan is the perfect platform fot you.',
                  ),
                  Accordion(
                    title: 'What type of businesses can use Ducaan Premium?',
                    content:
                        'Ducan coters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Ducan is the perfect platform fot you.',
                  ),
                  Accordion(
                    title: 'What type of businesses can use Ducaan Premium?',
                    content:
                        'Ducan coters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Ducan is the perfect platform fot you.',
                  ),
                  
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Divider(
                thickness: 4,
                color: Color.fromARGB(255, 241, 240, 240),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0, left: 5),
                    child: textSame("Need help? Get in touch"),
                  ),
                  GridView(
                    children: [
                      PremiumContact(
                          contactIcon: Icons.messenger_outline,
                          contactText: "Live Chat"),
                      PremiumContact(
                          contactIcon: Icons.phone_outlined,
                          contactText: "Phone Call"),
                    ],
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 20,
                            childAspectRatio: 60 / 35),
                    shrinkWrap: true,
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
              color: Color.fromARGB(255, 241, 240, 240),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Select Domain",
                  style: TextStyle(color: Colors.blue, fontSize: 17,fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 200,
                    height: 55,
                    child: ElevatedButton(
                      style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))),
                      onPressed: () {},
                      child: Text(
                        "Get Premium",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
