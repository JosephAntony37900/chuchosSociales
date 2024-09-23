create schema chuchosSociales;
use chuchosSociales;

create table owners (
    id int not null auto_increment,
    email varchar(60) not null,
    password varchar(200) not null,
    primary key (id)
);

create table profilePets (
	id int auto_increment,
    name varchar(45) not null,
    description varchar(200),
    idOwner int not null,
    primary key (id),
    foreign key (idOwner) references owners(id)
);

create table posts (
	id int auto_increment,
    title varchar(45) not null,
    content varchar(200),
    idPet int not null,
    primary key (id),
    foreign key (idPet) references profilePets(id)
);

create table comments (
	id int auto_increment,
    content varchar(120),
    idPet int not null,
    idPost int not null,
    primary key (id),
    foreign key (idPet) references profilePets(id),
    foreign key (idPost) references posts(id)
);

create table images (
	id int auto_increment,
    name varchar(60),
    url varchar(200),
    idPost int not null,
    primary key (id),
    foreign key (idPost) references posts(id)
);

create table messages (
	id int auto_increment,
    content varchar(500),
    idPetSend int not null,
    idPetReceive int not null,
    primary key (id),
    foreign key (idPetSend) references profilePets(id),
    foreign key (idPetReceive) references profilePets(id)
);

create table friends (
    idPet1 int not null,
    idPet2 int not null,
    primary key (idPet1, idPet2),
    foreign key (idPet1) references profilePets(id),
    foreign key (idPet2) references profilePets(id)	
);