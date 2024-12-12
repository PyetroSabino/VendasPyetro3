create database Vendas;
use Vendas;
describe Clientes;
describe Vendedors;
describe Items;
describe Produtos;
describe Vendas;
INSERT INTO Clientes(nome, createdAt, updatedAt) 
VALUES ("Maria Aparecida", now(), now());
select * from Clientes;
INSERT INTO Vendedors(nome, createdAt, updatedAt) 
VALUES ("Paulo Castro", now(), now());
select * from Vendedors;
INSERT INTO Produtos(nome, unidade, createdAt, updatedAt) 
VALUES ("Sabão em pó", "grama", now(), now());
select * from Produtos;
INSERT INTO Vendas(data, ClienteId, VendedorId, createdAt, updatedAt) 
VALUES ("2024-09-29", 1, 1, now(), now());
select * from Vendas;
select vd.id, vd.data, c.nome, v.nome
from Vendas as vd, Clientes as c, Vendedors as v
where vd.ClienteId = c.id and 
      vd.VendedorId = v.id;
      INSERT INTO Items(VendaId, ProdutoId, valor, quantidade, createdAt, updatedAt) 
VALUES (1, 1, 30.5, 2, now(), now());
select * from Items;
select i.VendaId, pr.nome, pr.unidade, i.valor, i.quantidade,
       i.valor * i.quantidade as subtotal
from Items as i, Vendas as vd, Produtos as pr
where i.VendaId = vd.id and
      i.ProdutoId = pr.id;
















 
