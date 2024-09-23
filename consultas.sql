select o.email, p.name from owners as o inner join profilePets as p on o.id = p.idOwner;

select name, description, idOwner from profilePets;

select p.name, po.title, po.content from posts as po inner join profilePets as p on p.id = po.idPet;

select p.name, po.title, c.content from posts as po inner join profilePets as p inner join comments as c on c.idPet = p.id on c.idPost = po.id;

select i.name, i.url, po.title from posts as po inner join images as i on i.idPost = po.id;

select m.content, p1.name, p2.name from profilePets as p1 inner join messages as m on p1.id = m.idPetSend inner join profilePets as p2 on m.idPetReceive = p2.id;

select p1.name, p2.name from profilePets as p1 inner join friends as f on f.idPet1 = p1.id inner join profilePets as p2 on f.idPet2 = p2.id;
