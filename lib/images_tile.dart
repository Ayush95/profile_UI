import 'package:flutter/material.dart';
import 'package:profile_app/images.dart';

class ImagesTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: 3,
          child: Container(
            height: 65,
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    Icons.grid_on,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.save_alt,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Wrap(
          spacing: 1.5,
          runSpacing: 1,
          children: List.generate(imagePath.length, (index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                width: (MediaQuery.of(context).size.width - 3) / 3,
                height: (MediaQuery.of(context).size.height - 170) / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
