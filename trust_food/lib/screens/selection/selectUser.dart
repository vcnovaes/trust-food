import 'package:flutter/material.dart';
import 'package:trust_food/screens/home/buyerHome.dart';
import 'package:trust_food/screens/home/sellerHome.dart';
import 'package:trust_food/screens/selection/userModel.dart';

class Selectuser extends StatefulWidget {
  @override
  _SelectUserState createState() => _SelectUserState();
}

class _SelectUserState extends State<Selectuser> {
  List<UserModel> user = [
    UserModel("gustavo.lins10@gmal.com", "99996666", "Gustavo ", "Lins", "Comerciante"),
    UserModel("albertob@gmail.com", "99996666", "Alberto ", "Bomfim", "Consumidor"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/trustfoodlogo.png',
              ),
              Container(
                child: Text(
                  'Selecione o usuário',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xFF123859),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: user.length,
                  itemBuilder: (BuildContext context, int index) {
                    return userItem(
                      user[index].email,
                      user[index].phone,
                      user[index].firstName,
                      user[index].lastName,
                      user[index].userType,
                      index,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget userItem(
      String email, String phone, String firstName, String lastName, String userType, int index) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: const Color.fromRGBO(15, 95, 166, 1),
        child: Icon(
          Icons.person_outline_outlined,
          color: Colors.white,
        ),
      ),
      title: Text(
        "$firstName$lastName",
        style: TextStyle(
          fontFamily: 'Roboto',
          color: Color.fromRGBO(15, 95, 166, 1),
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        email,
        style: TextStyle(
          fontFamily: 'Roboto',
          color: Color(0xFF123859),
        ),
      ),
      trailing: Container(
        height: 20,
        width: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFF94C213),
        ),
        alignment: Alignment.centerLeft,
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            userType,
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.white,
            ),
          ),
        ),
      ),
      onTap: () {
        if (user[index].userType == "Consumidor") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BuyerHomePage()),
          );
        } else if (user[index].userType == "Comerciante") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SellerHomePage()),
          );
        }
      }
    );
  }
}
