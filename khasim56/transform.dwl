%dw 2.0
output application/json skipNullOn="everywhere"
var a ={
    "resultSet2": [
        {
            "Name": "AB",
      "Number": "IN23"
        }
    ],
    "resultSet1": [
        
    ]
}
---
//here i used filterobject to remove the "resultSet1": []
a filterObject ((value, key, index) ->value != [] )
 