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
8. `country:string`
9. `diabetes:boolean`
10. `psoriasis:boolean`
11. `steroids:boolean`
12. `pregnancy:boolean`
13. `yellows:boolean`
14. `allergy:boolean`
15. `sensitive_skin:boolean`
16. `herpes:boolean`
17. `found:string`
18. `additional_info:text`
19. `herpes_info:string`

Treatments:

1. `ttype:string`
2. `date:date`
3. `client_id:integer`
4. `price:decimal`
5. `color:string`
6. `correction:boolean`
5. `additional_info:text`

