import 'package:moor_flutter/app/entity/company/company_model.dart';

class CompanyService{

  dynamic company;

  Future<Map<String, dynamic>> getCompanies() async {
    await Future.delayed(Duration(seconds: 2), (){
      company = {
          "results": [
            {
              "id": 1,
              "name": "Google",
              "company_department": [
                {
                  "id": 1,
                  "department_name": "Developer",
                  "company_employees": [
                    {
                      "id": 01,
                      "name": "Thiago Caiado"
                    },
                    {
                      "id": 02,
                      "name": "Ricardo Silva"
                    },
                    {
                      "id": 03,
                      "name": "Vinicius Cavalcante"
                    },
                    {
                      "id": 04,
                      "name": "Renato Araújo"
                    }
                  ]
                },
                {
                  "id": 2,
                  "department_name": "Human Resources",
                  "company_employees": [
                    {
                      "id": 01,
                      "name": "Pedro Henrique"
                    },
                    {
                      "id": 02,
                      "name": "Paulo de Souza"
                    },
                    {
                      "id": 03,
                      "name": "Rafael da Silva"
                    },
                    {
                      "id": 04,
                      "name": "Mariana Marina"
                    }
                  ]
                }
              ],
            },
            {
              "id": 2,
              "name": "Apple",
              "company_department": [
                {
                  "id": 1,
                  "department_name": "Developer",
                  "company_employees": [
                    {
                      "id": 01,
                      "name": "Thiago Caiado"
                    },
                    {
                      "id": 02,
                      "name": "Oswaldo Campos"
                    },
                    {
                      "id": 03,
                      "name": "Eduardo Gabeira"
                    },
                    {
                      "id": 04,
                      "name": "Luiz Felipe"
                    }
                  ]
                },
                {
                  "id": 2,
                  "department_name": "Human Resources",
                  "company_employees": [
                    {
                      "id": 01,
                      "name": "Rentao Araujo"
                    },
                    {
                      "id": 02,
                      "name": "Marina Abbamonte"
                    },
                    {
                      "id": 03,
                      "name": "Renata Souza"
                    },
                    {
                      "id": 04,
                      "name": "Marcio Eduardo"
                    }
                  ]
                }
              ],
            }
          ]
        };
    });

    return company;
  }
}