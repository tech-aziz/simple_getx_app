import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  Page1({super.key});

  dynamic mySnackBar(context, msg) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(
          duration: const Duration(seconds: 1),
          content:  SizedBox(
          height: 100,
          width: 200,
          child: Text(msg),
        )));
  }
  dynamic getXSnackbar(contex, msg){
    // ignore: prefer_interpolation_to_compose_strings
    return Get.snackbar(''+msg, '');
  }

  List<Map<String, dynamic>> myList = [
    {
      "img":
          "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?cs=srgb&dl=pexels-ella-olsson-1640777.jpg&fm=jpg",
      "title": "Healthy Foods"
    },
    {
      "img":
          "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80",
      "title": "Awesome Foods"
    },
    {
      "img":
          "https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/324494_2200-732x549.jpg",
      "title": "Breads"
    },
    {
      "img":
          "http://www.slimmingworld.co.uk/wp-content/uploads/2021/02/lentilolognese-what-is-free-food-slimming-world-blog.jpg",
      "title": "Receipe"
    },
    {
      "img":
          "https://www.verywellfit.com/thmb/MzvoMqkpB4VlSty2mmmLuTzjCtY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/the-lectin-free-diet-pros-cons-and-what-you-can-eat-5190571-b-35eb885df4984e5cab741ea05d7b424e.png",
      "title": "Meats"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1_uPt-qSdpwO_XH-w16HBcY7YyWl9MkAbmA&usqp=CAU",
      "title": "Chips"
    },
    {
      "img":
          "https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2021/02/Best-Gluten-Free-Recipes-12.jpg",
      "title": "Awesome Foods"
    },
    {
      "img":
          "https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2021/02/Best-Gluten-Free-Recipes-12.jpg",
      "title": "Awesome Foods"
    },
    {
      "img":
          "https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2021/02/Best-Gluten-Free-Recipes-12.jpg",
      "title": "Awesome Foods"
    },
    {
      "img":
          "https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2021/02/Best-Gluten-Free-Recipes-12.jpg",
      "title": "Awesome Foods"
    },
    {
      "img":
          "https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2021/02/Best-Gluten-Free-Recipes-12.jpg",
      "title": "Awesome Foods"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: SizedBox(
              height: 100,
              width: double.infinity,
              child: Center(
                child: InkWell(
                  onTap: (() {
                    mySnackBar(context, myList[index]['title']);
                    getXSnackbar(context, myList[index]['title']);
                  }),
                  child: ListTile(
                    leading: Image.network(
                      myList[index]['img'],
                      height: 100,
                      width: 100,
                      fit: BoxFit.fill,
                    ),
                    title: Text(myList[index]['title']),
                    subtitle: const Text('This is really good foods'),
                    trailing: const Icon(
                      Icons.share,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
