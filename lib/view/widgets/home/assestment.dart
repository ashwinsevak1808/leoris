// import 'package:flutter/material.dart';
// import 'package:leories/view/utils/colors.dart';
// import 'package:leories/view/utils/theme.dart';
// import 'package:leories/view/widgets/global/text_input.dart';


// class SEAddPost extends StatefulWidget {
//   SEAddPost({super.key});

//   @override
//   State<SEAddPost> createState() => _SEAddPostState();
// }

// class _SEAddPostState extends State<SEAddPost> {
//   final TextEditingController _writeSomething = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
//       decoration: const BoxDecoration(
//         boxShadow:  [
//         BoxShadow(
//           blurRadius: 5,
//           color: Color(0x162D3A21),
//           offset: Offset(0, 3),
//         )
//       ], color: Colors.white,
//       //  borderRadius: BorderRadius.circular(12),
//        ),
//       width: double.infinity,
//       // height: 100,
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(12),
//             child: Row(children: [
//               const CircleAvatar(
//                 radius: 25,
//                 backgroundImage: AssetImage('assets/images/avatar.png'),
//               ),
//               Flexible(
//                   child: SETextInput(
//                       controller: _writeSomething,
//                       label: 'Write Something...',
//                       textInputType: TextInputType.text,
//                       hintText: 'Write Something...')),
//             ]),
//           ),
//           const Divider(
//             height: 12,
//             thickness: 2,
//             color: SEColors.background,
//           ),
//           Padding(
//             padding: const EdgeInsets.fromLTRB(12,0,12,4),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     IconButton(
//                         onPressed: () {},
//                         icon: const Icon(
//                           Icons.image_outlined,
//                           color: SEColors.text_grey,
//                         )),
//                     IconButton(
//                         onPressed: () {},
//                         icon: const Icon(
//                           Icons.camera_outlined,
//                           color: SEColors.text_grey,
//                         )),
//                     IconButton(
//                         onPressed: () {},
//                         icon: const Icon(
//                           Icons.map_outlined,
//                           color: SEColors.text_grey,
//                         )),
//                     IconButton(
//                         onPressed: () {},
//                         icon: const Icon(
//                           Icons.emoji_emotions_outlined,
//                           color: SEColors.text_grey,
//                         ))
//                   ],
//                 ),
//                 SizedBox(
//                   width: 90,
//                   height: 40,
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     style:
//                         const ButtonStyle(elevation: MaterialStatePropertyAll(0), backgroundColor: MaterialStatePropertyAll(SEColors.primary)),
//                     child:
//                         Text('Post', style: MainTheme.lightTheme.textTheme.bodySmall),
//                   ),
//                 ),
               
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
