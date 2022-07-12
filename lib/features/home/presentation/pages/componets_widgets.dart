import 'package:flutter/material.dart';

Card textFieldWithBoX(String title) {
  return Card(
    child: ListTile(
      onTap: () {},
      leading: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.expand_more,
            size: 25,
          )),
    ),
  );
}
// Widget buildDropDownMenu(){
  
//   return DropdownButton(  
//     items: [],
//   );
// }
