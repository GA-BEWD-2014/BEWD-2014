################################################################################
#
# Introduction to Ruby on Rails
#
# Code Along: Inheritance
#
################################################################################
#
# 1. Create 2 new classes, Employee and Manager.
#
# 2. Change Manager so that it inherits from Employee.
#
# 3. In Employee, create an initialize method that accepts a first and
#    last name and save those into instance variables.
#
# 4. In Manager, create an initialize method that accepts a title,
#    a first, and a last name and save those into instance variables.
#
# 5. Create attr_accessors in each class for the instance variables.
#
# 6. Change your Manager initialize method, so that instead of setting
#    instance variables, it should call the super method of the Employee
#    class.
#
#    super(first_name, last_name)
#
# 7. Create the method full_name in each class.
#
#    In Employee, return a String of the Employee's full name.
#
#    Example: "Rachel Ober"
#
#    In Manager, return a String of the Manager's title,
#    and full name.
#
#    Example: "Rachel Ober (Teacher)"
#
# 8. Finally, create a few examples of Employees and Managers and try
#    different output statements.
#
################################################################################
#
# Student's Solution:
#
################################################################################
