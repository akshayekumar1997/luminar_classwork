import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class CarousalContainer extends StatelessWidget {
   CarousalContainer({super.key,required this.image});
String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 180,
      width: 180,
     
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(image)),
        borderRadius: const BorderRadius.all(Radius.circular(20))
      ),
      
    );
  }
}
class Carousal extends StatelessWidget {
  const Carousal({super.key});

  @override
  Widget build(BuildContext context) {
    return 
CarouselSlider(
   items: [
    CarousalContainer(image: "https://i.scdn.co/image/ab67706c0000da84c82624b873d6a3392b0ab9cc"),
     CarousalContainer(image: "https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/b9/de/d7/b9ded714-598a-4566-dfe8-2ecd1d8958f4/artwork.jpg/1200x1200bf-60.jpg"),
      CarousalContainer(image: "https://i.scdn.co/image/ab67616d0000b27392608e0db345ec175d710021"),
       CarousalContainer(image: "https://i.scdn.co/image/ab67706c0000da84f909ff6a3c23213dd0477438")
   ],
   options: CarouselOptions(
     
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: const Duration(seconds: 3),
      autoPlayAnimationDuration: const Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
     viewportFraction: .5,
      scrollDirection: Axis.horizontal,
   )
 );
  }
}