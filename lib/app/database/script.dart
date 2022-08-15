final createTable = '''
CREATE TABLE contact(
id INT NOT NULL PRIMARY KEY
,nome VARCHAR(200)NOT NULL
,telefone CHAR(16) NOT NULL
,email VARCHAR(150) NOT NULL
,url_avatar VARCHAR(300) NOT NULL
)
  ''';

final insert1 = '''
INSERT INTO contact(nome,telefone,email,url_avatar)
VALUES('Danilo','(19)999595081','dprosa01@gmail.com','https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png')
''';

final insert2 = '''
INSERT INTO contact(nome,telefone,email,url_avatar)
VALUES('Maysa','(19)999795565','mah1200@gmail.com','https://cdn.pixabay.com/photo/2014/04/02/14/10/female-306407_960_720.png')
''';

final insert3 = '''
INSERT INTO contact(nome,telefone,email,url_avatar)
VALUES('Ines','(19)34694552','portoines20@gmail.com','https://cdn.pixabay.com/photo/2014/03/24/17/19/teacher-295387_960_720.png')
''';
