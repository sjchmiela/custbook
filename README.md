Custbook
===

Database, storing details about clients, their treatments and all the stuff essential in makeup studio.

## Models

Clients:

1. `name:string`
2. `surname:string`
3. `pesel:string`
4. `birthday:date`
5. `phone:string`
6. `cell:string`
7. `email:string`
8. `diabetes:boolean`
9. `psoriasis:boolean`
10. `steroids:boolean`
11. `pregnancy:boolean`
12. `yellows:boolean`
13. `allergy:boolean`
14. `sensitive_skin:boolean`
15. `herpes:boolean`
16. `found:string`
16. `additional_info:text`

Treatments:

1. `type:string`
2. `date:date`
3. `client_id:integer`
4. `price:decimal`
5. `colour:string`
6. `correction:boolean`
5. `additional_info:text`
