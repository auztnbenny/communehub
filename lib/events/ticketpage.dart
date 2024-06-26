// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class TicketData extends StatelessWidget {
//   const TicketData({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<QuerySnapshot>(
//       stream:
//           FirebaseFirestore.instance.collection('registrations').snapshots(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return CircularProgressIndicator(); // Show a loading indicator while data is being fetched
//         }
//         if (snapshot.hasError) {
//           return Text('Error: ${snapshot.error}');
//         }
//         final List<DocumentSnapshot> documents = snapshot.data!.docs;

//         if (documents.isEmpty) {
//           return Text('No data available');
//         }

//         // Assuming you want to display data from the first document in the collection
//         final data = documents.first.data() as Map<String, dynamic>;

//         final String nameOfEvent = data['nameOfEvent'] ?? '';
//         final String date = data['date'] ?? '';
//         final String userName = data['userName'] ?? '';
//         final String userEmail = data['userEmail'] ?? '';

//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Your existing ticket layout
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   width: 120.0,
//                   height: 25.0,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(30.0),
//                     border: Border.all(width: 1.0, color: Colors.green),
//                   ),
//                   child: const Center(
//                     child: Text(
//                       'Business Class',
//                       style: TextStyle(color: Colors.green),
//                     ),
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       'LHR',
//                       style: TextStyle(
//                           color: Colors.black, fontWeight: FontWeight.bold),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 8.0),
//                       child: Icon(
//                         Icons.flight_takeoff,
//                         color: Colors.pink,
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 8.0),
//                       child: Text(
//                         'ISL',
//                         style: TextStyle(
//                             color: Colors.black, fontWeight: FontWeight.bold),
//                       ),
//                     )
//                   ],
//                 )
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 20.0),
//               child: Text(
//                 'Flight Ticket',
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 25.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   ticketDetailsWidget('Passengers', userName, 'Date', date),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 12.0, right: 52.0),
//                     child: ticketDetailsWidget(
//                         'Flight', '76836A45', 'Gate', '66B'),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 12.0, right: 53.0),
//                     child:
//                         ticketDetailsWidget('Class', 'Business', 'Seat', '21B'),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding:
//                   const EdgeInsets.only(top: 80.0, left: 30.0, right: 30.0),
//               child: Container(
//                 width: 250.0,
//                 height: 60.0,
//                 decoration: const BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage('assets/barcode.png'),
//                         fit: BoxFit.cover)),
//               ),
//             ),
//             Padding(
//               padding:
//                   const EdgeInsets.only(top: 10.0, left: 75.0, right: 75.0),
//               child: Text(
//                 '0000 +9230 2884 5163',
//                 style: TextStyle(
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 30),
//             const Text('         Developer: instagram.com/DholaSain')
//           ],
//         );
//       },
//     );
//   }

//   Widget ticketDetailsWidget(String firstTitle, String firstDesc,
//       String secondTitle, String secondDesc) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 12.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Text(
//                 firstTitle,
//                 style: const TextStyle(color: Colors.grey),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 4.0),
//                 child: Text(
//                   firstDesc,
//                   style: const TextStyle(color: Colors.black),
//                 ),
//               )
//             ],
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(right: 20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 secondTitle,
//                 style: const TextStyle(color: Colors.grey),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 4.0),
//                 child: Text(
//                   secondDesc,
//                   style: const TextStyle(color: Colors.black),
//                 ),
//               )
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
