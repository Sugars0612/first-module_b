import 'package:flutter/material.dart';
import 'package:module_b_first/features/discover/models/ChefItem.dart';
import 'package:module_b_first/features/discover/services/ChefService.dart';
import 'package:module_b_first/features/discover/widgets/ChefCard.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  final ChefService chefService = ChefService();
  List<ChefItem> chefs = [];

  @override
  void initState() {
    // TODO: implement initState
    loadChefs();
    super.initState();
  }

  void loadChefs() async {
    final data = await chefService.getChefs();

    setState(() {
      chefs = data;
    });
    // print(data);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Chef",
          style: TextStyle(color: Colors.amber),
        )),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: SafeArea(
            child: Container(
                height: 600,
                child: ListView.separated(              scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Container(
                          // padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 450,
                          width: 320,
                          // color: Colors.white,
                          child: ChefCard(chefItem: chefs[index]),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 20);
                    },
                    itemCount: 3)
            )
        ),
      )
    );
  }
}
