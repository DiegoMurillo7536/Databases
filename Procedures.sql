use db_almacen;

delimiter $$
create procedure  listaP( in rango1 float , in rango2 float) 
begin 
select * from producto where precio between rango1 and  rango2 ;
end $$
delimiter ;


delimiter $$
create procedure  NumP( in prod int) 
begin 
select p.id, p.nombre , sum(cantidad_producto) as Num_Producto from producto as p
inner join cliente_producto as cp on p.id = cp.id_producto 
 where  prod = p.id  ;
end $$
delimiter ;


delimiter $$
create procedure  ValorTP( in prod int) 
begin 
select p.id, p.nombre ,p.precio , sum(cantidad_producto) as Num_Producto, (sum(cantidad_producto)*p.precio) as Total_de_Venta from producto as p
inner join cliente_producto as cp on p.id = cp.id_producto 
 where  prod = p.id  ;
end $$
delimiter ;
