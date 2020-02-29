import 'package:farm_app/screens/category_page.dart';
import 'package:farm_app/services/authentication/auth.dart';
import 'package:farm_app/widgets/scroll_img.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatelessWidget {
  List<String> imageUrls = [
    'https://cdn.zeebiz.com/sites/default/files/styles/zeebiz_850x478/public/2019/06/15/91048-kcc-sbi.JPG?itok=bZiWMtoI&c=cee7454b66b071ee0e8907a16d6d9447',
    'https://static.vikaspedia.in/media/images_en/agriculture/agri-insurance/pmfby.jpg',
  ];
  List<String> logoUrls = [
    'https://image.flaticon.com/icons/svg/1340/1340539.svg',
    'https://image.flaticon.com/icons/svg/1518/1518636.svg',
    'https://image.flaticon.com/icons/svg/1340/1340394.svg',
    'https://image.flaticon.com/icons/svg/664/664112.svg',
    'https://image.flaticon.com/icons/svg/2564/2564279.svg',
    'https://image.flaticon.com/icons/svg/2631/2631411.svg',
    'https://image.flaticon.com/icons/svg/2628/2628802.svg',
    'https://image.flaticon.com/icons/svg/862/862819.svg'
  ];
  List<String> cats = [
    'ആനുകൂല്യങ്ങൾ',
    'ഇൻഷുറൻസ്',
    'ലോൺ',
    'സേവനങ്ങൾ',
    'ഉപകരണങ്ങൾ',
    'പരിശീലനങ്ങൾ',
    'പിന്തുണ',
    'വിപണി',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => CategoryScreen(),
                  ),
                );
              },
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                maxRadius: 25,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.network(logoUrls[0]),
                ),

                // radius: 25,
              ),
              title: Text(
                cats[0],
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                maxRadius: 25,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.network(logoUrls[1]),
                ),

                // radius: 25,
              ),
              title: Text(
                cats[1],
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                maxRadius: 25,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.network(logoUrls[2]),
                ),

                // radius: 25,
              ),
              title: Text(
                cats[2],
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                maxRadius: 25,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.network(logoUrls[3]),
                ),

                // radius: 25,
              ),
              title: Text(
                cats[3],
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // automaticallyImplyLeading: false,
            // leading: Icon(Icons.menu),
            // leading: Icon(Icons.select_all),
            title: Text(
              "കർഷകമിത്ര",
              style: TextStyle(fontSize: 28, fontFamily: 'Rachana'),
            ),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  AuthService().signOut();
                },
              ),
              SizedBox(width: 10),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height * .24,
              child: ListView.builder(
                itemBuilder: (ctx, index) {
                  return ScrollImg(imageUrls[index]);
                },
                itemCount: imageUrls.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width: .25, color: Colors.black),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: .9,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => CategoryScreen(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          maxRadius: 35,
                          backgroundColor: Colors.green[300],
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: SvgPicture.network(
                              logoUrls[index],
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                        FittedBox(child: Text(cats[index])),
                      ],
                    ),
                  ),
                );
              },
              childCount: 8,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width: .25, color: Colors.black),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    MdiIcons.note,
                    color: Colors.green,
                  ),
                  onTap: () {},
                  title: Text("പൂർത്തിയാക്കിയ സ്കീമുകൾ"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    MdiIcons.clock,
                    color: Colors.green,
                  ),
                  title: Text("പെന്റിങ്"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.assignment_turned_in,
                    color: Colors.green,
                  ),
                  title: Text("യോഗ്യതയുള്ള  സ്കീമുകൾ"),
                  trailing: Icon(Icons.chevron_right),
                ),
                // ListTile(title: Text("Applied"),trailing: Icon(Icons.chevron_right),),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width: .25, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
