import 'package:farm_app/screens/subcat.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grants"),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                return SubCategory('Central Sector');
              }));
            },
            leading: CircleAvatar(),
            title: Text("AKVY Central Sector"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("State Sector"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Area Expansion"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Crop Wise"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Percentage Subsidies"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Vegetables"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Soil Health Wise"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Crop Health Wise"),
          ),
        ],
      ),
    );
  }
}
