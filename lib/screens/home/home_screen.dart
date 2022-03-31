import 'package:flutter/material.dart';
import 'package:mis_homework/models/models.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mis_homework/widgets/section_title.dart';
import '../../widgets/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = '/home';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'ProDuck'),
      bottomNavigationBar: CustomNavBar(),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
            ),
            items:Category.categories
                .map((category) => HeroCarouselCard(category: category))
                .toList(),
          ),
          const SectionTitle(title: 'All categories'),
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: 150,
                child: Image.network(
                  Product.products[0].imageUrl,
                  fit: BoxFit.cover,
                ),
              )
            ],
          )
        ],
      )
    );
  }
}

