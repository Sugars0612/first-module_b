import 'package:flutter/material.dart';
import 'package:module_b_first/features/home/models/Banner.dart';

class FoodBanner extends StatefulWidget {
  final List<BannerItem> bannerList;

  const FoodBanner({super.key, required this.bannerList});

  @override
  State<FoodBanner> createState() => _FoodBannerState();
}

class _FoodBannerState extends State<FoodBanner> {
  PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: double.infinity,
        child: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                _currentIndex = index;
              },
              itemBuilder: (BuildContext context, int index) {
                return Image.network(widget.bannerList[index].imagePathName,
                    fit: BoxFit.cover);
              },
              itemCount: widget.bannerList.length,
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(widget.bannerList.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        _pageController.animateToPage(index,
                            duration: Duration(seconds: 1),
                            curve: Curves.linear);
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      child: Container(
                        width: 5,
                        height: 5,
                        margin: EdgeInsets.symmetric(horizontal: 2.5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: (_currentIndex == index) ? Colors.grey : Colors.white),
                      ),
                    );
                  })),
            )
          ],
        ));
  }
}
