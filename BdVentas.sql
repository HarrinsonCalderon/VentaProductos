create database BDventas;

use BDVentas;

create table Cliente(
IdCliente int primary key identity(1,1),
Nombre varchar(50),
Email varchar(50),
Contrasena varbinary(500),
FechaAlta datetime,
FechaBaja datetime,
);

create table Producto(
IdProducto int primary key identity(1,1),
Nombre varchar(500),
Precio decimal,
Descripcion varchar(1000)
);
	

create table Pedido(
IdPedido int primary key identity(1,1),
Total int,
FechaPedido datetime,
FkIdCliente int

);

create table LineaPedido(
IdLineaPedido int primary key identity(1,1),
FkIdPedido int,
FkIdProducto int,
Cantidad int,
ImporteUnitario int,
);

alter table pedido add constraint fk_pedidocliente foreign key(FkIdCliente)  references  Cliente(IdCliente);
alter table LineaPedido add constraint fk_lineapedido foreign key(FkIdPedido) references Pedido(IdPedido);
alter table LineaPedido add constraint fk_lineaproducto foreign key(FkIdProducto) references Producto(IdProducto);

