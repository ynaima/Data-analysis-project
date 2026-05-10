# Call the function from the module
def calculate_salary(base_salary, bonus_rate=.1):
  """
  Calculate the total salary based on the base salary and bonus rate.

  Args:
    base_salary (float): The base salary.
    bonus_rate (float): The bonus rate. Default is .1.
  
  Returns:
    float: The total salary.
  """
  return round(base_salary * (1 + bonus_rate), 2)


def calculate_bonus(total_salary, base_salary):
  """
  Calculate the bonus salary based on the base salary and total salary.

  Args:
  
    total_salary (float): The total salary.
    base_salary (float): The base salary.
    
  Returns:
    float: The bonus salary.
  """
  return (total_salary - base_salary)