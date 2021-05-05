import 'package:final_project/utilies/layout_untilty.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class sharePage extends StatefulWidget {
  @override
  _sharePageState createState() => _sharePageState();
}

class _sharePageState extends State<sharePage> {
  var pics = [
    "https://share.upmc.com/wp-content/uploads/2016/03/paleo-diet.jpg",
    'https://images.everydayhealth.com/images/diet-nutrition/paleo-diet/paleo-diet-sample-menu-where-to-find-recipes-722x406.jpg',
    'https://cdn-prod.medicalnewstoday.com/content/images/articles/324/324405/beef-and-pepper-stir-fry.jpg',
    'https://static.endocrineweb.com/sites/default/files/imagecache/content-wide/wysiwyg_imageupload/37373/2019/05/14/PaleoDiet_03995110_M.jpg',
    'https://media.sunbasket.com/2018/08/salmon-fennel-orange.jpg',
  ];

  var titles = [
    "Trying something new today! Paleo diet is one where you eat similarly to a caveman: fruits and certain veggies, and specific nuts, but no starches, grains, dairy or sugary foods. I had a small portion of steak w broccoli and sauteed peppers. Yum!",
    "Baked salmon with mango/zucchini salsa and sauteed kale for dinner. Wish I could have brownies and ice cream for dessert :(",
    "Beef stir fry with homemade teriyaki sauce. Took forever but definitely worth it!",
    "The Return of Matness During Covid-19",
    "Salmon again lol I could eat it everyday. But this time with charred onion and orange with a special spicy avocado sauce ;)",
  ];

  var times = [
    "Feb.23, 2021",
    " Jan.28,2021",
    " Jan.12,2021",
    "Dec.12,2020",
    "Oct.4,2020"
  ];

  var likes = [
    "5 Likes",
    "10 Likes",
    "7 Likes",
    "4 Likes",
    "5 Likes",
  ];

  var names = [
    'Jade Flagler:',
    "Max Fisher:",
    "Khalia Ahmad:",
    "Sarah Lee:",
    "Anttwan Brooks:"
  ];
  bool _isFavorited = true;
  int _favoriteCount = 1;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.camera_alt_outlined,
          size: 40,
        ),
        centerTitle: true,
        title: Text(
          "Sprout Social",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: pics.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.green,
            child: Column(
              children: <Widget>[
                Stack(
                  children: [
                    ClipRRect(
                      child: Image.network(
                        pics[index],
                        scale: 1,
                      ),
                    ),
                  ],
                ),
                new Padding(
                  padding: new EdgeInsets.all(15),
                  child: new Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: (_isFavorited
                                ? Icon(Icons.favorite)
                                : Icon(Icons.favorite_border)),
                            color: Colors.white,
                            onPressed: _toggleFavorite,
                          ),
                          Text(
                            ("$_favoriteCount"),
                            textAlign: TextAlign.start,
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.white),
                          ),
                          SizedBox(
                            width: 200,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              LayoutUtils.iconText(
                                Icon(
                                  CupertinoIcons.time,
                                  color: Colors.white,
                                ),
                                Text(
                                  (times[index]),
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      new SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(names[index],
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))
                        ],
                      ),
                      new SizedBox(
                        height: 5,
                      ),
                      Text(
                        titles[index],
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
