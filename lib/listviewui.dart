import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewUi extends StatefulWidget {
  const ListViewUi({super.key});

  @override
  State<ListViewUi> createState() => _ListViewUiState();
}

class _ListViewUiState extends State<ListViewUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "List",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return CardWidget();
            }),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(elevation: 0.6,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal:
        5,vertical: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
        width: MediaQuery.of(context).size.width * 0.5,
        child: Padding(
          padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.02,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                  Container(
                    child: Image.asset(
                      "assets/profile.png",
                      height: 55,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Quaker Oates Wholegrain 1kg"),
                        SizedBox(
                          height: 3,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Invested: 200",
                                style:
                                    TextStyle(fontFamily: "ubuntu", fontSize: 10),
                              ),
                              Text(("Value: ₹2400"),
                                  style:
                                      TextStyle(fontFamily: "ubuntu", fontSize: 10))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Text(
                              "Units bought: 25",
                              style: TextStyle(fontFamily: "ubuntu", fontSize: 10),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Average Selling Time: 16 weeks",
                              style: TextStyle(fontFamily: "ubuntu", fontSize: 10),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],),
              Column(
                children: [
                  Icon(
                    CupertinoIcons.triangle_fill,color: Colors.green,
                  ),Text("1.8%",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w600),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
