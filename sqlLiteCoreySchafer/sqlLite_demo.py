import sqlite3
from employee import Employee

conn = sqlite3.connect("employee.db")

c = conn.cursor()


def insert_employee_in_employee_db(employee:Employee,conn=conn):
    with conn:
        c.execute("""insert into employees values (:first ,:last,:pay) ;""",
                  {'first':employee.first,
                   "last":employee.last,
                   "pay":employee.pay
                   })


def select_emp_using_last_name(last_name):
    c.execute('select * from employees where last= :last',{
        "last":last_name
    })


# c.execute("""DROP table employees""")
# c.execute("""CREATE TABLE employees(
#             first text,
#             last text,
#             pay integer)""")
# c.execute("""SELECT * FROM employees""")

emp_1 = Employee("John","Doe",80000)
emp_2 = Employee("John","Doe2",90000)

# c.execute("SELECT * FROM employees WHERE last=?",('Schafer',))

# c.execute("""INSERT INTO employees VALUES (?,?,?)""",(emp_1.first,emp_1.last,emp_1.pay))
#
# c.execute("""INSERT INTO employees VALUES (:first,:last,:pay)""",
#           { "first":emp_1.first,"last":emp_1.last,"pay":emp_1.pay})

# c.execute('INSERT INTO employees VALUES ("Mary ","Schafer",50000)')
a= c.execute("""SELECT * FROM employees WHERE last = 'Schafer';""")
print(a.fetchall())
conn.commit()
conn.close()


