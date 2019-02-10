import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MomentCard extends StatelessWidget {
  final username;
  final userface;
  final title;
  final content;
  final List<String> pics;
  final picAspectRatio;
  final GestureTapCallback onTap;

  MomentCard(
      {Key key,
      this.title,
      this.content,
      this.userface,
      this.username,
        this.pics,
        this.picAspectRatio,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: InkResponse(
        onTap: this.onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
//              height: 230,
              child: Text(
                content,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              color: Colors.white12,
              padding: EdgeInsets.all(5),
              child: GridView.count(
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: pics.length == 1 ? picAspectRatio ?? 1 : 1,
//                crossAxisCount: 3,
                crossAxisCount: pics.length < 3 ? pics.length : 3,
                shrinkWrap: true,
                primary: false,
                children: pics
                    .map((p) =>
                    GridTile(
                        child: InkResponse(
                          onTap: () {
                            //todo: 之后做个专门看图片的route
                            showAboutDialog(
                                context: context, children: <Widget>[
                              Center(
                                child: CachedNetworkImage(
                                  imageUrl: p,
                                  placeholder:
                                  Center(child: CircularProgressIndicator()),
//                              fit: BoxFit.fill,
                                  fit: BoxFit.fill,
                                ),
                              )
                            ]);
                          },
                          child: CachedNetworkImage(
                          imageUrl: p,
                          placeholder:
                          Center(child: CircularProgressIndicator()),
//                              fit: BoxFit.fill,
                            fit: BoxFit.cover,
                          ),
                        )))
                    .toList(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
//            crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  CircleAvatar(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      child: CachedNetworkImage(
                        imageUrl: userface,
//                          placeholder: CircularProgressIndicator()
                      ),
                    ),
                  ),
                  Expanded(
                      child: Center(
                          child: Text(
                    username,
                            style: Theme
                                .of(context)
                                .textTheme
                                .title,
                            maxLines: 1,
                  ))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
