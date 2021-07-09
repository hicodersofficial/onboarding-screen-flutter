import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int _currentIndex = 0;
  List<Widget> _pageContent;

  Widget _buildPageContent(String title, String image, String description) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          height: 300,
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            description,
            style: TextStyle(
              fontSize: 20,
              letterSpacing: .5,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    _pageContent = [
      _buildPageContent(
        "Make The World A Better Place",
        'assets/images/2.png',
        "We should use all the possible method to inspire the next generation in achieving a green and sustianable environment.",
      ),
      _buildPageContent(
        "Animals Create Balance, Ctability, & Well-being.",
        'assets/images/1.png',
        "Animals are important to human beings because they benefit us socially, personally as well as economically.",
      ),
      _buildPageContent(
        "Pollution Free Environment",
        'assets/images/3.png',
        "You can help reduce pollution just by putting that soda can in the recycling bin.",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          children: _pageContent,
          onPageChanged: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        Positioned(
            bottom: 40,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < _pageContent.length; i++)
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        color: _currentIndex == i ? Color(0xff205C31) : null,
                        padding: EdgeInsets.all(_currentIndex == i ? 10 : 8),
                        decoration: _currentIndex != i
                            ? BoxDecoration(
                                border: Border.all(
                                    color: Color(0xff488330), width: 2),
                                borderRadius: BorderRadius.circular(100),
                              )
                            : null,
                      ),
                    ),
                  )
              ],
            ))
      ],
    );
  }
}
