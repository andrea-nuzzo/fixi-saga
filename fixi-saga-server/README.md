````
fixi-saga-server/
│
├── app.ts                              # Application Main File
├── package.json                        # Project configuration files
│
├── api/                                # API Management
│   ├── routes/                         # Route definitions
│   │   ├── customer.ts                 # Customer Routes
│   │   ├── machine.ts                  # Machine routes
│   │   └── interventation.ts           # Intervention routes
│   └── controllers/                    # Route control logic
│       ├── customerController.ts
│       ├── machineController.ts
│       └── interventationController.ts
├── models/                             # Database Templates
│   ├── customer.ts                     # Model for customers
│   ├── machine.ts                      # Model for machines
│   └── interventation.ts               # Model for interventions
│
├── config/                             # Configuration
│   
│
└── utils/                              # Utility 
```