// import 'package:flutter/material.dart';

// class SocialRankingPage extends StatelessWidget {
//   final List<RankingUser> topUsers = [
//     RankingUser('Sarah K.', 2890, 'assets/sarah.jpg', 2),
//     RankingUser('John D.', 3456, 'assets/john.jpg', 1),
//     RankingUser('Mike R.', 2654, 'assets/mike.jpg', 3),
//   ];

//   final List<RankingUser> otherUsers = [
//     RankingUser('Emma W.', 2345, 'assets/emma.jpg', 4),
//     RankingUser('Alex M.', 2100, 'assets/alex.jpg', 5),
//     RankingUser('Lisa P.', 1890, 'assets/lisa.jpg', 6),
//     RankingUser('Tom H.', 1654, 'assets/tom.jpg', 7),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Container(
//               padding: EdgeInsets.all(16),
//               child: Text(
//                 'Social Ranking',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//             ),
//             _buildTopThree(),
//             Expanded(
//               child: _buildRankingList(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildTopThree() {
//     return Container(
//       height: 160,
//       padding: EdgeInsets.symmetric(horizontal: 16),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           _buildPodiumItem(topUsers[0], 100), // 2nd place
//           _buildPodiumItem(topUsers[1], 120), // 1st place
//           _buildPodiumItem(topUsers[2], 80),  // 3rd place
//         ],
//       ),
//     );
//   }

//   Widget _buildPodiumItem(RankingUser user, double height) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.purple.shade200, width: 2),
//             borderRadius: BorderRadius.circular(12),
//           ),
//           padding: EdgeInsets.all(8),
//           child: Column(
//             children: [
//               CircleAvatar(
//                 backgroundImage: AssetImage(user.imageUrl),
//                 radius: 20,
//               ),
//               SizedBox(height: 4),
//               Text(user.name, style: TextStyle(fontWeight: FontWeight.bold)),
//               Text('${user.points} pts', 
//                 style: TextStyle(color: Colors.blue, fontSize: 12)),
//             ],
//           ),
//         ),
//         Container(
//           height: height,
//           width: 80,
//           margin: EdgeInsets.only(top: 8),
//           decoration: BoxDecoration(
//             color: Colors.purple.shade100,
//             borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildRankingList() {
//     return ListView.builder(
//       padding: EdgeInsets.all(16),
//       itemCount: otherUsers.length,
//       itemBuilder: (context, index) {
//         final user = otherUsers[index];
//         return Container(
//           margin: EdgeInsets.only(bottom: 12),
//           child: Row(
//             children: [
//               Text('${user.rank}', 
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//               SizedBox(width: 12),
//               CircleAvatar(
//                 backgroundImage: AssetImage(user.imageUrl),
//                 radius: 20,
//               ),
//               SizedBox(width: 12),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(user.name, 
//                     style: TextStyle(fontWeight: FontWeight.bold)),
//                   Text('${user.points} points', 
//                     style: TextStyle(color: Colors.grey)),
//                 ],
//               ),
//               Spacer(),
//               _getRankIcon(user.rank),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   Widget _getRankIcon(int rank) {
//     IconData icon;
//     Color color;
//     switch (rank) {
//       case 4:
//         icon = Icons.star;
//         color = Colors.amber;
//         break;
//       case 5:
//         icon = Icons.military_tech;
//         color = Colors.grey;
//         break;
//       case 6:
//         icon = Icons.emoji_events;
//         color = Colors.blue;
//         break;
//       default:
//         icon = Icons.stars;
//         color = Colors.purple;
//     }
//     return Icon(icon, color: color);
//   }
// }

// class RankingUser {
//   final String name;
//   final int points;
//   final String imageUrl;
//   final int rank;

//   RankingUser(this.name, this.points, this.imageUrl, this.rank);
// }


// import 'package:flutter/material.dart';

// class SocialRankingPage extends StatelessWidget {
//   final List<RankingUser> topUsers = [
//     RankingUser('Sarah K.', 2890, 'assets/sarah.jpg', 2),
//     RankingUser('John D.', 3456, 'assets/john.jpg', 1),
//     RankingUser('Mike R.', 2654, 'assets/mike.jpg', 3),
//   ];

//   final List<RankingUser> otherUsers = [
//     RankingUser('Emma W.', 2345, 'assets/emma.jpg', 4),
//     RankingUser('Alex M.', 2100, 'assets/alex.jpg', 5),
//     RankingUser('Lisa P.', 1890, 'assets/lisa.jpg', 6),
//     RankingUser('Tom H.', 1654, 'assets/tom.jpg', 7),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 16),
//               child: Text(
//                 'Social Ranking',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//             ),
//             _buildTopThree(),
//             Expanded(
//               child: _buildRankingList(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildTopThree() {
//     return Container(
//       height: 180,
//       padding: EdgeInsets.symmetric(horizontal: 16),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           _buildPodiumItem(topUsers[0], 90), // 2nd place
//           _buildPodiumItem(topUsers[1], 110), // 1st place (Tallest)
//           _buildPodiumItem(topUsers[2], 80), // 3rd place
//         ],
//       ),
//     );
//   }

