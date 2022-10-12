library vanke_boxing_images;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class VankeBoxingImages extends StatefulWidget {
  const VankeBoxingImages({super.key});

  @override
  State<VankeBoxingImages> createState() => _VankeBoxingImagesState();
}

class _VankeBoxingImagesState extends State<VankeBoxingImages> {
  List<String> imgUrls = [
    "https://vtwinning.com/static/map_cube.70ef3d34.jpg",
    "https://vtwinning.com/static/movie_bg2.b14bcf79.jpg",
    "https://vtwinning.com/static/map_cube.70ef3d34.jpg",
    "https://vtwinning.com/static/movie_bg2.b14bcf79.jpg",
    "https://vtwinning.com/static/map_cube.70ef3d34.jpg",
    "https://vtwinning.com/static/movie_bg2.b14bcf79.jpg",
    "https://vtwinning.com/static/map_cube.70ef3d34.jpg",
    "https://vtwinning.com/static/movie_bg2.b14bcf79.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: CarouselSlider.builder(
        itemCount: imgUrls.length,
        itemBuilder: (context, index, pageViewIndex) {
          return Container(
            child: Image.network(imgUrls.elementAt(index)),
          );
        },
        options: CarouselOptions(autoPlay: true),
      ),
    );
  }
}
