drop database if exists afip4;
CREATE schema afip4 ;
use  afip4;
CREATE TABLE impuesto (
  idimpuesto INT NOT NULL AUTO_INCREMENT,
  tipo_impuesto VARCHAR(45) NULL,
  fecha DATE NULL,
  PRIMARY KEY (idimpuesto))
  ;

CREATE TABLE contribuyente (
  idcontribuyente int(20) NOT NULL AUTO_INCREMENT,
  num_fiscal int(20) DEFAULT NULL,
  idimpuesto int not null,
  PRIMARY KEY (idcontribuyente),
  KEY imp_fk (idimpuesto),
  CONSTRAINT imp_fk FOREIGN KEY (idimpuesto) REFERENCES impuesto (idimpuesto)
);


insert into impuesto
(idimpuesto,tipo_impuesto,fecha)
values
(00, 'impuesto a las ganancias', '2020-01-10' ),
(01, 'impuesto al vendedor agregado', '2020-01-02' ),
(02, 'impuesto a la ganancia minima presunta', '2020-02-06' ),
(03, 'impuesto a los bienes personales', '2020-02-04' ),
(04, 'impuesto sobre los debitos y creditos bancarios', '2020-01-30' ),
(05, 'impuesto sobre los ingresos brutos', '2020-01-20' ),
(06, 'impuesto al sello', '2020-01-11' ),
(07, 'impuesto a la transferencia de inmuebles', '2020-02-02' );


insert into contribuyente
(idcontribuyente, num_fiscal, idimpuesto)
values
(10, 27372168612, 0),
(11, 20352188611, 2),
(12, 27372168611, 4),
(13, 20372168613, 5),
(14, 27372168610, 7),
(15, 27372168612, 3);