//   Widget _buildPodiumItem(RankingUser user, double height) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.purple.shade200, width: 2),
//             borderRadius: BorderRadius.circular(12),
//             color: Colors.white, // Ensuring a clean look
//           ),
//           padding: EdgeInsets.all(8),
//           width: 85,
//           child: Column(
//             children: [
//               CircleAvatar(
//                 backgroundImage: AssetImage(user.imageUrl),
//                 radius: 22,
//               ),
//               SizedBox(height: 4),
//               Text(user.name,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
//               Text('${user.points} pts',
//                   style: TextStyle(color: Colors.blue, fontSize: 12)),
//             ],
//           ),
//         ),
//         Container(
//           height: height,
//           width: 85,
//           margin: EdgeInsets.only(top: 4),
//           decoration: BoxDecoration(
//             color: Colors.purple.shade100,
//             borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildRankingList() {
//     return ListView.builder(
//       padding: EdgeInsets.all(16),
//       itemCount: otherUsers.length,
//       itemBuilder: (context, index) {
//         final user = otherUsers[index];
//         return Container(
//           padding: EdgeInsets.symmetric(vertical: 8),
//           decoration: BoxDecoration(
//             border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
//           ),
//           child: Row(
//             children: [
//               SizedBox(
//                 width: 24,
//                 child: Text('${user.rank}',
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//               ),
//               SizedBox(width: 12),
//               CircleAvatar(
//                 backgroundImage: AssetImage(user.imageUrl),
//                 radius: 22,
//               ),
//               SizedBox(width: 12),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(user.name,
//                       style: TextStyle(fontWeight: FontWeight.bold)),
//                   Text('${user.points} points',
//                       style: TextStyle(color: Colors.grey)),
//                 ],
//               ),
//               Spacer(),
//               _getRankIcon(user.rank),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   Widget _getRankIcon(int rank) {
//     IconData icon;
//     Color color;
//     switch (rank) {
//       case 4:
//         icon = Icons.star;
//         color = Colors.amber;
//         break;
//       case 5:
//         icon = Icons.military_tech;
//         color = Colors.grey;
//         break;
//       case 6:
//         icon = Icons.emoji_events;
//         color = Colors.blue;
//         break;
//       default:
//         icon = Icons.stars;
//         color = Colors.purple;
//     }
//     return Icon(icon, color: color);
//   }
// }

// class RankingUser {
//   final String name;
//   final int points;
//   final String imageUrl;
//   final int rank;

//   RankingUser(this.name, this.points, this.imageUrl, this.rank);
// }



import 'package:flutter/material.dart';

class SocialRankingPage extends StatelessWidget {
  final List<RankingUser> topUsers = [
    RankingUser('Sarah K.', 2890, 'assets/sarah.jpg', 2),
    RankingUser('John D.', 3456, 'assets/john.jpg', 1),
    RankingUser('Mike R.', 2654, 'assets/mike.jpg', 3),
  ];

  final List<RankingUser> otherUsers = [
    RankingUser('Emma W.', 2345, 'assets/emma.jpg', 4),
    RankingUser('Alex M.', 2100, 'assets/alex.jpg', 5),
    RankingUser('Lisa P.', 1890, 'assets/lisa.jpg', 6),
    RankingUser('Tom H.', 1654, 'assets/tom.jpg', 7),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Social Ranking',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 30),
            _buildTopThree(),
            const SizedBox(height: 20),
            Expanded(child: _buildRankingList()),
          ],
        ),
      ),
    );
  }

  Widget _buildTopThree() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _buildPodiumItem(topUsers[0], 140), // 2nd
          _buildPodiumItem(topUsers[1], 160), // 1st
          _buildPodiumItem(topUsers[2], 120), // 3rd
        ],
      ),
    );
  }

  Widget _buildPodiumItem(RankingUser user, double height) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 100,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.purple.shade200),
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(user.imageUrl),
                radius: 28,
              ),
              const SizedBox(height: 8),
              Text(
                user.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                '${user.points} pts',
                style: TextStyle(
                  color: Colors.blue.shade400,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: height,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.purple.shade100,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
          ),
        ),
      ],
    );
  }

  Widget _buildRankingList() {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: otherUsers.length,
      separatorBuilder: (context, index) => const Divider(height: 32),
      itemBuilder: (context, index) {
        final user = otherUsers[index];
        return Row(
          children: [
            SizedBox(
              width: 30,
              child: Text(
                '${user.rank}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 16),
            CircleAvatar(
              backgroundImage: AssetImage(user.imageUrl),
              radius: 24,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '${user.points} points',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            _getRankIcon(user.rank),
          ],
        );
      },
    );
  }

  Widget _getRankIcon(int rank) {
    IconData icon;
    Color color;
    switch (rank) {
      case 4:
        icon = Icons.star;
        color = Colors.amber;
        break;
      case 5:
        icon = Icons.military_tech;
        color = Colors.grey;
        break;
      case 6:
        icon = Icons.emoji_events;
        color = Colors.blue;
        break;
      default:
        icon = Icons.stars;
        color = Colors.purple;
    }
    return Icon(icon, color: color, size: 28);
  }
}

class RankingUser {
  final String name;
  final int points;
  final String imageUrl;
  final int rank;

  RankingUser(this.name, this.points, this.imageUrl, this.rank);
}