import 'package:flutter/material.dart';
import 'package:module_b_first/features/home/models/Banner.dart';
import 'package:module_b_first/features/home/models/CategoriesItem.dart';
import 'package:module_b_first/features/home/models/FoodItem.dart';
import 'package:module_b_first/features/home/services/HomeService.dart';
import 'package:module_b_first/features/home/widgets/CardTitle.dart';
import 'package:module_b_first/features/home/widgets/CategoriesCard.dart';
import 'package:module_b_first/features/home/widgets/FoodBanner.dart';
import 'package:module_b_first/features/home/widgets/FoodCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeService service = HomeService();
  List<BannerItem> banners = [];
  List<CategoriesItem> categories = [];
  List<FoodItem> foods = [];
  int _currentIndex = 1;

  @override
  void initState() {
    loadBanners();
    loadCategories();
    loadFoods();
    super.initState();
  }

  Future<void> loadBanners() async {
    final banners = await service.getBanner();

    setState(() {
      this.banners = banners;
    });
  }

  Future<void> loadCategories() async {
    final categories = await service.getCategories();

    setState(() {
      this.categories = categories;
    });
  }

  Future<void> loadFoods() async {
    final foods = await service.getFoods();

    setState(() {
      this.foods = foods;
    });
  }

  List<Widget> buildCategoryWidgets() {

    // children: [
    //   Expanded(flex: 1, child: CategoriesCard()),
    //   SizedBox(width: 20),
    //   Expanded(flex: 1, child: CategoriesCard()),
    //   SizedBox(width: 20),
    //   Expanded(flex: 1, child: CategoriesCard()),
    // ],

    final List<Widget> widgets = [];

    for (int i=0; i < categories.length; i++) {
      widgets.add(
        Expanded(
            child: CategoriesCard(
              categoriesInfo: categories[i],
            )
        )
      );

      if (i != categories.length - 1) {
        widgets.add(
          const SizedBox(width: 20)
        );
      }

    }

    return widgets;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.only(top: 10, left: 15, right: 15),
      child: CustomScrollView(
        slivers: [
          // 轮播图模块
          SliverToBoxAdapter(child: FoodBanner(bannerList: banners)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 35,
              width: double.infinity,
              // color: Colors.green,
              child: CardTitle(text: "Main  categories"),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
                height: 150,
                width: double.infinity,
                // color: Colors.white,
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: buildCategoryWidgets(),
                )
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 30,),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 35,
              width: double.infinity,
              // color: Colors.green,
              child: CardTitle(text: "Popular  food"),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 300,
              padding: EdgeInsets.only(left: 5),
              child: ListView.separated(
                  itemCount: foods.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 300,
                      // height: 600,
                      color: Colors.white,
                      child: FoodCard(
                        foodItem: foods[index],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 50,
                    );
                  }
              ),
            )
          )
        ],
      ),
    )),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: MaterialStatePropertyAll(
            TextStyle(
              fontSize: 15,
              color: Colors.grey
            )
          )
        ),
        child: NavigationBar(
          indicatorColor: Colors.white,
          backgroundColor: Colors.white,
          selectedIndex: _currentIndex,
          onDestinationSelected: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          destinations: [
            NavigationDestination
              (icon: Icon(Icons.language,
                color: Colors.grey), label: _currentIndex == 0 ? "" : "discover"
            ),
            NavigationDestination(
                icon: Icon(Icons.home,
                    color: Colors.grey), label: _currentIndex == 1 ? "" : "home"
            )
          ],
        ),
      )

    );
  }
}
