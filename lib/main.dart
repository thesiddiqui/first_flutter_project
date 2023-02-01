import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget {
  HomeApp({Key? key}) : super(key: key);

  var myItems = [
    {"img": "https://wallpaperaccess.com/full/3301504.jpg",
      "title": "Naruto"
    },
    {
      "img": "https://wallpaper-house.com/data/out/8/wallpaper2you_278072.jpg",
      "title": "Ichigo"
    },
    {
      "img": "https://images3.alphacoders.com/228/228205.jpg",
      "title": "KIllua"
    },
    {
      "img":
          "https://w0.peakpx.com/wallpaper/760/261/HD-wallpaper-demon-slayer-nezuko-kamado-anime-girl-art-16-9-widescreen-background-24963-demon-slayer-1600x900.jpg",
      "title": "Nezuko"
    },
    {
      "img":
          "https://i.pinimg.com/originals/b1/79/3d/b1793db39ee2d4bc2aeed2bb0c5e0405.jpg",
      "title": "Eren"
    },
    {"img": "https://images8.alphacoders.com/542/542198.png", "title": "Akame"},
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRolvx8C-m5IdNBy4MzI5S5f9bZ6C7n1CKu6iR4ZY6xtxSCnJVPeaB1hObv0V26ePzKCaw&usqp=CAU",
      "title": "Jinx"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeRTEAdMU8w07fSMCNw6nI2vcN30BecCyI5694S8eqX0_YAmxpYNGp6L7eCaZDlJHhacI&usqp=CAU",
      "title": "Lucy"
    },
    {"img": "https://images8.alphacoders.com/542/542198.png", "title": "Akame"},{"img": "https://wallpaperaccess.com/full/3301504.jpg",
      "title": "Naruto"
    },
    {
      "img": "https://wallpaper-house.com/data/out/8/wallpaper2you_278072.jpg",
      "title": "Ichigo"
    },
    {
      "img": "https://images3.alphacoders.com/228/228205.jpg",
      "title": "KIllua"
    },
    {
      "img":
          "https://w0.peakpx.com/wallpaper/760/261/HD-wallpaper-demon-slayer-nezuko-kamado-anime-girl-art-16-9-widescreen-background-24963-demon-slayer-1600x900.jpg",
      "title": "Nezuko"
    },
    {
      "img":
          "https://i.pinimg.com/originals/b1/79/3d/b1793db39ee2d4bc2aeed2bb0c5e0405.jpg",
      "title": "Eren"
    },
    {"img": "https://images8.alphacoders.com/542/542198.png", "title": "Akame"},
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRolvx8C-m5IdNBy4MzI5S5f9bZ6C7n1CKu6iR4ZY6xtxSCnJVPeaB1hObv0V26ePzKCaw&usqp=CAU",
      "title": "Jinx"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeRTEAdMU8w07fSMCNw6nI2vcN30BecCyI5694S8eqX0_YAmxpYNGp6L7eCaZDlJHhacI&usqp=CAU",
      "title": "Lucy"
    },
    {"img": "https://images8.alphacoders.com/542/542198.png", "title": "Akame"},
  ];

  mySnackBar(context, msg) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                accountName: Text("Nayem Siddiqui"),
                accountEmail: Text("thesiddiqui@outlook.com"),
                currentAccountPicture: Image.network(
                    'https://www.shareicon.net/data/256x256/2015/06/21/57605_angry-birds_512x512.png'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              tileColor: Colors.blue,
              textColor: Colors.white,
              iconColor: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text("Search"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.newspaper), label: "News Paper"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1,
          childAspectRatio: 1.6,
        ),
        itemCount: myItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              mySnackBar(context, myItems[index]["title"]);
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              child: Image.network(
                myItems[index]['img']!,
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}
