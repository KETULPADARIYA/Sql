import random

import pandas as pd

data = pd.read_csv("estonia-passenger-list.csv")
data["email"] = data["Firstname"] + data["Lastname"] + "@gmail.com"


def get_random_date():
    return f"{random.randint(1990, 2004)}-{random.randint(1, 12)}-{random.randint(1, 30)}"


dates = [get_random_date() for i in range(len(data))]
data["birthday"] = dates

profession = [ 'Astronomer', 'Actor /Actress', 'Farmer', 'Florist', 'Bricklayer', 'Fisherman', 'Engineer', 'Baker', 'Doctor', 'Gardener', 'Carpenter', 'Lifeguard', 'Bus driver', 'Fireman/Fire fighter', 'Architect', 'Dentist', 'Dustman/Refuse collector', 'Designer', 'Chef/Cook', 'Lawyer', 'Lecturer', 'Factory worker', 'Accountant', 'Librarian', 'Mechanic', 'Judge', 'Author', 'Cleaner', 'Electrician', 'Hairdresser', 'Butcher', 'Journalist']
data["profession"] = data.apply(lambda  i :random.choice(profession),axis=1)
data["status"] = data.apply(lambda i:random.choice(["single","not_single"]),axis =1)

interests = ['Writing', 'Blogging', 'Podcasting', 'Marketing', 'Photography', 'Travel', 'Sports', 'Yoga', 'Dance', 'Art', 'Reading',
 "Making Music","Listening to music" ,"Learning Languages"]

data["interests"] = data.apply(lambda  i: random.choice(interests),axis=1)
seeking = [' Seeking a position as an administrative assistant at Acme Inc., to leverage organizational and research skills to support internal and external communication.', '    Eager to expand my skill set through external trainings to help boost all major front desk KPIs.', '    Hoping to leverage organizational skills to help ABC Corp introduce time-saving schemes for all executives.', '    Highly-engaged sales representative with a BS in Biology, seeking to enhance sales figures for Azult Medical.', '    Proven history of successful work with cross-functional teams. Seeking to deliver project management excellence to Apple New York.', "    To secure a position in digital marketing to improve my skills in SEO and SEM, whilst helping to grow traffic and revenue for Ecom's prestigious corporate clients.", '    Focused and diligent graduate in data sciences looks to leverage in-depth knowledge of data analysis to drive success in the business intelligence team at Quanticum Inc.', '    Aiming to secure an entry-level position to gain practical accounting experience with the peerless finance team at Masterson and Co.']
seeking = [seek[:100] for seek in seeking]

data["seeking"] = data.apply(lambda  i: random.choice(seeking),axis=1)
columns_names = {'Firstname':"first_name","Lastname":"last_name","Sex":"gender","Country":"location"}

for old_col, new_col in columns_names.items():
    data[new_col] = data[old_col]
    data.drop(old_col, axis=1, inplace=True)


not_need_col = [ col for col in data.columns if col[0].istitle()]
data.drop(not_need_col,axis=1,inplace=True)

data_limit = {'first_name': 20, 'last_name': 30, 'email': 50, 'gender': 1, 'profession': 50, 'location': 25, 'status': 20, 'interests': 100, 'seeking': 100}

for col,word_limit in data_limit.items():
    data[col] =  [ i[:word_limit] for i in data[col]]


VALUES = "\n,".join( str(tuple(i)) for i in data.values)
table_name = "my_contacts"
sql_statement = f"INSERT INTO {table_name} ({ (' , '.join(data.columns) )}) VALUES {VALUES}"
with open(file="sql_multiple_values.sql",mode="w") as f:
    f.write(sql_statement)