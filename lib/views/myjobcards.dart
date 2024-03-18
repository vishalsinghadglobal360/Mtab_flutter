
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mtabflutter/AppColors.dart';
import 'package:mtabflutter/models/JobcardListModel.dart';
import 'package:provider/provider.dart';
import '../viewmodels/myjobcard_view_model.dart';


class MyJobcardn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => MYJOBCARDVIEWMODEL(),
      child: Scaffold(
        body: Builder(
          // Here the magic happens
          // this builder function will generate a new BuilContext for you
            builder: (BuildContext newContext){
              return const MyJobcard();
            }
        ),
      ),
    );
  }
}

class MyJobcard extends StatefulWidget {
  const MyJobcard({super.key});

  @override
  State<MyJobcard> createState() => _MyJobcardState();
}

class _MyJobcardState extends State<MyJobcard> {


  @override
  Widget build(BuildContext context) {

    final jobCardViewModel = Provider.of<MYJOBCARDVIEWMODEL>(context);


   // jobCardViewModel.fetchPosts();


    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                color: PRIMARY_COLOR,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: double.infinity, // Set the height of the container
                        child: Image.asset(
                          'assets/images/ic_ms_service_logo_new.PNG', // Replace 'assets/image.jpg' with your image path
                          fit: BoxFit.fill, // This will make the image cover the entire container
                        ),
                      ),

                      Container(
                        color: PRIMARY_COLOR,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("v8.5", style:TextStyle(color: Colors.white, fontSize: 12)),
                            /*Center(
                              child: IconWithBorder(
                                icon: Icons.home,
                                backgroundColor: Colors.white,
                                borderColor: Colors.white,
                                borderWidth:2.0,
                                size: 24.0,
                              ),
                            ),*/

                            Container(
                              padding: EdgeInsets.all(5),

                              child: Center(
                                child: LogoutButton(),
                              ),
                            )

                          ],
                        ),
                      )
                    ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Container(
                    height: 50,
                    color: HEADER_TOP,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                         padding: const EdgeInsets.all(5),
                          child: const Row(
                            children: [
                              Center(child: Text("UserId: bbsr.susanta")),
                              SizedBox(width: 20,),
                              Center(child: Text("DEALER: SAI SERVICE CENTER"))
                            ],
                          ),

                         /* padding: EdgeInsets.all(5),
                          height: double.infinity, // Set the height of the container
                          child: Center(child: Text("UserId: bbsr.susanta")),*/
                        ),

                        /*
                          Container(
                            child:  Image.asset(
                              'assets/images/ic_ms_service_logo_new.PNG',
                              height: double.infinity, // Adjust the height as needed
                            ),
                          )
                          */
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                height: 80,
                color: SECONDARY_COLOR,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: double.infinity, // Set the height of the container
                      child: Image.asset(
                        'assets/images/ic_ms_service_logo_new.PNG', // Replace 'assets/image.jpg' with your image path
                        fit: BoxFit.fill, // This will make the image cover the entire container
                      ),
                    ),

                    /*
                      Container(
                        child:  Image.asset(
                          'assets/images/ic_ms_service_logo_new.PNG',
                          height: double.infinity, // Adjust the height as needed
                        ),
                      )
                      */
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 7,
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: jobCardViewModel.posts.isNotEmpty
                      ? const Center(child: CircularProgressIndicator())
                      : ListView.builder(
                       itemCount: jobCardViewModel.posts.length,
                       itemBuilder: (context, index) {
                        JobCardListModel myModel = jobCardViewModel.posts[index];
                        return itemGames(index,myModel);
                      },
                  ),

                )
            )
          ],
        ),
      ),
    );
  }
}

class IconWithBorder extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final double size;

  IconWithBorder({
    required this.icon,
    required this.backgroundColor,
    required this.borderColor,
    required this.borderWidth,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size + borderWidth * 2,
      height: size + borderWidth * 2,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: borderColor,
      ),
      child: Center(
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: backgroundColor,
          ),
          child: Icon(
            icon,
            size: size * 0.8,
            color: PRIMARY_COLOR,
          ),
        ),
      ),
    );
  }
}


Widget itemGames(int index, JobCardListModel bidHistoryModel) {

  return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [ //BoxShadow
          BoxShadow(
            color: Colors.black26,
            offset: Offset(1.0, 2.0),
            blurRadius: 5.0,
            spreadRadius: 1.0,
          ), //BoxShadow
        ],
        gradient: LinearGradient(
          colors: [Color(0xfffdfbfb), Color(0xffebedee)],
        ),
      ),
      // width: size.width*0.223,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:8.0,right: 8.0),
            child: Row(
              children: [
                Expanded(
                  flex:1,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 2,
                      horizontal: 2,
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Date',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600)),
                              Text('test',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.green)),
                            ],
                          ),
                        ),

                        Container(
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('dffsdf',
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 10,
                                        letterSpacing: 3,
                                        color: Colors.black)),

                                Text('terwewre',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.green)),
                              ],
                            )
                        ),
                        Container(
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('terwer',
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 10,
                                        letterSpacing: 3,
                                        color: Colors.black)),
                              ],
                            )
                        ),
                        SizedBox(height: 5,),
                        Text("terwer",
                            maxLines: 1,
                            style: TextStyle(
                                fontSize:14,
                                letterSpacing: 3,
                                color: Colors.green))

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
          //bottom time
        ],
      )

  );

}


class LogoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle logout action here
        print('Logout tapped');
      },
      child: Container(
        height: double.infinity,
        padding: EdgeInsets.only(left:10, right:10, top:1, bottom: 1),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.white, // Border color
            width: 2, // Border width
          ),
          borderRadius: BorderRadius.circular(8), // Border radius
        ),
        child: Icon(
          Icons.logout,
          size: 26 , color: PRIMARY_COLOR,
        ),
      ),
    );
  }
}
