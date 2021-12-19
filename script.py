import sqlite3 as sq

conn = sq.connect('Sheetboard.sqlite')

cursor = conn.cursor()
cursor.execute("delete from user;")
cursor.execute("delete from note;")
cursor.execute("delete from tag;")
cursor.execute("delete from note_tags;")
cursor.execute("insert into user(email, password) values('abramenko.r.l@gmail.com', 'QwErTy!');")
conn.commit()
cursor.execute("SELECT id, email, password, create_time FROM user where id=1;")
results = cursor.fetchall()
print(results) 