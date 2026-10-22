# Sudbury Slice: Abstract
**By:** Carter Atkins

**The problem.** Sudbury Slice has sold pizza under the Big Nickel for eleven years, yet its only web presence is a crooked photo of a menu. Customers cannot see which toppings are on each pizza, and nobody can tell which pizzas people actually love. Moose settles arguments from memory, and feedback arrives as 2 a.m. text messages that cannot be searched or counted.

**Who it is for.** Sudbury regulars who order often, such as Cambrian students and hospital shift workers who want to choose quickly and avoid toppings they dislike, and Moose, who needs trustworthy ratings to decide which pizzas stay on the menu.

**Why it matters.** Customers could browse every pizza, see its exact toppings and portions, and rate it from 1 to 5 stars with an optional remark. Moose would finally have proof of the best pizza, and of the ones to retire, instead of guessing.

**What the app must remember.** The database stores customers, pizzas, toppings and ratings. One pizza has many toppings and one topping sits on many pizzas, so I expect a link table between pizzas and toppings. A customer writes many ratings, and each rating belongs to one customer and is about exactly one pizza.
