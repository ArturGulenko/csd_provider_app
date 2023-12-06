import 'package:flutter/material.dart';

import '../../services/api_requests/get_cancel_requests.dart';

class CancelRequests extends StatefulWidget {
  final String title;
  final String status;
  final Color color;

  const CancelRequests(
      {super.key,
      required this.title,
      required this.status,
      required this.color});

  @override
  State<CancelRequests> createState() => _CancelRequestsState();
}

class _CancelRequestsState extends State<CancelRequests> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
      child: FutureBuilder<dynamic>(
          future: getCancelRequest(
            context,
            widget.status,
          ),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: SizedBox(
                    width: 15,
                    height: 15,
                    child: CircularProgressIndicator(
                      strokeWidth: 1.5,
                    )),
              );
            } else {
              if (snapshot.hasData) {
                int appointments = snapshot.data!;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        widget.title,
                        style: TextStyle(
                          color: widget.color,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      appointments.toString(),
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              } else {
                return const Center(
                  child: Text('Error'),
                );
              }
            }
          }),
    );
  }
}
