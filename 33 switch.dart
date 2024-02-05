import 'package:flutter/material.dart';

class stc extends StatefulWidget {
  const stc({super.key});

  @override
  State<stc> createState() => _stcState();
}

class _stcState extends State<stc> {
  @override
    bool isSwitched = false;  
  var textValue = 'Switch is OFF'; 
  void toggleswitch(bool value){
if (isSwitched==false){
  setState(() {
    isSwitched = true;  
        textValue = 'Switch Button is ON';  
        
  });
}
else{
  setState(() {
    isSwitched = false;  
        textValue = 'Switch Button is of';  
  });

}

  }
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(  color: isSwitched ?Colors.orange:Colors.white,
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Switch(
              value: isSwitched, onChanged: toggleswitch,
            activeColor: Colors.blue,  
                activeTrackColor: Colors.yellow,  
                inactiveThumbColor: Colors.redAccent,  
                inactiveTrackColor: Colors.orange,  ),
          ),
         Text('$textValue', style: TextStyle(fontSize: 20),),  

        ],
      ),
     ),
    );
  }
}