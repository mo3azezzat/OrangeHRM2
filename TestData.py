###valid###
username_value="Admin"
password_value="admin123"

###Invalid###
Invalid_username = "moaaz"
Invalid_password= "moaaz123"


###Assign Leave###
Employee_Name = "Nalim"
Employee_Name_Value = "Nalim  R P"
Leave_Type_Value = "CAN - Bereavement"

###Get Dates###
from datetime import date , timedelta
From_today = date.today()
To_day = From_today + timedelta(days=1)

print(From_today)
print(To_day)