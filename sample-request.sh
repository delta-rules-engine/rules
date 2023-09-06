curl -X 'POST' 'http://localhost:8080/Flight_recognition' -H 'accept: application/json' -H 'Content-Type: application/json' \
      -d '{
"Flight": {
    "Flight Carrier": "DL",
    "flight time": "09:30",
    "flight date": "2023-09-05",
    "passengers": [
     {
                    "milestone multiple": 0,
                    "Insert a name": "string",
                    "priority": 0,
                    "delay": true,
                    "is a 360 member": true,
                    "days since last Delta flight": 0,
                    "IROP severity level": 0,
                    "days since SkyMiles member": 0,
                    "days since new tier": 0,
                    "quarantined": true,
                    "medallion member": true,
                    "corporate flyer": true,
                    "military": false,
                    "age": 35,
                    "group booking size": 2,
                    "employee": false,
                    "unaccompanied minor": false,
                    "infant": false,
                    "skymiles member": true,
                    "seat": 22,
                    "last reveived recognition": "2023-09-05",
                    "million miler": true,
                    "status": "Diamond",
                    "missed connection": true,
                    "name": "Bob Jones"
                },
                {
                    "milestone multiple": 0,
                    "Insert a name": "string",
                    "priority": 0,
                    "delay": true,
                    "is a 360 member": true,
                    "days since last Delta flight": 0,
                    "IROP severity level": 0,
                    "days since SkyMiles member": 0,
                    "days since new tier": 0,
                    "quarantined": true,
                    "medallion member": true,
                    "corporate flyer": true,
                    "military": false,
                    "age": 35,
                    "group booking size": 2,
                    "employee": false,
                    "unaccompanied minor": false,
                    "infant": false,
                    "skymiles member": true,
                    "seat": 22,
                    "last reveived recognition": "2023-09-05",
                    "million miler": true,
                    "status": "Diamond",
                    "missed connection": true,
                    "name": "Jane Doe"
                },
                {
                "skymiles member": true,
                "seat": 12,
                "group booking size": 1,
                "quarantined": false,
                "employee": false,
                "unaccompanied minor": false,
                "infant": false,
                "million miler": false,
                "missed connection": false,
                "name": "John ",
                "status": "Platinum",
                "corporate flyer": false,
                "medallion member": true,
                "age": 25,
                "military": false,
                "delay": false,
                "IROP severity level": 5,
                "milestone multiple": 0,
                "is a 360 member": true,
                "days since new tier": 5,
                "days since SkyMiles member": 3
            }
    ],
    "distance": 580
  }
}'