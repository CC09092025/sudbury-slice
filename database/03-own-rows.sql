USE SliceDB;

INSERT INTO tblCustomer (CID, FirstName, LastName, Email, City, DateJoined)
VALUES (1, 'Carter', 'Atkins', 'a00323762@mycambrian.ca', 'Sudbury', '2026-10-14');

INSERT INTO tblRating (RID, CID, PID, Stars, RatedOn, Remark)
VALUES (3025, 1, 1, 5, '2026-10-14', 'Crisp crust and a seriously good cheese pull');
