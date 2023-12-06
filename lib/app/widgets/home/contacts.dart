import 'package:csd_provider_app/app/services/api_requests/get_shedulers.dart';
import 'package:flutter/material.dart';

import '../../services/api_requests/get_clients.dart';
import '../../services/api_requests/get_providers.dart';

class Contacts extends StatefulWidget {
  final String title;
  final String type;


  const Contacts(
      {super.key,
        required this.title,
        required this.type,
      });

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
      child: FutureBuilder<dynamic>(
          future: widget.type == 'clients' ? getClientsRequest(context, true) :widget.type == 'providers'? getProvidersRequest(context,true): getSchedulersRequest(context),
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
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      appointments.toString(),
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                );
              } else {
                return const Center(
                  child: Text('No data or error occurred'),
                );
              }
            }
          }),
    );
  }
}
