import 'package:flutter/material.dart';

class create_account extends StatefulWidget {
  @override
  _create_accountState createState() => _create_accountState();
}

class _create_accountState extends State<create_account> {
  String _name_last_name;
  String _email;
  String _mobile;
  String _password;
  String _password_cofirmed;
  String _yourCity;

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration:
          InputDecoration(hintText: 'Enter your name and last name here'),
      validator: (String value) {
        if (value.isEmpty) {
          return "Please, Enter valid name";
        } else
          return null;
      },
      onSaved: (String name) {
        setState(() {
          _name_last_name = name;
        });
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(hintText: 'Enter your mail'),
      validator: (String value) {
        if (value.isEmpty) {
          return "Please, Enter Valid Email";
        } else if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }
        return null;
      },
      onSaved: (String value) {
        setState(() {
          _email = value;
        });
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(hintText: 'Enter password'),
      validator: (String value) {
        if (value.isEmpty) {
          return "Please, Enter valid password";
        } else
          return null;
      },
      onSaved: (String value) {
        setState(() {
          _password = value;
        });
      },
    );
  }
  Widget _buildPassword_confirmed() {
    return TextFormField(
      decoration: InputDecoration(hintText: 'Enter password again'),
      validator: (String value) {
        if (value.isEmpty) {
          return "Please,  password is not matching";
        } else
          return null;
      },
      onSaved: (String value) {
        setState(() {
          _password_cofirmed = value;
        });
      },
    );
  }
  Widget _buildCity() {
    return Container();
  }

  Widget _buildPhone() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Enter phone number',
      ),
      keyboardType: TextInputType.number,
      validator: (String value) {
        if (value.isEmpty) {
          return "Please, Enter valid number";
        } else
          return null;

      },
      onSaved: (String value) {
        setState(() {
          _mobile = value;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registration"),centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          Navigator.pop(context);
        },),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(18),
          ),
        ),),
      body: Container(
        padding: EdgeInsets.all(18.0),
        child: Form(
          key: _key,
          child: Center(
            child: ListView(
              shrinkWrap: true,


//            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildName(),
                _buildEmail(),
                _buildPhone(),
                _buildPassword(),
                _buildPassword_confirmed(),


//            _buildCity(),
                SizedBox(height: 50),
                RaisedButton(
                  onPressed: () {
                    if (!_key.currentState.validate()) {
                      return;
                    } else {
                      _key.currentState.save();
                    }
                  },
                  child: Text("Submit"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
