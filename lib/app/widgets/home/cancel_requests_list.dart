import 'package:flutter/material.dart';

import 'cancel_requests.dart';

class CancelRequestsList extends StatefulWidget {
  const CancelRequestsList({super.key});

  @override
  State<CancelRequestsList> createState() => _CancelRequestsListState();
}

class _CancelRequestsListState extends State<CancelRequestsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.black)),
      child: const Column(
        children: [
          CancelRequests(
            title: 'Total cancel requests',
            status: '',
            color: Colors.black,
          ),
          CancelRequests(
            title: 'Pending',
            status: 'pending',
            color: Colors.blueAccent,
          ),
          CancelRequests(
            title: 'Approved',
            status: 'approved',
            color: Colors.greenAccent,
          ),
          CancelRequests(
            title: 'Rejected',
            status: 'rejected',
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
