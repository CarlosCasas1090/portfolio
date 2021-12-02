import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return Drawer
    (  
      child: ListView
      (
        padding: EdgeInsets.zero,
        children: <Widget>
        [
          DrawerHeader
          (
            padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 40.0),
            decoration: BoxDecoration
            (
              color: Color.fromRGBO(90, 90, 90, 1)
            ),
            child: Container
            (
              child: ListTile
              (
                leading:CircleAvatar
                (
                  radius:30.0,
                  backgroundImage: AssetImage('me.png')
                ),
                title: Text('user', style: TextStyle(fontSize: 25.0, color: Colors.white)),
                subtitle: Text('xxx', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          /*_createSection2(context, 'incomes.png', AppLocalizations.of(context).translate('incomes'), 'Incomes'),
          _createSection2(context, 'expenses.png', AppLocalizations.of(context).translate('expenses'), 'Expenses'),
          _createSection2(context, 'savings.png', AppLocalizations.of(context).translate('savings'), 'Savings'),
          _createSection2(context, 'investments.png', AppLocalizations.of(context).translate('invest'), 'Investments'),
          _createSection2(context, 'debts.png', AppLocalizations.of(context).translate('debts'), 'Debts'),
          _createSection2(context, 'summary.png', AppLocalizations.of(context).translate('summary'), 'Summary'),
          _createSection2(context, 'settings.png', AppLocalizations.of(context).translate('settings'), 'Settings'),*/
          Container
          (
            child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>
              [
                SizedBox(height: 30),
                Image(image: AssetImage('assets/footer.png'), height: 50),
                SizedBox(height: 5),
                Text('Easy Finances App', style:  TextStyle(color: Theme.of(context).accentColor, fontSize: 15, letterSpacing: 3.0)),
                Text('ver. 1.1.5', style:  TextStyle(color: Theme.of(context).accentColor, fontSize: 13, letterSpacing: 2.0)),
                SizedBox(height: 7),
              ],
            ),
          )
        ],
      ),
    );
  }
}