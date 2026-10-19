import 'package:flutter/material.dart';
import 'package:module_b_first/features/home/models/Banner.dart';
import 'package:module_b_first/features/home/services/HomeService.dart';
import 'package:module_b_first/features/home/widgets/FoodBanner.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeService service = HomeService();
  List<BannerItem> banners = [];
  @override

  void initState() {
    loadBanners();
    super.initState();
  }

  Future<void> loadBanners() async {
    final data = await service.getBanner();

    setState(() {
      banners = data;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.only(top: 10, left: 15, right: 15),
      child: CustomScrollView(
        slivers: [
          // 轮播图模块
          SliverToBoxAdapter(
            child: FoodBanner(bannerList: banners)
          )
        ],
      ),
    )));
  }
}
