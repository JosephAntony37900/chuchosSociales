insert into owners(email, password) values ("owner1@mail.com", "contrasenita123");
insert into owners(email, password) values ("owner2@mail.com", "contrasenita456");

insert into profilePets(name, description, idOwner) values ("Chuchin", "Chucho sociable en busca de amigos", 1);
insert into profilePets(name, description, idOwner) values ("Maxi", "Un gato naranja", 2);
insert into profilePets(name, description, idOwner) values ("Nuegado", "ola y adios", 2);

insert into posts(title, content, idPet) values ("Salida", "Hoy hubo salidita", 2);
insert into posts(title, content, idPet) values ("Despertao", "Acabo de despertar", 1);

insert into comments(content, idPet, idPost) values ("Q bonito el maxi", 1, 1);
insert into comments(content, idPet, idPost) values ("No se que comentar xd", 2, 1);

insert into images(name, url, idPost) values ("fotoDelMaxi", "https://chuchosSociales.com/imagen1", 1);
insert into images(name, url, idPost) values ("fotoDelChuchin", "https://chuchosSociales.com/imagen2", 2);

insert into messages(content, idPetSend, idPetReceive) values ("Hey, kiubo Maxi?", 1, 2);
insert into messages(content, idPetSend, idPetReceive) values ("q hay?", 2, 1);

insert into friends(idPet1, idPet2) values (6, 5);
insert into friends(idPet1, idPet2) values (7, 6);