

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpansionPanelListDemo extends StatefulWidget{
     @override
  State<ExpansionPanelListDemo> createState() {
    // TODO: implement createState
    return new ExpansionPanelListDemoState();
  }
}
class ExpansionPanelListDemoState extends State<ExpansionPanelListDemo>{
  List<int> mList;
  List<ExpandStateBean> expandStateList;
   
  ExpansionPanelListDemoState(){
    mList=new List();
    expandStateList=new List();
    for(int i=0;i<10;i++){
        mList.add(i);
        expandStateList.add(ExpandStateBean(i, false));
    }
    print("mListLength=${mList.length}");
  }
  setCurrentIndex(int panelIndex, bool isExpanded){
    setState(() {
       expandStateList.forEach((ExpandStateBean item){
            if(panelIndex==item.index){
               item.isOpen=!isExpanded;
            }else{
              item.isOpen=false;
            }
       });
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("expansion pane list1"),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (int panelIndex, bool isExpanded){
            print("expansionCallback：index=$panelIndex-----boll=$isExpanded");
            setCurrentIndex(panelIndex,isExpanded);
          },
          children: mList.map(( index){
            return new ExpansionPanel(
              headerBuilder:(BuildContext context, bool isExpanded){
                return ListTile(
                  title: Text('this is no $index'),
                );
              },
              body:ListTile(
                title:Text('expansion no $index') ,
              ),
              isExpanded: expandStateList[index].isOpen,
            );
          }).toList(),
        ),
      ),
    );
  }
}  
class ExpandStateBean {
  var isOpen;
  var index;
  ExpandStateBean(this.index,this.isOpen);
}
