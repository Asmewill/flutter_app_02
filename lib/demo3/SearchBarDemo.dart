

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_02/demo3/asset/asset.dart';

class SearchBarDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SearchBarDemoState();
  }

}
class SearchBarDemoState extends  State<StatefulWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
       appBar: AppBar(
         title: Text("SearchBarDemo"),
         actions: <Widget>[
           IconButton(
             icon:Icon(Icons.search) ,
             onPressed: (){
                 //Scaffold.of(context).showSnackBar(SnackBar(content: Text("onPressed"),));
                 showSearch(context: context,delegate:SearchBarDelegate());
             },       
           )
         ],
       ),
    );
  }
}
class SearchBarDelegate extends SearchDelegate<String>{
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [IconButton(icon: Icon(Icons.clear),onPressed: (){
           query="";
    },)];
  }
  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,progress: transitionAnimation,
      ),
      onPressed: (){
          close(context, null);
      },
    );
  }
  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return new Center(
      child: Container(
        width:100 ,
        height: 100,
        child: Card(
          color: Colors.redAccent,
          child: Center(
            child: Text(query),
          ),
        ),
      ),
    );
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    final suggestionList=query.isEmpty?recentSuggest:searchList.where((input){
          return input.startsWith(query)||input.startsWith(query.toUpperCase());
    }).toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context,index){
          return ListTile(
            onTap: (){
               query=suggestionList[index].substring(0,query.length);
                showResults(context);        
            },
            title: RichText(
              text: TextSpan(
                text: suggestionList[index].substring(0,query.length),
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: suggestionList[index].substring(query.length,suggestionList[index].length),
                    style: TextStyle(color: Colors.grey)
                  )
                ]
              ),
            ),
          );
      },
    );
  }
}

