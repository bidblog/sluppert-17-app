import 'package:flutter/material.dart';
import 'package:slupperapplive/models/sluppert_model.dart';
import 'package:slupperapplive/widgets/sluppert_card.dart';

class SluppertList extends StatefulWidget {
  List<SluppertModel> slupperter = SluppertModel.demoData();

  @override
  _SluppertListState createState() => _SluppertListState();
}

class _SluppertListState extends State<SluppertList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: widget.slupperter.length,
        itemBuilder: (context, index) => SluppertListTile(
          sluppert: widget.slupperter[index],
          onTap: () {
            setState(() {
              widget.slupperter[index].donationTotal += 100.0;
            });

            print(
                'Vores ${widget.slupperter[index].name} Sluppert har ${widget.slupperter[index].donationTotal.toString()}');
          },
        ),
      ),
    );
  }
}

class SluppertListTile extends StatelessWidget {
  final SluppertModel sluppert;
  final Function onTap;

  SluppertListTile({@required this.sluppert, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(sluppert.name),
        subtitle: Text(sluppert.donationTotal.toString()),
        leading: CircleAvatar(
          backgroundImage: AssetImage(sluppert.assetImage),
        ),
        trailing: Icon(Icons.monetization_on),
        onTap: () {
          onTap();
          print('Trykket på sluppert ${sluppert.name}');
        },
      ),
    );
  }
}
