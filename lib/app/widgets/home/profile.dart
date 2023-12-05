import 'package:csd_provider_app/app/config/colors.dart';
import 'package:csd_provider_app/app/providers/state_provider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/User.dart';
import '../logout_button.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {

  @override
  Widget build(BuildContext context) {
  User? user = Provider.of<StateProvider>(context,listen: false).user;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: kBorderColor,
            radius: 20,
            child: Text(
              user!.data!.firstName!
                      .substring(0, 1)
                      .toUpperCase() +
                  user.data!.lastName!
                  .substring(0, 1)
                  .toUpperCase()
                  ,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user.data!.firstName!,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      )),
              Text(
                user.data!.email!,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          logoutButton(context),
        ],
      ),
    );
  }
}
