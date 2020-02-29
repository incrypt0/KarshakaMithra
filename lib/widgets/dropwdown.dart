import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  String abcd;
  DropDown(this.abcd);

  final String title = "DropDown Demo";

  @override
  DropDownState createState() => DropDownState();
}

class Company {
  int id;
  String name;

  Company(this.id, this.name);

  static List<Company> getCompanies() {
    return <Company>[
      Company(1, 'Irinjalakuda'),
      Company(2, 'Mala'),
      Company(3, 'Wadakanchery'),
      Company(4, 'Viyyur'),
      Company(5, 'Katoor'),
    ];
  }
}

class DropDownState extends State<DropDown> {
  //
  List<Company> _companies = Company.getCompanies();
  List<DropdownMenuItem<Company>> _dropdownMenuItems;
  Company _selectedCompany;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_companies);
    _selectedCompany = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Company>> buildDropdownMenuItems(List companies) {
    List<DropdownMenuItem<Company>> items = List();
    for (Company company in companies) {
      items.add(
        DropdownMenuItem(
          value: company,
          child: Text(company.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Company selectedCompany) {
    setState(() {
      _selectedCompany = selectedCompany;
      widget.abcd=selectedCompany.name;
      print(widget.abcd);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        
        DropdownButton(
          
          value: _selectedCompany,
          items: _dropdownMenuItems,
          onChanged: onChangeDropdownItem,
        ),
        SizedBox(
          height: 20.0,
        ),
      
      ],
    );
  }
}
