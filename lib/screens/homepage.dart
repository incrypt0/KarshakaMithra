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
    'https://image.flaticon.com/icons/svg/2628/2628802.svg',
    'https://image.flaticon.com/icons/svg/1518/1518636.svg',
    'https://image.flaticon.com/icons/svg/1340/1340394.svg',
    'https://image.flaticon.com/icons/svg/664/664112.svg',
    'https://image.flaticon.com/icons/svg/2564/2564279.svg',
    'https://image.flaticon.com/icons/svg/1340/1340539.svg',
    
    'https://image.flaticon.com/icons/png/128/1600/1600196.png',
    
    'https://image.flaticon.com/icons/svg/862/862819.svg'
  ];
  List<String> cats = [
    'service',
    'Insurance',
    'Loans',
    'Services',
    'Equipments',
    'Grants',
    
    'Support',
    'market',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            leading: Icon(Icons.menu),
            // leading: Icon(Icons.select_all),
            title: Text(
              "Agrico",
              style: TextStyle(fontSize: 28),
            ),
            centerTitle: true,
            actions: <Widget>[
              Icon(Icons.notifications),
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
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
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
                      Text(cats[index]),
                    ],
                  ),
                );
              },
              childCount: 8,
            ),
          )
        ],
      ),
    );
  }
}
