import 'package:flutter/material.dart';

import '../../services/api_requests/get_modify_requests.dart';

class ModifyRequests extends StatefulWidget {
  final String title;
  final String status;
  final Color color;

  const ModifyRequests(
      {super.key,
        required this.title,
        required this.status,
        required this.color});

  @override
  State<ModifyRequests> createState() => _ModifyRequestsState();
}

class _ModifyRequestsState extends State<ModifyRequests> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
      child: FutureBuilder<dynamic>(
          future: getModifyRequest(
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
