import 'package:csd_provider_app/app/config/colors.dart';
import 'package:csd_provider_app/app/repository/global_data.dart';
import 'package:flutter/material.dart';

import '../logout_button.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: kBorderColor,
            radius: 20,
            child: Text(
              GlobalData.decodedToken['given_name']
                      .substring(0, 1)
                      .toUpperCase() +
                  GlobalData.decodedToken['family_name']
                      .substring(0, 1)
                      .toUpperCase(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(GlobalData.decodedToken['name'],
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      )),
              Text(
                GlobalData.decodedToken['email'],
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
