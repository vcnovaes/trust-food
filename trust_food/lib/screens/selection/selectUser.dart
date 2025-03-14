
import 'package:flutter/material.dart';
import 'package:trust_food/screens/home/buyerHome.dart';
import 'package:trust_food/screens/home/sellerHome.dart';
import 'package:trust_food/screens/selection/userModel.dart';

class Selectuser extends StatefulWidget {
  @override
  _SelectUserState createState() => _SelectUserState();
}

class _SelectUserState extends State<Selectuser> {

  //add a funtion to get user in firebase data set
  List<UserModel> user= [
    UserModel( "A@gmail.com" , "99996666", "Alberto", "Bomfim", "Seller"),
    UserModel( "Al@gmail.com" , "99996666", "Alcapone", "Bomfim", "Buyer"),
    UserModel( "Alb@gmail.com" , "99996666", "Albelo", "Bomfim", "Buyer"),
    UserModel( "Ar@gmail.com" , "99996666", "Aroldo", "Bomfim", "Seller"),

  ];

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                'assets/trustfoodlogo.png', // Add your image in the assets folder
                ),
                Container(
                  child: Text(
                    'selecione o usuário',       
                    style: TextStyle(
                    color: Color.fromRGBO(15, 95, 166, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: user.length,
                      itemBuilder: (BuildContext context, int index) {
                        // return item
                        return userItem(
                          user[index].email,
                          user[index].phone,
                          user[index].firstName,
                          user[index].lastName,
                          user[index].userType,
                          index
                        );
                      }
                      
                      ),

                ),
              ],
            ),
          )
        ),
      ),
    );
  }

  Widget userItem(
      String email,  String phone, String firstName, String lastName, String userType, int index) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: const Color.fromRGBO(15, 95, 166, 1),
        child: Icon(
          Icons.person_outline_outlined,
          color: Colors.white,
        ),
      ),
      title: Text(
        ("$firstName" "$lastName"),
        style: TextStyle(
          color: Color.fromRGBO(15, 95, 166, 1),
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        email,
        style: TextStyle(
          color: Color.fromRGBO(15, 95, 166, 1),
        ),
      ),
      trailing: Container(
        height: 20,
        width: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.green,
        ),
        alignment: Alignment.centerLeft,
        child: Center(
            child: Text(
              textAlign: TextAlign.center,
              userType,
                style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
        ),
      ),
       onTap: () {
          if(user[index].userType == "Buyer"){
            //add login funtion
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => BuyerHomePage()));  
          }
          else if(user[index].userType == "Seller"){
            //add login funtion
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => SellerHomePage()));  
          }
        },
    );
  }
}