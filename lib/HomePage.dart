import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.black, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF2ABB00),
        shadowColor: Color(0xFF2ABB00),
        title: Container(
          height: 100,
          width: _width,
          color: Color(0xFF2ABB00),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    child: Image.asset(
                      'images/bnc.png',
                    ),
                    radius: 20.0,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                    width: 7.0,
                  ),
                  Text(
                    'Dhiraj',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.search,
                    size: 35.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Icon(
                    Icons.notifications,
                    size: 35.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    ':',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0)),
                    color: Color(0xFF2ABB00),
                  ),
                  height: 100,
                  width: _width,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0)),
                        ),
                        height: 50,
                        width: _width,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 10.0,
                          ),
                          child: Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  BalanceNReward(
                                    bnricons:
                                        Icons.account_balance_wallet_outlined,
                                    balNRew: 'Rs.1000',
                                    baltxtNRewtxt: 'Balance',
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 180.0,
                              ),
                              BalanceNReward(
                                bnricons: Icons.control_point,
                                balNRew: '456.15',
                                baltxtNRewtxt: 'Reward Point',
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                        height: 90.0,
                        width: _width,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Service(
                                iconData: Icons.account_balance_wallet_outlined,
                                upperText: 'Load',
                                lowerText: 'Money',
                              ),
                              Service(
                                iconData: Icons.account_balance_wallet_outlined,
                                upperText: 'Send',
                                lowerText: 'Money',
                              ),
                              Service(
                                iconData: Icons.comment_bank,
                                upperText: 'Bank',
                                lowerText: 'Transfer',
                              ),
                              Service(
                                iconData: Icons.blur_circular_outlined,
                                upperText: 'Remittance',
                                lowerText: ' ',
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Service(
                                        iconData: Icons.smartphone_outlined,
                                        upperText: 'Topup',
                                        lowerText: ' ',
                                        iconColor: Colors.green,
                                        txtColor: Colors.grey,
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Service(
                                        iconData: Icons.lightbulb_outline,
                                        upperText: 'Electricity',
                                        lowerText: ' ',
                                        iconColor: Colors.green,
                                        txtColor: Colors.grey,
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Service(
                                        iconData: Icons.waterfall_chart,
                                        upperText: 'Khanepani',
                                        lowerText: ' ',
                                        iconColor: Colors.green,
                                        txtColor: Colors.grey,
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Service(
                                        iconData: Icons.router_outlined,
                                        upperText: 'Remittance',
                                        lowerText: ' ',
                                        iconColor: Colors.green,
                                        txtColor: Colors.grey,
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 50.0,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Service(
                                        iconData:
                                            Icons.airplanemode_active_outlined,
                                        upperText: 'Airlines',
                                        lowerText: ' ',
                                        iconColor: Colors.green,
                                        txtColor: Colors.grey,
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Service(
                                        iconData: Icons.water_damage_outlined,
                                        upperText: 'Govt.',
                                        lowerText: 'Payment ',
                                        iconColor: Colors.green,
                                        txtColor: Colors.grey,
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Service(
                                        iconData: Icons
                                            .airline_seat_legroom_extra_outlined,
                                        upperText: 'Cable Car',
                                        lowerText: ' ',
                                        iconColor: Colors.green,
                                        txtColor: Colors.grey,
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Service(
                                        iconData: Icons.house,
                                        upperText: 'Co-',
                                        lowerText: 'operative ',
                                        iconColor: Colors.green,
                                        txtColor: Colors.grey,
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 50.0,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Service(
                                        iconData: Icons.tv_outlined,
                                        upperText: 'TV',
                                        lowerText: ' ',
                                        iconColor: Colors.green,
                                        txtColor: Colors.grey,
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Service(
                                        iconData: Icons.school_outlined,
                                        upperText: 'School Fee',
                                        lowerText: ' ',
                                        iconColor: Colors.green,
                                        txtColor: Colors.grey,
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Service(
                                        iconData: Icons.umbrella_outlined,
                                        upperText: 'Insurance',
                                        lowerText: ' ',
                                        iconColor: Colors.green,
                                        txtColor: Colors.grey,
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Service(
                                        iconData: Icons.credit_card,
                                        upperText: 'Credit Card',
                                        lowerText: ' ',
                                        iconColor: Colors.green,
                                        txtColor: Colors.grey,
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Service(
                                        iconData: Icons.attach_money_outlined,
                                        upperText: 'Finance',
                                        lowerText: ' ',
                                        iconColor: Colors.green,
                                        txtColor: Colors.grey,
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Service(
                                        iconData: Icons.calendar_today_outlined,
                                        upperText: 'EMI',
                                        lowerText: ' ',
                                        iconColor: Colors.green,
                                        txtColor: Colors.grey,
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Service(
                                        iconData: Icons.credit_card_rounded,
                                        upperText: 'Recharge',
                                        lowerText: ' ',
                                        iconColor: Colors.green,
                                        txtColor: Colors.grey,
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Service(
                                        iconData: Icons.local_hospital_rounded,
                                        upperText: 'Health',
                                        lowerText: ' ',
                                        iconColor: Colors.green,
                                        txtColor: Colors.grey,
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                    height: 12.0,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Service(
                                    iconData: Icons.location_pin,
                                    upperText: 'Cashout',
                                    lowerText: ' ',
                                    iconColor: Colors.green,
                                    txtColor: Colors.grey,
                                  ),
                                  Service(
                                    iconData: Icons.bus_alert,
                                    upperText: 'Bus Ticket',
                                    lowerText: ' ',
                                    iconColor: Colors.green,
                                    txtColor: Colors.grey,
                                  ),
                                  Service(
                                    iconData: Icons.movie,
                                    upperText: 'Movies',
                                    lowerText: ' ',
                                    iconColor: Colors.green,
                                    txtColor: Colors.grey,
                                  ),
                                  Service(
                                    iconData: Icons.handyman_outlined,
                                    upperText: 'Voting',
                                    lowerText: ' ',
                                    iconColor: Colors.green,
                                    txtColor: Colors.grey,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      height: 35.0,
                                      width: 150.0,
                                      alignment: Alignment.center,
                                      child: Text(
                                        'View less ^',
                                        style: TextStyle(
                                          color: Color(0xFF2ABB00),
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 100.0,
                                    ),
                                    Container(
                                      height: 35.0,
                                      width: 45.0,
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.edit,
                                        color: Colors.green,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Service extends StatelessWidget {
  IconData iconData;
  String upperText, lowerText;
  Color iconColor, txtColor;

  Service(
      {this.iconData,
      this.upperText,
      this.lowerText,
      this.iconColor,
      this.txtColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          iconData,
          color: iconColor,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          upperText,
          style: TextStyle(color: txtColor),
        ),
        Text(
          lowerText,
          style: TextStyle(color: txtColor),
        ),
      ],
    );
  }
}

class BalanceNReward extends StatelessWidget {
  IconData bnricons;
  String balNRew, baltxtNRewtxt;

  BalanceNReward({this.bnricons, this.balNRew, this.baltxtNRewtxt});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          bnricons,
        ),
        SizedBox(
          width: 10.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              balNRew,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              baltxtNRewtxt,
              style: TextStyle(
                fontSize: 10.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
