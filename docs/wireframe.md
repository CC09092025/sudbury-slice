# Sudbury Slice: Wireframe (main screen)

```text
+------------------------------------------------------------+
| [1] SUDBURY SLICE                 Signed in as: [Customer] |
+------------------------------------------------------------+
| [2] Category: [All v]                  Sort: [Price v]     |
+--------------------------+---------------------------------+
| [3] PIZZA LIST           | [4] PIZZA DETAILS               |
|  > The Big Nickel $15.99 |  Name / Category / Base price   |
|    Hawaiian Heresy       |  Toppings: name, portion, vegan |
|    Garden Party          |  Extra cost per topping         |
+--------------------------+---------------------------------+
| [5] RATE THIS PIZZA: [*][*][*][*][*]  Remark: [_________]  |
|                                          [Submit rating]   |
+------------------------------------------------------------+
| [6] WHAT OTHERS SAID: first name, stars, remark, date      |
+------------------------------------------------------------+
```

## Legend
1. Title bar and signed-in customer (reads tblCustomer)
2. Category filter and sort (reads tblPizza)
3. List of pizzas with base price (reads tblPizza)
4. Details of the selected pizza: its toppings, portions, vegan flag and extra cost (reads tblPizza, tblPizzaTopping and tblTopping)
5. Star picker, remark box and submit button (writes tblRating)
6. Other customers' ratings of the selected pizza (reads tblRating and tblCustomer)
