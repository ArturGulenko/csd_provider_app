import 'package:flutter/material.dart';

import 'contacts.dart';

class ContactsList extends StatefulWidget {
  const ContactsList({super.key});

  @override
  State<ContactsList> createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.black)),
        child: const Column(
          children: [
            Contacts(
              title: 'Total clients',
              type: 'clients',
            ),
            Contacts(
              title: 'Total providers',
              type: 'providers',
            ),
            Contacts(
              title: 'Total schedulers',
              type: 'schedulers',
            ),
          ],
        ));
  }
}
