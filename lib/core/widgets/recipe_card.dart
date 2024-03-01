import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.4), BlendMode.multiply),
          fit: BoxFit.cover,
          image: const NetworkImage(
              'https://lh3.googleusercontent.com/Xu_HMtsIOajIrwyI39nzP9K21DPyxXg7AXZfJDuEDoWgh53jqnS4YHrUPs7o1pNhXXHxYO4bwhE8t860PAuCXNEVk2xIWOtrOw'),
        ),
        boxShadow: [
          BoxShadow(
            spreadRadius: -6.0,
            blurRadius: 10.0,
            color: Colors.black.withOpacity(0.6),
            offset: const Offset(0, 10),
          )
        ],
      ),
      child: Align(
          child: Stack(
        children: [
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Burger',
              style: TextStyle(fontSize: 24.0, color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 1),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: const Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        '4.3',
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 1),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: const Row(
                    children: [
                      Icon(Icons.schedule, color: Colors.yellow),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        '30 mins',
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
