import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_gallery/screens/detailed_screen.dart';
import 'package:photo_gallery/services/photo_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> list = [];
  PhotoService pService;
  bool loading = false;

  void getListImg() {
    if (list.length < pService.listCount) {
      setState(() {
        this.loading = true;
        list = pService.getNextPhotoTile();
        this.loading = false;
      });
    }
  }

  @override
  void initState() {
    pService = PhotoService();
    super.initState();
    this.getListImg();
  }

  bool _scrollListener(ScrollNotification event) {
    if (event is ScrollStartNotification) {
      this.getListImg();
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: _scrollListener,
      child: loading
          ? LoadingIndicator()
          : GridView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(2.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailedPage(
                            imgUrl: list[index],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: list[index],
                        placeholder: (context, url) => LoadingIndicator(),
                        errorWidget: (context, url, error) =>
                            new Icon(Icons.error),
                      ),
                    ),
                  ),
                );
              },
              itemCount: list.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            ),
    );
  }
}

class LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
