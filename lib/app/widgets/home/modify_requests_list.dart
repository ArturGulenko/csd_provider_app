import 'package:flutter/material.dart';

import 'modify_request.dart';

class ModifyRequestsList extends StatefulWidget {
  const ModifyRequestsList({super.key});

  @override
  State<ModifyRequestsList> createState() => _ModifyRequestsListState();
}

class _ModifyRequestsListState extends State<ModifyRequestsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.black)),
      child: const Column(
        children: [
          ModifyRequests(
            title: 'Total modify requests',
            status: '',
            color: Colors.black,
          ),
          ModifyRequests(
            title: 'Pending',
            status: 'pending',
            color: Colors.blueAccent,
          ),
          ModifyRequests(
            title: 'Approved',
            status: 'approved',
            color: Colors.greenAccent,
          ),
          ModifyRequests(
            title: 'Rejected',
            status: 'rejected',
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
