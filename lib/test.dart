import 'package:flutter/material.dart';

class ModalBottomSheetClass extends StatefulWidget {
  const ModalBottomSheetClass({Key? key}) : super(key: key);

  @override
  _ModalBottomSheetClassState createState() => _ModalBottomSheetClassState();
}

class _ModalBottomSheetClassState extends State<ModalBottomSheetClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modal Bottom Sheet'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      enableDrag: true,
                      constraints: BoxConstraints(
                        maxWidth: double.infinity,
                        maxHeight: 800,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.elliptical(10, 10),
                              topRight: Radius.elliptical(10, 10))),
                      backgroundColor: Theme.of(context).backgroundColor,
                      builder: (BuildContext context) {
                        return Column(
                          children: [
                            Container(
                              width: double.infinity,
                              child: IconButton(
                                icon: Icon(
                                    Icons.airline_seat_legroom_extra_outlined),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.elliptical(10, 10),
                                    topRight: Radius.elliptical(10, 10)),
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                                child: GridView.builder(
                                    itemCount: 6,
                                    gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisSpacing: 10,
                                        crossAxisSpacing: 10,
                                        crossAxisCount: 3),
                                    itemBuilder: (context, index) {
                                      return Container(
                                        color: Theme.of(context).primaryColor,
                                        child: Column(
                                          children: [
                                            Text('Nash'),
                                            Text('Nash'),
                                            Text('Nash'),
                                            Text('Nash'),
                                          ],
                                        ),
                                      );
                                    }))
                          ],
                        );
                      });
                },
                title: Text('Nasur Bae'),
                subtitle: Text('Nasir Bae balo manosh'),
                leading: Icon(Icons.home),
                trailing: Icon(Icons.phone),
              ),
            );
          }),
    );
  }
}