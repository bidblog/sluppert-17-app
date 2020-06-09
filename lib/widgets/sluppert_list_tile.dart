import 'package:flutter/material.dart';
import 'package:slupperapplive/models/sluppert_model.dart';
import 'package:slupperapplive/widgets/donation_button.dart';
import 'package:provider/provider.dart';
import 'package:slupperapplive/models/sluppert_data.dart';

class SluppertListTile extends StatelessWidget {
  final int sluppertIndex;

  SluppertListTile({@required this.sluppertIndex});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(Provider.of<SluppertData>(context)
            .sluppertAtIndex(sluppertIndex)
            .name),
        subtitle: Text(Provider.of<SluppertData>(context)
            .sluppertAtIndex(sluppertIndex)
            .donationTotal
            .toString()),
        leading: CircleAvatar(
          backgroundImage: AssetImage(Provider.of<SluppertData>(context)
              .sluppertAtIndex(sluppertIndex)
              .assetImage),
        ),
        trailing: DonationButton(
          onTap: () {
            // Vi skal have fat i Provideren
            // todo: Vi får en fejl hvis ikke vi skriver listen false her fordi donation knkappen ikke bruger provider.
            Provider.of<SluppertData>(context, listen: false).receiveDonation(
              donation: 100.0,
              atIndex: sluppertIndex,
            );
            print('TODO: Donation');
          },
        ),
      ),
    );
  }
}
