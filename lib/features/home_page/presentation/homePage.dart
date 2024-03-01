import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu_rounded),
            SizedBox(
              width: 8.0,
            ),
            Text(
              'Food Recipe',
              style: TextStyle(
                wordSpacing: 4.0,
                letterSpacing: 2.0,
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: [RecipeCard()],
      ),
    );
  }
}

// class RecipeCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
//       width: MediaQuery.of(context).size.width,
//       height: 180,
//       decoration: BoxDecoration(
//         // color: Colors.black,
//         borderRadius: BorderRadius.circular(20.0),
//         image: DecorationImage(
//           colorFilter: ColorFilter.mode(
//             Colors.black.withOpacity(0.35),
//             BlendMode.multiply,
//           ),
//           image: const NetworkImage(
//               'https://lh3.googleusercontent.com/Xu_HMtsIOajIrwyI39nzP9K21DPyxXg7AXZfJDuEDoWgh53jqnS4YHrUPs7o1pNhXXHxYO4bwhE8t860PAuCXNEVk2xIWOtrOw'),
//           fit: BoxFit.cover,
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.6),
//             offset: const Offset(
//               0.0,
//               10.0,
//             ),
//             blurRadius: 10.0,
//             spreadRadius: -6.0,
//           ),
//         ],
//       ),
//       child: Stack(
//         children: [
//           const Align(
//             alignment: Alignment.center,
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 5.0),
//               child: Text(
//                 'Burger',
//                 style: TextStyle(
//                   fontSize: 20.0,
//                 ),
//                 overflow: TextOverflow.ellipsis,
//                 maxLines: 2,
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomLeft,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   padding: const EdgeInsets.all(5),
//                   margin: const EdgeInsets.all(10),
//                   decoration: BoxDecoration(
//                     color: Colors.black.withOpacity(0.4),
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: const Row(
//                     children: [
//                       Icon(
//                         Icons.star,
//                         color: Colors.yellow,
//                         size: 18,
//                       ),
//                       SizedBox(width: 7),
//                       Text('4.3'),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   padding: const EdgeInsets.all(5),
//                   margin: const EdgeInsets.all(10),
//                   decoration: BoxDecoration(
//                     color: Colors.black.withOpacity(0.4),
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: const Row(
//                     children: [
//                       Icon(
//                         Icons.schedule,
//                         color: Colors.yellow,
//                         size: 18,
//                       ),
//                       SizedBox(width: 7),
//                       Text('90 mins'),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

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
