CREATE TABLE categoria (
    id_categoria   INTEGER NOT NULL,
    descripcion    VARCHAR2(20) NOT NULL
);

CREATE UNIQUE INDEX xpkcategoria ON
    categoria (
        id_categoria
    ASC );

ALTER TABLE categoria ADD CONSTRAINT xpkcategoria PRIMARY KEY ( id_categoria );

CREATE TABLE cliente (
    id_cliente   INTEGER NOT NULL,
    nombre       VARCHAR2(20) NULL,
    apellido     VARCHAR2(20) NOT NULL,
    telefono     VARCHAR2(20) NULL
);

CREATE UNIQUE INDEX xpkcliente ON
    cliente (
        id_cliente
    ASC );

ALTER TABLE cliente ADD CONSTRAINT xpkcliente PRIMARY KEY ( id_cliente );

CREATE TABLE factura (
    id_factura   INTEGER NOT NULL,
    fecha        DATE NOT NULL,
    id_cliente   INTEGER NULL
);

CREATE UNIQUE INDEX xpkfacturas ON
    factura (
        id_factura
    ASC );

ALTER TABLE factura ADD CONSTRAINT xpkfacturas PRIMARY KEY ( id_factura );

CREATE TABLE producto (
    descripcion    VARCHAR2(20) NOT NULL,
    id_producto    INTEGER NOT NULL,
    precio         INTEGER NOT NULL,
    id_categoria   INTEGER NULL,
    id_proveedor   INTEGER NULL
);

CREATE UNIQUE INDEX xpkproductos ON
    producto (
        id_producto
    ASC );

ALTER TABLE producto ADD CONSTRAINT xpkproductos PRIMARY KEY ( id_producto );

CREATE TABLE proveedor (
    id_proveedor   INTEGER NOT NULL,
    nombre         VARCHAR2(20) NULL,
    apellido       VARCHAR2(20) NOT NULL,
    telefono       VARCHAR2(20) NULL
);

CREATE UNIQUE INDEX xpkproeveedor ON
    proveedor (
        id_proveedor
    ASC );

ALTER TABLE proveedor ADD CONSTRAINT xpkproeveedor PRIMARY KEY ( id_proveedor );

CREATE TABLE venta (
    id_venta      INTEGER NOT NULL,
    id_factura    INTEGER NULL,
    id_producto   INTEGER NULL,
    cantidad      INTEGER NOT NULL
);

CREATE UNIQUE INDEX xpkventas ON
    venta (
        id_venta
    ASC );

ALTER TABLE venta ADD CONSTRAINT xpkventas PRIMARY KEY ( id_venta );

ALTER TABLE factura ADD (
    CONSTRAINT r_1 FOREIGN KEY ( id_cliente )
        REFERENCES cliente ( id_cliente )
            ON DELETE SET NULL
);

ALTER TABLE producto ADD (
    CONSTRAINT r_2 FOREIGN KEY ( id_categoria )
        REFERENCES categoria ( id_categoria )
            ON DELETE SET NULL
);

ALTER TABLE producto ADD (
    CONSTRAINT r_3 FOREIGN KEY ( id_proveedor )
        REFERENCES proveedor ( id_proveedor )
            ON DELETE SET NULL
);

ALTER TABLE venta ADD (
    CONSTRAINT r_5 FOREIGN KEY ( id_factura )
        REFERENCES factura ( id_factura )
            ON DELETE SET NULL
);

ALTER TABLE venta ADD (
    CONSTRAINT r_8 FOREIGN KEY ( id_producto )
        REFERENCES producto ( id_producto )
            ON DELETE SET NULL
);

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '1',
    'Britanney',
    'Molina',
    '213-2668'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '2',
    'Dawn',
    'Sweeney',
    '1-229-431-3464'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '3',
    'Urielle',
    'Dawson',
    '1-238-605-7755'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '4',
    'Kyla',
    'Petty',
    '1-423-752-0697'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '5',
    'Evan',
    'Flores',
    '656-7179'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '6',
    'Thane',
    'Holloway',
    '1-763-852-4680'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '7',
    'Ava',
    'Torres',
    '639-1605'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '8',
    'Callum',
    'Moss',
    '566-3875'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '9',
    'Eliana',
    'Gardner',
    '1-687-238-3348'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '10',
    'Kibo',
    'Morales',
    '1-747-318-9147'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '11',
    'Maite',
    'Knight',
    '544-2610'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '12',
    'Valentine',
    'Gallagher',
    '992-0690'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '13',
    'Patrick',
    'Haney',
    '792-4705'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '14',
    'Shelly',
    'Francis',
    '857-9756'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '15',
    'Raya',
    'Deleon',
    '185-8088'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '16',
    'August',
    'Fuentes',
    '229-5967'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '17',
    'Lisandra',
    'Richards',
    '1-675-452-9072'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '18',
    'Colorado',
    'Gentry',
    '1-470-801-9868'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '19',
    'Lucy',
    'Church',
    '531-6295'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '20',
    'Judith',
    'Wyatt',
    '662-8379'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '21',
    'Amelia',
    'Stafford',
    '1-188-142-4396'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '22',
    'Castor',
    'Clark',
    '1-979-106-7690'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '23',
    'Gray',
    'Meyers',
    '373-9860'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '24',
    'Dorothy',
    'Mccormick',
    '463-5441'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '25',
    'Cyrus',
    'Atkins',
    '1-788-644-6579'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '26',
    'Kevin',
    'Young',
    '1-691-208-3669'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '27',
    'Warren',
    'Farrell',
    '585-0283'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '28',
    'Phyllis',
    'Nichols',
    '470-5888'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '29',
    'Garth',
    'Osborne',
    '1-986-895-5786'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '30',
    'Jolene',
    'Strong',
    '816-4091'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '31',
    'Nissim',
    'Davenport',
    '583-3624'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '32',
    'Stuart',
    'Best',
    '787-9934'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '33',
    'Kelly',
    'Mclaughlin',
    '714-5729'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '34',
    'Cole',
    'Christensen',
    '1-383-667-0742'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '35',
    'Hayfa',
    'Grant',
    '1-706-487-8372'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '36',
    'Zachery',
    'Sosa',
    '1-310-430-4139'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '37',
    'Raphael',
    'Yates',
    '830-8163'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '38',
    'James',
    'Sweet',
    '1-452-553-9768'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '39',
    'Yvette',
    'Puckett',
    '841-3989'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '40',
    'John',
    'Griffin',
    '1-179-313-8521'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '41',
    'Harper',
    'Reese',
    '344-4514'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '42',
    'Thane',
    'Price',
    '1-547-830-9628'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '43',
    'Imani',
    'Sargent',
    '1-191-967-7816'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '44',
    'Gareth',
    'Wolfe',
    '1-166-274-9089'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '45',
    'MacKensie',
    'Conway',
    '1-672-299-2297'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '46',
    'Brenden',
    'Mathis',
    '1-431-942-1369'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '47',
    'Andrew',
    'Harmon',
    '1-549-852-6218'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '48',
    'Imogene',
    'Roman',
    '1-587-431-7220'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '49',
    'Susan',
    'Acosta',
    '1-487-131-0769'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '50',
    'Abraham',
    'Lynch',
    '1-542-161-2833'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '51',
    'Pascale',
    'Yates',
    '1-700-598-5140'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '52',
    'Wanda',
    'Booth',
    '1-643-918-5401'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '53',
    'Colette',
    'Downs',
    '1-835-721-8323'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '54',
    'Ora',
    'Mcdonald',
    '726-6162'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '55',
    'Mary',
    'Carey',
    '1-994-726-2827'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '56',
    'Nerea',
    'Shaffer',
    '972-3715'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '57',
    'Rowan',
    'Bray',
    '1-810-999-3918'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '58',
    'Aline',
    'Rodriguez',
    '377-4873'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '59',
    'Slade',
    'Mercado',
    '1-122-118-6584'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '60',
    'Kyle',
    'Wade',
    '970-7648'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '61',
    'Anthony',
    'Nieves',
    '389-6584'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '62',
    'Jillian',
    'Dickson',
    '1-453-496-6637'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '63',
    'Halla',
    'Deleon',
    '1-262-260-8289'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '64',
    'Sopoline',
    'Dominguez',
    '1-584-705-1620'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '65',
    'Rylee',
    'Pickett',
    '1-639-658-7627'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '66',
    'Tobias',
    'Ramsey',
    '1-972-399-6987'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '67',
    'Lisandra',
    'Hess',
    '783-5403'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '68',
    'Vaughan',
    'Kaufman',
    '660-0766'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '69',
    'Wade',
    'Farmer',
    '744-5725'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '70',
    'Garrett',
    'Gilbert',
    '1-191-660-4305'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '71',
    'Dai',
    'Mcconnell',
    '992-5602'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '72',
    'Cassidy',
    'Green',
    '290-4158'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '73',
    'Melvin',
    'Knapp',
    '733-0958'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '74',
    'Cheyenne',
    'Forbes',
    '950-6318'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '75',
    'Zia',
    'Stanton',
    '1-882-963-5341'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '76',
    'Anika',
    'Tucker',
    '471-0786'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '77',
    'Murphy',
    'Abbott',
    '959-9147'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '78',
    'Blythe',
    'Knowles',
    '159-2526'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '79',
    'Shad',
    'Steele',
    '1-375-605-5016'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '80',
    'Yasir',
    'Shaw',
    '390-5148'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '81',
    'Maya',
    'Dillard',
    '673-6414'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '82',
    'Dillon',
    'Beard',
    '1-652-626-4212'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '83',
    'Bianca',
    'Ferrell',
    '350-3902'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '84',
    'Nicholas',
    'Kline',
    '1-468-341-4091'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '85',
    'Grady',
    'Levy',
    '1-546-515-3763'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '86',
    'Cain',
    'Parrish',
    '1-175-875-6580'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '87',
    'Rooney',
    'Stanton',
    '622-6879'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '88',
    'Joelle',
    'Dillon',
    '159-3879'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '89',
    'Darrel',
    'Kemp',
    '732-8174'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '90',
    'Ralph',
    'Casey',
    '118-6092'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '91',
    'Noah',
    'Jensen',
    '1-316-912-3453'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '92',
    'Naomi',
    'Humphrey',
    '1-911-499-7331'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '93',
    'Germane',
    'Dillon',
    '1-759-105-7536'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '94',
    'Christen',
    'Oneil',
    '1-264-913-6150'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '95',
    'Talon',
    'Rocha',
    '313-4699'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '96',
    'Ivory',
    'Gardner',
    '514-4941'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '97',
    'Rebekah',
    'Walker',
    '1-575-246-1342'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '98',
    'Freya',
    'Ferrell',
    '1-941-357-7352'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '99',
    'Winifred',
    'Ewing',
    '1-590-835-2305'
);

INSERT INTO cliente (
    id_cliente,
    nombre,
    apellido,
    telefono
) VALUES (
    '100',
    'Hadley',
    'Macias',
    '474-3118'
);

-----

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5500',
    TO_DATE('24/05/19', 'DD/MM/RR'),
    '80'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5501',
    TO_DATE('19/08/20', 'DD/MM/RR'),
    '15'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5502',
    TO_DATE('24/07/19', 'DD/MM/RR'),
    '39'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5503',
    TO_DATE('12/05/19', 'DD/MM/RR'),
    '62'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5504',
    TO_DATE('10/06/19', 'DD/MM/RR'),
    '83'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5505',
    TO_DATE('09/04/19', 'DD/MM/RR'),
    '17'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5506',
    TO_DATE('01/05/20', 'DD/MM/RR'),
    '48'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5507',
    TO_DATE('13/11/20', 'DD/MM/RR'),
    '77'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5508',
    TO_DATE('14/09/20', 'DD/MM/RR'),
    '30'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5509',
    TO_DATE('21/10/20', 'DD/MM/RR'),
    '99'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5510',
    TO_DATE('23/04/19', 'DD/MM/RR'),
    '30'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5511',
    TO_DATE('10/12/20', 'DD/MM/RR'),
    '92'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5512',
    TO_DATE('23/09/19', 'DD/MM/RR'),
    '38'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5513',
    TO_DATE('29/01/19', 'DD/MM/RR'),
    '47'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5514',
    TO_DATE('29/12/18', 'DD/MM/RR'),
    '12'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5515',
    TO_DATE('20/01/19', 'DD/MM/RR'),
    '64'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5516',
    TO_DATE('27/08/19', 'DD/MM/RR'),
    '29'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5517',
    TO_DATE('09/06/19', 'DD/MM/RR'),
    '47'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5518',
    TO_DATE('24/10/20', 'DD/MM/RR'),
    '36'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5519',
    TO_DATE('28/11/20', 'DD/MM/RR'),
    '63'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5520',
    TO_DATE('16/03/19', 'DD/MM/RR'),
    '56'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5521',
    TO_DATE('25/12/18', 'DD/MM/RR'),
    '15'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5522',
    TO_DATE('24/02/19', 'DD/MM/RR'),
    '27'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5523',
    TO_DATE('25/09/20', 'DD/MM/RR'),
    '79'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5524',
    TO_DATE('28/05/20', 'DD/MM/RR'),
    '42'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5525',
    TO_DATE('07/01/19', 'DD/MM/RR'),
    '76'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5526',
    TO_DATE('23/09/19', 'DD/MM/RR'),
    '84'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5527',
    TO_DATE('25/02/19', 'DD/MM/RR'),
    '24'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5528',
    TO_DATE('12/11/20', 'DD/MM/RR'),
    '66'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5529',
    TO_DATE('02/01/19', 'DD/MM/RR'),
    '26'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5530',
    TO_DATE('30/10/19', 'DD/MM/RR'),
    '19'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5531',
    TO_DATE('22/02/19', 'DD/MM/RR'),
    '68'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5532',
    TO_DATE('11/06/19', 'DD/MM/RR'),
    '61'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5533',
    TO_DATE('16/02/20', 'DD/MM/RR'),
    '99'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5534',
    TO_DATE('14/04/19', 'DD/MM/RR'),
    '26'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5535',
    TO_DATE('23/11/20', 'DD/MM/RR'),
    '77'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5536',
    TO_DATE('27/01/20', 'DD/MM/RR'),
    '40'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5537',
    TO_DATE('23/07/19', 'DD/MM/RR'),
    '93'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5538',
    TO_DATE('18/03/20', 'DD/MM/RR'),
    '92'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5539',
    TO_DATE('21/12/20', 'DD/MM/RR'),
    '3'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5540',
    TO_DATE('23/05/19', 'DD/MM/RR'),
    '66'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5541',
    TO_DATE('23/11/20', 'DD/MM/RR'),
    '100'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5542',
    TO_DATE('05/08/19', 'DD/MM/RR'),
    '89'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5543',
    TO_DATE('25/05/19', 'DD/MM/RR'),
    '89'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5544',
    TO_DATE('22/03/20', 'DD/MM/RR'),
    '77'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5545',
    TO_DATE('03/03/19', 'DD/MM/RR'),
    '82'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5546',
    TO_DATE('05/07/20', 'DD/MM/RR'),
    '36'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5547',
    TO_DATE('14/08/19', 'DD/MM/RR'),
    '29'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5548',
    TO_DATE('28/04/19', 'DD/MM/RR'),
    '49'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5549',
    TO_DATE('16/05/20', 'DD/MM/RR'),
    '22'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5550',
    TO_DATE('05/11/19', 'DD/MM/RR'),
    '87'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5551',
    TO_DATE('01/06/19', 'DD/MM/RR'),
    '19'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5552',
    TO_DATE('08/05/19', 'DD/MM/RR'),
    '32'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5553',
    TO_DATE('25/12/19', 'DD/MM/RR'),
    '23'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5554',
    TO_DATE('03/03/19', 'DD/MM/RR'),
    '1'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5555',
    TO_DATE('22/05/20', 'DD/MM/RR'),
    '100'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5556',
    TO_DATE('05/12/19', 'DD/MM/RR'),
    '21'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5557',
    TO_DATE('15/02/20', 'DD/MM/RR'),
    '38'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5558',
    TO_DATE('01/04/19', 'DD/MM/RR'),
    '44'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5559',
    TO_DATE('04/07/20', 'DD/MM/RR'),
    '77'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5560',
    TO_DATE('13/02/19', 'DD/MM/RR'),
    '38'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5561',
    TO_DATE('14/10/20', 'DD/MM/RR'),
    '79'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5562',
    TO_DATE('09/10/19', 'DD/MM/RR'),
    '44'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5563',
    TO_DATE('30/06/19', 'DD/MM/RR'),
    '29'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5564',
    TO_DATE('13/02/19', 'DD/MM/RR'),
    '89'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5565',
    TO_DATE('09/02/20', 'DD/MM/RR'),
    '39'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5566',
    TO_DATE('08/05/19', 'DD/MM/RR'),
    '38'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5567',
    TO_DATE('15/10/20', 'DD/MM/RR'),
    '93'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5568',
    TO_DATE('13/03/20', 'DD/MM/RR'),
    '69'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5569',
    TO_DATE('21/07/20', 'DD/MM/RR'),
    '73'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5570',
    TO_DATE('22/01/20', 'DD/MM/RR'),
    '37'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5571',
    TO_DATE('12/11/19', 'DD/MM/RR'),
    '35'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5572',
    TO_DATE('01/02/20', 'DD/MM/RR'),
    '44'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5573',
    TO_DATE('22/04/19', 'DD/MM/RR'),
    '76'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5574',
    TO_DATE('18/01/20', 'DD/MM/RR'),
    '51'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5575',
    TO_DATE('14/08/19', 'DD/MM/RR'),
    '62'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5576',
    TO_DATE('27/08/20', 'DD/MM/RR'),
    '80'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5577',
    TO_DATE('13/06/19', 'DD/MM/RR'),
    '37'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5578',
    TO_DATE('09/01/20', 'DD/MM/RR'),
    '81'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5579',
    TO_DATE('18/02/19', 'DD/MM/RR'),
    '43'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5580',
    TO_DATE('17/10/19', 'DD/MM/RR'),
    '20'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5581',
    TO_DATE('28/06/20', 'DD/MM/RR'),
    '67'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5582',
    TO_DATE('30/10/19', 'DD/MM/RR'),
    '83'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5583',
    TO_DATE('19/04/20', 'DD/MM/RR'),
    '89'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5584',
    TO_DATE('19/08/19', 'DD/MM/RR'),
    '3'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5585',
    TO_DATE('07/12/19', 'DD/MM/RR'),
    '7'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5586',
    TO_DATE('03/03/20', 'DD/MM/RR'),
    '18'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5587',
    TO_DATE('11/01/19', 'DD/MM/RR'),
    '76'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5588',
    TO_DATE('02/07/20', 'DD/MM/RR'),
    '98'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5589',
    TO_DATE('05/09/19', 'DD/MM/RR'),
    '4'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5590',
    TO_DATE('22/06/19', 'DD/MM/RR'),
    '21'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5591',
    TO_DATE('09/02/20', 'DD/MM/RR'),
    '77'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5592',
    TO_DATE('30/08/19', 'DD/MM/RR'),
    '7'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5593',
    TO_DATE('28/01/20', 'DD/MM/RR'),
    '92'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5594',
    TO_DATE('05/10/20', 'DD/MM/RR'),
    '8'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5595',
    TO_DATE('08/09/20', 'DD/MM/RR'),
    '64'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5596',
    TO_DATE('19/12/19', 'DD/MM/RR'),
    '46'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5597',
    TO_DATE('24/02/20', 'DD/MM/RR'),
    '62'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5598',
    TO_DATE('27/04/19', 'DD/MM/RR'),
    '66'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5599',
    TO_DATE('12/08/20', 'DD/MM/RR'),
    '82'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5600',
    TO_DATE('16/12/20', 'DD/MM/RR'),
    '41'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5601',
    TO_DATE('14/06/20', 'DD/MM/RR'),
    '31'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5602',
    TO_DATE('17/07/19', 'DD/MM/RR'),
    '10'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5603',
    TO_DATE('26/08/19', 'DD/MM/RR'),
    '7'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5604',
    TO_DATE('06/09/20', 'DD/MM/RR'),
    '55'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5605',
    TO_DATE('02/08/20', 'DD/MM/RR'),
    '59'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5606',
    TO_DATE('06/09/20', 'DD/MM/RR'),
    '7'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5607',
    TO_DATE('20/06/19', 'DD/MM/RR'),
    '88'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5608',
    TO_DATE('07/11/20', 'DD/MM/RR'),
    '33'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5609',
    TO_DATE('25/04/20', 'DD/MM/RR'),
    '47'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5610',
    TO_DATE('24/12/18', 'DD/MM/RR'),
    '86'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5611',
    TO_DATE('15/02/19', 'DD/MM/RR'),
    '89'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5612',
    TO_DATE('11/09/19', 'DD/MM/RR'),
    '22'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5613',
    TO_DATE('16/01/20', 'DD/MM/RR'),
    '40'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5614',
    TO_DATE('18/07/20', 'DD/MM/RR'),
    '58'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5615',
    TO_DATE('16/12/19', 'DD/MM/RR'),
    '66'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5616',
    TO_DATE('18/05/20', 'DD/MM/RR'),
    '97'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5617',
    TO_DATE('20/02/19', 'DD/MM/RR'),
    '17'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5618',
    TO_DATE('12/05/19', 'DD/MM/RR'),
    '14'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5619',
    TO_DATE('19/04/20', 'DD/MM/RR'),
    '65'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5620',
    TO_DATE('15/07/19', 'DD/MM/RR'),
    '34'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5621',
    TO_DATE('19/02/20', 'DD/MM/RR'),
    '15'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5622',
    TO_DATE('26/02/20', 'DD/MM/RR'),
    '43'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5623',
    TO_DATE('30/05/19', 'DD/MM/RR'),
    '21'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5624',
    TO_DATE('05/06/20', 'DD/MM/RR'),
    '93'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5625',
    TO_DATE('21/04/20', 'DD/MM/RR'),
    '8'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5626',
    TO_DATE('09/06/20', 'DD/MM/RR'),
    '4'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5627',
    TO_DATE('21/02/19', 'DD/MM/RR'),
    '14'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5628',
    TO_DATE('23/07/20', 'DD/MM/RR'),
    '18'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5629',
    TO_DATE('29/12/19', 'DD/MM/RR'),
    '88'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5630',
    TO_DATE('19/05/20', 'DD/MM/RR'),
    '18'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5631',
    TO_DATE('03/04/19', 'DD/MM/RR'),
    '6'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5632',
    TO_DATE('01/10/19', 'DD/MM/RR'),
    '42'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5633',
    TO_DATE('16/10/20', 'DD/MM/RR'),
    '29'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5634',
    TO_DATE('10/03/20', 'DD/MM/RR'),
    '93'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5635',
    TO_DATE('10/03/20', 'DD/MM/RR'),
    '87'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5636',
    TO_DATE('10/06/20', 'DD/MM/RR'),
    '18'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5637',
    TO_DATE('08/10/20', 'DD/MM/RR'),
    '91'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5638',
    TO_DATE('18/04/19', 'DD/MM/RR'),
    '72'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5639',
    TO_DATE('11/11/19', 'DD/MM/RR'),
    '1'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5640',
    TO_DATE('27/11/19', 'DD/MM/RR'),
    '82'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5641',
    TO_DATE('04/01/20', 'DD/MM/RR'),
    '39'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5642',
    TO_DATE('06/04/20', 'DD/MM/RR'),
    '39'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5643',
    TO_DATE('15/07/19', 'DD/MM/RR'),
    '48'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5644',
    TO_DATE('04/10/19', 'DD/MM/RR'),
    '63'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5645',
    TO_DATE('23/02/20', 'DD/MM/RR'),
    '38'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5646',
    TO_DATE('12/01/19', 'DD/MM/RR'),
    '12'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5647',
    TO_DATE('21/07/20', 'DD/MM/RR'),
    '9'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5648',
    TO_DATE('04/12/19', 'DD/MM/RR'),
    '37'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5649',
    TO_DATE('20/02/19', 'DD/MM/RR'),
    '46'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5650',
    TO_DATE('19/09/20', 'DD/MM/RR'),
    '57'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5651',
    TO_DATE('26/10/19', 'DD/MM/RR'),
    '40'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5652',
    TO_DATE('02/08/19', 'DD/MM/RR'),
    '61'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5653',
    TO_DATE('31/07/19', 'DD/MM/RR'),
    '54'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5654',
    TO_DATE('13/09/19', 'DD/MM/RR'),
    '59'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5655',
    TO_DATE('16/12/20', 'DD/MM/RR'),
    '22'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5656',
    TO_DATE('02/11/19', 'DD/MM/RR'),
    '76'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5657',
    TO_DATE('07/12/20', 'DD/MM/RR'),
    '35'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5658',
    TO_DATE('29/04/19', 'DD/MM/RR'),
    '19'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5659',
    TO_DATE('04/03/20', 'DD/MM/RR'),
    '27'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5660',
    TO_DATE('26/04/20', 'DD/MM/RR'),
    '6'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5661',
    TO_DATE('28/11/19', 'DD/MM/RR'),
    '43'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5662',
    TO_DATE('06/02/19', 'DD/MM/RR'),
    '99'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5663',
    TO_DATE('01/12/19', 'DD/MM/RR'),
    '57'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5664',
    TO_DATE('02/01/19', 'DD/MM/RR'),
    '60'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5665',
    TO_DATE('27/02/19', 'DD/MM/RR'),
    '26'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5666',
    TO_DATE('13/03/19', 'DD/MM/RR'),
    '89'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5667',
    TO_DATE('22/03/20', 'DD/MM/RR'),
    '55'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5668',
    TO_DATE('29/01/20', 'DD/MM/RR'),
    '34'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5669',
    TO_DATE('20/02/20', 'DD/MM/RR'),
    '90'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5670',
    TO_DATE('24/02/20', 'DD/MM/RR'),
    '96'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5671',
    TO_DATE('11/04/19', 'DD/MM/RR'),
    '4'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5672',
    TO_DATE('17/04/19', 'DD/MM/RR'),
    '30'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5673',
    TO_DATE('28/03/20', 'DD/MM/RR'),
    '60'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5674',
    TO_DATE('04/06/20', 'DD/MM/RR'),
    '8'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5675',
    TO_DATE('20/10/19', 'DD/MM/RR'),
    '70'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5676',
    TO_DATE('10/10/19', 'DD/MM/RR'),
    '83'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5677',
    TO_DATE('13/07/19', 'DD/MM/RR'),
    '21'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5678',
    TO_DATE('29/11/19', 'DD/MM/RR'),
    '27'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5679',
    TO_DATE('29/09/19', 'DD/MM/RR'),
    '42'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5680',
    TO_DATE('24/10/20', 'DD/MM/RR'),
    '31'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5681',
    TO_DATE('08/10/20', 'DD/MM/RR'),
    '48'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5682',
    TO_DATE('22/12/19', 'DD/MM/RR'),
    '47'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5683',
    TO_DATE('22/03/19', 'DD/MM/RR'),
    '77'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5684',
    TO_DATE('29/10/20', 'DD/MM/RR'),
    '65'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5685',
    TO_DATE('04/09/20', 'DD/MM/RR'),
    '95'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5686',
    TO_DATE('05/11/19', 'DD/MM/RR'),
    '47'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5687',
    TO_DATE('25/11/20', 'DD/MM/RR'),
    '2'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5688',
    TO_DATE('16/11/19', 'DD/MM/RR'),
    '57'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5689',
    TO_DATE('18/01/20', 'DD/MM/RR'),
    '19'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5690',
    TO_DATE('10/12/19', 'DD/MM/RR'),
    '2'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5691',
    TO_DATE('04/01/19', 'DD/MM/RR'),
    '100'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5692',
    TO_DATE('26/12/19', 'DD/MM/RR'),
    '43'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5693',
    TO_DATE('24/05/20', 'DD/MM/RR'),
    '18'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5694',
    TO_DATE('11/10/20', 'DD/MM/RR'),
    '49'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5695',
    TO_DATE('29/08/19', 'DD/MM/RR'),
    '68'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5696',
    TO_DATE('06/02/19', 'DD/MM/RR'),
    '24'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5697',
    TO_DATE('14/11/19', 'DD/MM/RR'),
    '88'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5698',
    TO_DATE('27/11/19', 'DD/MM/RR'),
    '31'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5699',
    TO_DATE('18/10/19', 'DD/MM/RR'),
    '25'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5700',
    TO_DATE('09/03/20', 'DD/MM/RR'),
    '16'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5701',
    TO_DATE('21/04/19', 'DD/MM/RR'),
    '22'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5702',
    TO_DATE('11/06/19', 'DD/MM/RR'),
    '11'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5703',
    TO_DATE('24/05/20', 'DD/MM/RR'),
    '13'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5704',
    TO_DATE('19/02/19', 'DD/MM/RR'),
    '41'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5705',
    TO_DATE('13/09/19', 'DD/MM/RR'),
    '17'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5706',
    TO_DATE('06/06/19', 'DD/MM/RR'),
    '2'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5707',
    TO_DATE('11/05/19', 'DD/MM/RR'),
    '33'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5708',
    TO_DATE('05/12/20', 'DD/MM/RR'),
    '37'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5709',
    TO_DATE('10/01/20', 'DD/MM/RR'),
    '31'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5710',
    TO_DATE('12/06/20', 'DD/MM/RR'),
    '43'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5711',
    TO_DATE('17/10/19', 'DD/MM/RR'),
    '41'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5712',
    TO_DATE('07/09/20', 'DD/MM/RR'),
    '35'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5713',
    TO_DATE('19/07/20', 'DD/MM/RR'),
    '2'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5714',
    TO_DATE('27/02/19', 'DD/MM/RR'),
    '45'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5715',
    TO_DATE('07/11/19', 'DD/MM/RR'),
    '2'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5716',
    TO_DATE('11/10/20', 'DD/MM/RR'),
    '48'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5717',
    TO_DATE('08/01/20', 'DD/MM/RR'),
    '49'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5718',
    TO_DATE('12/02/20', 'DD/MM/RR'),
    '25'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5719',
    TO_DATE('14/03/20', 'DD/MM/RR'),
    '43'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5720',
    TO_DATE('25/02/20', 'DD/MM/RR'),
    '24'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5721',
    TO_DATE('08/10/20', 'DD/MM/RR'),
    '44'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5722',
    TO_DATE('21/07/19', 'DD/MM/RR'),
    '12'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5723',
    TO_DATE('27/08/20', 'DD/MM/RR'),
    '44'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5724',
    TO_DATE('01/08/19', 'DD/MM/RR'),
    '35'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5725',
    TO_DATE('11/12/20', 'DD/MM/RR'),
    '32'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5726',
    TO_DATE('31/05/19', 'DD/MM/RR'),
    '18'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5727',
    TO_DATE('18/01/19', 'DD/MM/RR'),
    '19'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5728',
    TO_DATE('28/08/20', 'DD/MM/RR'),
    '23'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5729',
    TO_DATE('05/07/19', 'DD/MM/RR'),
    '44'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5730',
    TO_DATE('16/04/19', 'DD/MM/RR'),
    '39'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5731',
    TO_DATE('18/01/19', 'DD/MM/RR'),
    '7'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5732',
    TO_DATE('23/06/19', 'DD/MM/RR'),
    '40'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5733',
    TO_DATE('16/08/20', 'DD/MM/RR'),
    '10'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5734',
    TO_DATE('30/11/19', 'DD/MM/RR'),
    '45'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5735',
    TO_DATE('10/02/19', 'DD/MM/RR'),
    '50'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5736',
    TO_DATE('31/05/20', 'DD/MM/RR'),
    '22'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5737',
    TO_DATE('06/11/20', 'DD/MM/RR'),
    '6'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5738',
    TO_DATE('19/04/19', 'DD/MM/RR'),
    '37'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5739',
    TO_DATE('14/04/19', 'DD/MM/RR'),
    '50'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5740',
    TO_DATE('16/01/20', 'DD/MM/RR'),
    '33'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5741',
    TO_DATE('08/08/20', 'DD/MM/RR'),
    '5'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5742',
    TO_DATE('27/09/19', 'DD/MM/RR'),
    '37'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5743',
    TO_DATE('17/11/19', 'DD/MM/RR'),
    '50'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5744',
    TO_DATE('21/09/19', 'DD/MM/RR'),
    '35'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5745',
    TO_DATE('06/03/20', 'DD/MM/RR'),
    '49'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5746',
    TO_DATE('06/03/19', 'DD/MM/RR'),
    '5'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5747',
    TO_DATE('10/06/19', 'DD/MM/RR'),
    '49'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5748',
    TO_DATE('10/08/19', 'DD/MM/RR'),
    '18'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5749',
    TO_DATE('22/01/19', 'DD/MM/RR'),
    '19'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5750',
    TO_DATE('24/04/19', 'DD/MM/RR'),
    '41'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5751',
    TO_DATE('09/11/20', 'DD/MM/RR'),
    '24'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5752',
    TO_DATE('18/04/19', 'DD/MM/RR'),
    '29'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5753',
    TO_DATE('22/12/19', 'DD/MM/RR'),
    '15'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5754',
    TO_DATE('08/09/19', 'DD/MM/RR'),
    '44'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5755',
    TO_DATE('27/03/19', 'DD/MM/RR'),
    '8'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5756',
    TO_DATE('16/01/20', 'DD/MM/RR'),
    '33'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5757',
    TO_DATE('06/09/19', 'DD/MM/RR'),
    '17'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5758',
    TO_DATE('30/05/19', 'DD/MM/RR'),
    '6'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5759',
    TO_DATE('17/05/19', 'DD/MM/RR'),
    '9'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5760',
    TO_DATE('27/07/19', 'DD/MM/RR'),
    '18'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5761',
    TO_DATE('24/02/19', 'DD/MM/RR'),
    '15'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5762',
    TO_DATE('20/06/19', 'DD/MM/RR'),
    '32'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5763',
    TO_DATE('02/11/19', 'DD/MM/RR'),
    '31'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5764',
    TO_DATE('29/07/20', 'DD/MM/RR'),
    '15'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5765',
    TO_DATE('07/04/19', 'DD/MM/RR'),
    '12'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5766',
    TO_DATE('01/08/19', 'DD/MM/RR'),
    '49'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5767',
    TO_DATE('26/12/18', 'DD/MM/RR'),
    '40'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5768',
    TO_DATE('04/04/20', 'DD/MM/RR'),
    '41'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5769',
    TO_DATE('17/01/19', 'DD/MM/RR'),
    '48'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5770',
    TO_DATE('10/04/19', 'DD/MM/RR'),
    '27'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5771',
    TO_DATE('07/06/19', 'DD/MM/RR'),
    '39'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5772',
    TO_DATE('21/10/19', 'DD/MM/RR'),
    '36'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5773',
    TO_DATE('08/01/19', 'DD/MM/RR'),
    '44'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5774',
    TO_DATE('12/11/20', 'DD/MM/RR'),
    '16'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5775',
    TO_DATE('08/01/20', 'DD/MM/RR'),
    '26'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5776',
    TO_DATE('27/07/19', 'DD/MM/RR'),
    '8'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5777',
    TO_DATE('09/03/20', 'DD/MM/RR'),
    '35'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5778',
    TO_DATE('29/01/20', 'DD/MM/RR'),
    '49'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5779',
    TO_DATE('26/10/19', 'DD/MM/RR'),
    '31'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5780',
    TO_DATE('06/07/20', 'DD/MM/RR'),
    '34'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5781',
    TO_DATE('17/09/19', 'DD/MM/RR'),
    '33'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5782',
    TO_DATE('05/12/20', 'DD/MM/RR'),
    '20'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5783',
    TO_DATE('14/07/20', 'DD/MM/RR'),
    '1'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5784',
    TO_DATE('06/01/20', 'DD/MM/RR'),
    '29'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5785',
    TO_DATE('19/10/20', 'DD/MM/RR'),
    '12'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5786',
    TO_DATE('07/12/19', 'DD/MM/RR'),
    '24'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5787',
    TO_DATE('16/11/19', 'DD/MM/RR'),
    '47'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5788',
    TO_DATE('24/08/20', 'DD/MM/RR'),
    '4'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5789',
    TO_DATE('11/11/20', 'DD/MM/RR'),
    '30'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5790',
    TO_DATE('16/10/19', 'DD/MM/RR'),
    '46'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5791',
    TO_DATE('21/05/20', 'DD/MM/RR'),
    '38'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5792',
    TO_DATE('13/05/20', 'DD/MM/RR'),
    '20'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5793',
    TO_DATE('02/01/20', 'DD/MM/RR'),
    '20'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5794',
    TO_DATE('16/02/19', 'DD/MM/RR'),
    '3'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5795',
    TO_DATE('26/04/20', 'DD/MM/RR'),
    '11'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5796',
    TO_DATE('15/07/20', 'DD/MM/RR'),
    '37'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5797',
    TO_DATE('23/03/20', 'DD/MM/RR'),
    '21'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5798',
    TO_DATE('02/12/19', 'DD/MM/RR'),
    '13'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5799',
    TO_DATE('05/03/20', 'DD/MM/RR'),
    '4'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5800',
    TO_DATE('06/02/20', 'DD/MM/RR'),
    '96'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5801',
    TO_DATE('20/01/20', 'DD/MM/RR'),
    '66'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5802',
    TO_DATE('16/11/19', 'DD/MM/RR'),
    '66'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5803',
    TO_DATE('27/09/19', 'DD/MM/RR'),
    '72'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5804',
    TO_DATE('21/05/19', 'DD/MM/RR'),
    '74'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5805',
    TO_DATE('26/10/19', 'DD/MM/RR'),
    '52'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5806',
    TO_DATE('26/11/19', 'DD/MM/RR'),
    '55'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5807',
    TO_DATE('14/04/20', 'DD/MM/RR'),
    '74'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5808',
    TO_DATE('20/02/20', 'DD/MM/RR'),
    '84'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5809',
    TO_DATE('26/03/20', 'DD/MM/RR'),
    '68'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5810',
    TO_DATE('13/11/19', 'DD/MM/RR'),
    '90'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5811',
    TO_DATE('26/04/20', 'DD/MM/RR'),
    '71'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5812',
    TO_DATE('09/09/20', 'DD/MM/RR'),
    '70'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5813',
    TO_DATE('28/08/20', 'DD/MM/RR'),
    '89'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5814',
    TO_DATE('03/04/19', 'DD/MM/RR'),
    '76'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5815',
    TO_DATE('24/07/19', 'DD/MM/RR'),
    '83'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5816',
    TO_DATE('01/02/19', 'DD/MM/RR'),
    '86'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5817',
    TO_DATE('19/03/20', 'DD/MM/RR'),
    '85'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5818',
    TO_DATE('16/07/19', 'DD/MM/RR'),
    '94'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5819',
    TO_DATE('12/09/20', 'DD/MM/RR'),
    '100'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5820',
    TO_DATE('25/10/20', 'DD/MM/RR'),
    '95'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5821',
    TO_DATE('22/05/19', 'DD/MM/RR'),
    '58'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5822',
    TO_DATE('24/08/19', 'DD/MM/RR'),
    '56'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5823',
    TO_DATE('07/03/20', 'DD/MM/RR'),
    '52'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5824',
    TO_DATE('22/04/19', 'DD/MM/RR'),
    '57'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5825',
    TO_DATE('19/04/19', 'DD/MM/RR'),
    '74'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5826',
    TO_DATE('21/09/20', 'DD/MM/RR'),
    '58'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5827',
    TO_DATE('25/05/19', 'DD/MM/RR'),
    '82'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5828',
    TO_DATE('18/06/19', 'DD/MM/RR'),
    '90'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5829',
    TO_DATE('05/02/19', 'DD/MM/RR'),
    '92'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5830',
    TO_DATE('03/04/19', 'DD/MM/RR'),
    '87'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5831',
    TO_DATE('03/09/19', 'DD/MM/RR'),
    '62'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5832',
    TO_DATE('16/02/19', 'DD/MM/RR'),
    '79'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5833',
    TO_DATE('26/02/20', 'DD/MM/RR'),
    '78'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5834',
    TO_DATE('15/12/20', 'DD/MM/RR'),
    '56'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5835',
    TO_DATE('07/01/20', 'DD/MM/RR'),
    '88'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5836',
    TO_DATE('31/01/20', 'DD/MM/RR'),
    '91'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5837',
    TO_DATE('22/07/19', 'DD/MM/RR'),
    '66'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5838',
    TO_DATE('30/06/19', 'DD/MM/RR'),
    '70'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5839',
    TO_DATE('05/11/19', 'DD/MM/RR'),
    '61'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5840',
    TO_DATE('13/06/20', 'DD/MM/RR'),
    '54'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5841',
    TO_DATE('15/04/19', 'DD/MM/RR'),
    '77'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5842',
    TO_DATE('23/09/20', 'DD/MM/RR'),
    '92'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5843',
    TO_DATE('16/03/20', 'DD/MM/RR'),
    '56'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5844',
    TO_DATE('24/03/20', 'DD/MM/RR'),
    '63'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5845',
    TO_DATE('01/06/20', 'DD/MM/RR'),
    '69'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5846',
    TO_DATE('26/08/19', 'DD/MM/RR'),
    '84'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5847',
    TO_DATE('24/03/20', 'DD/MM/RR'),
    '91'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5848',
    TO_DATE('31/07/19', 'DD/MM/RR'),
    '83'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5849',
    TO_DATE('21/04/19', 'DD/MM/RR'),
    '66'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5850',
    TO_DATE('04/10/19', 'DD/MM/RR'),
    '97'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5851',
    TO_DATE('30/04/19', 'DD/MM/RR'),
    '63'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5852',
    TO_DATE('13/10/19', 'DD/MM/RR'),
    '92'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5853',
    TO_DATE('06/09/19', 'DD/MM/RR'),
    '73'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5854',
    TO_DATE('06/02/19', 'DD/MM/RR'),
    '78'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5855',
    TO_DATE('09/07/19', 'DD/MM/RR'),
    '68'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5856',
    TO_DATE('29/05/19', 'DD/MM/RR'),
    '94'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5857',
    TO_DATE('14/10/19', 'DD/MM/RR'),
    '89'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5858',
    TO_DATE('18/02/19', 'DD/MM/RR'),
    '83'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5859',
    TO_DATE('24/11/19', 'DD/MM/RR'),
    '91'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5860',
    TO_DATE('14/10/20', 'DD/MM/RR'),
    '55'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5861',
    TO_DATE('01/04/20', 'DD/MM/RR'),
    '79'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5862',
    TO_DATE('16/06/19', 'DD/MM/RR'),
    '77'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5863',
    TO_DATE('18/05/19', 'DD/MM/RR'),
    '86'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5864',
    TO_DATE('21/08/20', 'DD/MM/RR'),
    '61'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5865',
    TO_DATE('11/04/19', 'DD/MM/RR'),
    '96'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5866',
    TO_DATE('06/03/20', 'DD/MM/RR'),
    '53'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5867',
    TO_DATE('28/11/19', 'DD/MM/RR'),
    '63'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5868',
    TO_DATE('09/03/19', 'DD/MM/RR'),
    '75'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5869',
    TO_DATE('27/01/20', 'DD/MM/RR'),
    '87'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5870',
    TO_DATE('14/08/20', 'DD/MM/RR'),
    '97'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5871',
    TO_DATE('19/02/19', 'DD/MM/RR'),
    '96'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5872',
    TO_DATE('06/01/20', 'DD/MM/RR'),
    '70'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5873',
    TO_DATE('05/11/19', 'DD/MM/RR'),
    '91'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5874',
    TO_DATE('01/08/19', 'DD/MM/RR'),
    '62'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5875',
    TO_DATE('07/06/20', 'DD/MM/RR'),
    '88'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5876',
    TO_DATE('30/05/20', 'DD/MM/RR'),
    '76'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5877',
    TO_DATE('22/06/20', 'DD/MM/RR'),
    '70'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5878',
    TO_DATE('21/10/20', 'DD/MM/RR'),
    '62'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5879',
    TO_DATE('17/02/20', 'DD/MM/RR'),
    '96'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5880',
    TO_DATE('20/09/20', 'DD/MM/RR'),
    '58'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5881',
    TO_DATE('05/04/20', 'DD/MM/RR'),
    '71'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5882',
    TO_DATE('30/08/20', 'DD/MM/RR'),
    '79'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5883',
    TO_DATE('02/07/20', 'DD/MM/RR'),
    '75'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5884',
    TO_DATE('06/04/20', 'DD/MM/RR'),
    '84'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5885',
    TO_DATE('02/02/19', 'DD/MM/RR'),
    '52'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5886',
    TO_DATE('04/07/20', 'DD/MM/RR'),
    '94'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5887',
    TO_DATE('24/05/20', 'DD/MM/RR'),
    '93'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5888',
    TO_DATE('24/10/19', 'DD/MM/RR'),
    '72'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5889',
    TO_DATE('28/07/20', 'DD/MM/RR'),
    '61'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5890',
    TO_DATE('28/08/20', 'DD/MM/RR'),
    '79'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5891',
    TO_DATE('17/03/19', 'DD/MM/RR'),
    '82'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5892',
    TO_DATE('20/08/20', 'DD/MM/RR'),
    '92'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5893',
    TO_DATE('15/03/19', 'DD/MM/RR'),
    '94'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5894',
    TO_DATE('26/02/19', 'DD/MM/RR'),
    '81'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5895',
    TO_DATE('02/08/19', 'DD/MM/RR'),
    '57'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5896',
    TO_DATE('03/02/20', 'DD/MM/RR'),
    '72'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5897',
    TO_DATE('14/08/19', 'DD/MM/RR'),
    '81'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5898',
    TO_DATE('02/10/20', 'DD/MM/RR'),
    '100'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5899',
    TO_DATE('13/07/19', 'DD/MM/RR'),
    '93'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5900',
    TO_DATE('02/02/19', 'DD/MM/RR'),
    '17'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5901',
    TO_DATE('06/08/20', 'DD/MM/RR'),
    '40'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5902',
    TO_DATE('05/01/20', 'DD/MM/RR'),
    '33'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5903',
    TO_DATE('13/08/20', 'DD/MM/RR'),
    '74'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5904',
    TO_DATE('17/03/20', 'DD/MM/RR'),
    '82'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5905',
    TO_DATE('22/04/19', 'DD/MM/RR'),
    '8'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5906',
    TO_DATE('16/09/20', 'DD/MM/RR'),
    '75'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5907',
    TO_DATE('18/09/20', 'DD/MM/RR'),
    '72'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5908',
    TO_DATE('23/07/19', 'DD/MM/RR'),
    '25'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5909',
    TO_DATE('15/05/20', 'DD/MM/RR'),
    '44'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5910',
    TO_DATE('04/06/20', 'DD/MM/RR'),
    '68'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5911',
    TO_DATE('21/03/20', 'DD/MM/RR'),
    '29'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5912',
    TO_DATE('04/03/20', 'DD/MM/RR'),
    '9'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5913',
    TO_DATE('15/01/20', 'DD/MM/RR'),
    '12'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5914',
    TO_DATE('04/12/19', 'DD/MM/RR'),
    '9'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5915',
    TO_DATE('26/09/19', 'DD/MM/RR'),
    '87'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5916',
    TO_DATE('11/07/19', 'DD/MM/RR'),
    '1'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5917',
    TO_DATE('23/04/20', 'DD/MM/RR'),
    '18'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5918',
    TO_DATE('27/10/20', 'DD/MM/RR'),
    '53'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5919',
    TO_DATE('29/09/20', 'DD/MM/RR'),
    '56'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5920',
    TO_DATE('28/01/19', 'DD/MM/RR'),
    '6'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5921',
    TO_DATE('14/04/19', 'DD/MM/RR'),
    '76'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5922',
    TO_DATE('24/04/20', 'DD/MM/RR'),
    '40'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5923',
    TO_DATE('18/04/20', 'DD/MM/RR'),
    '78'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5924',
    TO_DATE('22/08/20', 'DD/MM/RR'),
    '19'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5925',
    TO_DATE('02/07/20', 'DD/MM/RR'),
    '72'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5926',
    TO_DATE('16/03/20', 'DD/MM/RR'),
    '24'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5927',
    TO_DATE('22/06/20', 'DD/MM/RR'),
    '23'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5928',
    TO_DATE('17/11/20', 'DD/MM/RR'),
    '87'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5929',
    TO_DATE('19/07/19', 'DD/MM/RR'),
    '44'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5930',
    TO_DATE('07/09/20', 'DD/MM/RR'),
    '33'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5931',
    TO_DATE('17/09/19', 'DD/MM/RR'),
    '95'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5932',
    TO_DATE('12/07/19', 'DD/MM/RR'),
    '31'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5933',
    TO_DATE('26/05/20', 'DD/MM/RR'),
    '7'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5934',
    TO_DATE('17/08/19', 'DD/MM/RR'),
    '92'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5935',
    TO_DATE('14/08/20', 'DD/MM/RR'),
    '61'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5936',
    TO_DATE('01/08/20', 'DD/MM/RR'),
    '27'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5937',
    TO_DATE('31/01/20', 'DD/MM/RR'),
    '38'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5938',
    TO_DATE('20/11/19', 'DD/MM/RR'),
    '19'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5939',
    TO_DATE('04/08/20', 'DD/MM/RR'),
    '100'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5940',
    TO_DATE('24/12/18', 'DD/MM/RR'),
    '71'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5941',
    TO_DATE('26/01/19', 'DD/MM/RR'),
    '71'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5942',
    TO_DATE('15/07/19', 'DD/MM/RR'),
    '73'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5943',
    TO_DATE('10/01/19', 'DD/MM/RR'),
    '44'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5944',
    TO_DATE('28/09/20', 'DD/MM/RR'),
    '2'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5945',
    TO_DATE('18/01/20', 'DD/MM/RR'),
    '21'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5946',
    TO_DATE('06/05/20', 'DD/MM/RR'),
    '50'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5947',
    TO_DATE('07/01/19', 'DD/MM/RR'),
    '78'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5948',
    TO_DATE('16/11/20', 'DD/MM/RR'),
    '69'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5949',
    TO_DATE('25/03/20', 'DD/MM/RR'),
    '2'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5950',
    TO_DATE('27/04/19', 'DD/MM/RR'),
    '84'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5951',
    TO_DATE('30/06/19', 'DD/MM/RR'),
    '9'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5952',
    TO_DATE('19/04/20', 'DD/MM/RR'),
    '23'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5953',
    TO_DATE('27/11/20', 'DD/MM/RR'),
    '55'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5954',
    TO_DATE('09/09/19', 'DD/MM/RR'),
    '27'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5955',
    TO_DATE('13/08/19', 'DD/MM/RR'),
    '24'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5956',
    TO_DATE('31/12/18', 'DD/MM/RR'),
    '37'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5957',
    TO_DATE('23/04/20', 'DD/MM/RR'),
    '81'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5958',
    TO_DATE('21/10/19', 'DD/MM/RR'),
    '13'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5959',
    TO_DATE('06/04/20', 'DD/MM/RR'),
    '22'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5960',
    TO_DATE('14/03/20', 'DD/MM/RR'),
    '100'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5961',
    TO_DATE('07/05/19', 'DD/MM/RR'),
    '69'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5962',
    TO_DATE('26/01/20', 'DD/MM/RR'),
    '85'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5963',
    TO_DATE('29/10/20', 'DD/MM/RR'),
    '41'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5964',
    TO_DATE('16/04/19', 'DD/MM/RR'),
    '68'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5965',
    TO_DATE('17/10/19', 'DD/MM/RR'),
    '12'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5966',
    TO_DATE('14/05/20', 'DD/MM/RR'),
    '73'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5967',
    TO_DATE('16/12/20', 'DD/MM/RR'),
    '98'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5968',
    TO_DATE('22/03/19', 'DD/MM/RR'),
    '70'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5969',
    TO_DATE('28/03/19', 'DD/MM/RR'),
    '96'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5970',
    TO_DATE('15/04/20', 'DD/MM/RR'),
    '81'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5971',
    TO_DATE('05/10/20', 'DD/MM/RR'),
    '3'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5972',
    TO_DATE('18/12/20', 'DD/MM/RR'),
    '53'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5973',
    TO_DATE('24/11/20', 'DD/MM/RR'),
    '92'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5974',
    TO_DATE('28/09/19', 'DD/MM/RR'),
    '51'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5975',
    TO_DATE('05/07/20', 'DD/MM/RR'),
    '65'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5976',
    TO_DATE('31/12/19', 'DD/MM/RR'),
    '83'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5977',
    TO_DATE('04/10/20', 'DD/MM/RR'),
    '47'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5978',
    TO_DATE('11/11/20', 'DD/MM/RR'),
    '84'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5979',
    TO_DATE('23/07/20', 'DD/MM/RR'),
    '54'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5980',
    TO_DATE('24/01/20', 'DD/MM/RR'),
    '29'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5981',
    TO_DATE('12/11/20', 'DD/MM/RR'),
    '87'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5982',
    TO_DATE('05/07/19', 'DD/MM/RR'),
    '1'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5983',
    TO_DATE('27/10/20', 'DD/MM/RR'),
    '10'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5984',
    TO_DATE('15/08/20', 'DD/MM/RR'),
    '64'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5985',
    TO_DATE('16/09/20', 'DD/MM/RR'),
    '65'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5986',
    TO_DATE('11/05/19', 'DD/MM/RR'),
    '53'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5987',
    TO_DATE('20/05/20', 'DD/MM/RR'),
    '47'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5988',
    TO_DATE('06/03/20', 'DD/MM/RR'),
    '88'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5989',
    TO_DATE('23/09/20', 'DD/MM/RR'),
    '67'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5990',
    TO_DATE('18/03/20', 'DD/MM/RR'),
    '28'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5991',
    TO_DATE('01/04/20', 'DD/MM/RR'),
    '65'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5992',
    TO_DATE('20/02/20', 'DD/MM/RR'),
    '38'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5993',
    TO_DATE('17/07/19', 'DD/MM/RR'),
    '82'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5994',
    TO_DATE('07/03/20', 'DD/MM/RR'),
    '52'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5995',
    TO_DATE('25/10/20', 'DD/MM/RR'),
    '57'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5996',
    TO_DATE('03/11/19', 'DD/MM/RR'),
    '5'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5997',
    TO_DATE('25/12/18', 'DD/MM/RR'),
    '38'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5998',
    TO_DATE('15/10/19', 'DD/MM/RR'),
    '4'
);

INSERT INTO factura (
    id_factura,
    fecha,
    id_cliente
) VALUES (
    '5999',
    TO_DATE('05/03/19', 'DD/MM/RR'),
    '61'
);

-----

INSERT INTO proveedor (
    id_proveedor,
    nombre,
    apellido,
    telefono
) VALUES (
    '1',
    'Stewart',
    'Terry',
    '(919) 943-3542'
);

INSERT INTO proveedor (
    id_proveedor,
    nombre,
    apellido,
    telefono
) VALUES (
    '2',
    'Reece',
    'Roman',
    '(395) 716-2723'
);

INSERT INTO proveedor (
    id_proveedor,
    nombre,
    apellido,
    telefono
) VALUES (
    '3',
    'Ora',
    'Short',
    '(779) 963-2848'
);

INSERT INTO proveedor (
    id_proveedor,
    nombre,
    apellido,
    telefono
) VALUES (
    '4',
    'Samson',
    'Reyes',
    '(201) 277-6126'
);

INSERT INTO proveedor (
    id_proveedor,
    nombre,
    apellido,
    telefono
) VALUES (
    '5',
    'Blake',
    'Peck',
    '(714) 929-6158'
);

INSERT INTO proveedor (
    id_proveedor,
    nombre,
    apellido,
    telefono
) VALUES (
    '6',
    'Maisie',
    'Finley',
    '(434) 704-6054'
);

INSERT INTO proveedor (
    id_proveedor,
    nombre,
    apellido,
    telefono
) VALUES (
    '7',
    'Dawn',
    'Simmons',
    '(208) 214-8101'
);

INSERT INTO proveedor (
    id_proveedor,
    nombre,
    apellido,
    telefono
) VALUES (
    '8',
    'Meghan',
    'Jennings',
    '(579) 296-1937'
);

INSERT INTO proveedor (
    id_proveedor,
    nombre,
    apellido,
    telefono
) VALUES (
    '9',
    'Carter',
    'Scott',
    '(404) 104-4172'
);

INSERT INTO proveedor (
    id_proveedor,
    nombre,
    apellido,
    telefono
) VALUES (
    '10',
    'Sloane',
    'Haley',
    '(393) 711-1111'
);

INSERT INTO proveedor (
    id_proveedor,
    nombre,
    apellido,
    telefono
) VALUES (
    '11',
    'Aretha',
    'Wall',
    '(929) 854-6712'
);

INSERT INTO proveedor (
    id_proveedor,
    nombre,
    apellido,
    telefono
) VALUES (
    '12',
    'Tanner',
    'Dominguez',
    '(556) 762-4299'
);

INSERT INTO proveedor (
    id_proveedor,
    nombre,
    apellido,
    telefono
) VALUES (
    '13',
    'Katelyn',
    'Moon',
    '(692) 249-2412'
);

INSERT INTO proveedor (
    id_proveedor,
    nombre,
    apellido,
    telefono
) VALUES (
    '14',
    'Brynn',
    'Mays',
    '(157) 337-0003'
);

INSERT INTO proveedor (
    id_proveedor,
    nombre,
    apellido,
    telefono
) VALUES (
    '15',
    'Holmes',
    'Beard',
    '(215) 335-5771'
);

INSERT INTO proveedor (
    id_proveedor,
    nombre,
    apellido,
    telefono
) VALUES (
    '16',
    'Elvis',
    'Mcintyre',
    '(681) 762-1248'
);

INSERT INTO proveedor (
    id_proveedor,
    nombre,
    apellido,
    telefono
) VALUES (
    '17',
    'Zane',
    'Slater',
    '(567) 869-8886'
);

INSERT INTO proveedor (
    id_proveedor,
    nombre,
    apellido,
    telefono
) VALUES (
    '18',
    'Kane',
    'Weaver',
    '(573) 550-2598'
);

INSERT INTO proveedor (
    id_proveedor,
    nombre,
    apellido,
    telefono
) VALUES (
    '19',
    'Pandora',
    'Carter',
    '(888) 958-8576'
);

INSERT INTO proveedor (
    id_proveedor,
    nombre,
    apellido,
    telefono
) VALUES (
    '20',
    'Amy',
    'Mejia',
    '(669) 518-7415'
);

---

INSERT INTO categoria (
    id_categoria,
    descripcion
) VALUES (
    '1',
    'magnis'
);

INSERT INTO categoria (
    id_categoria,
    descripcion
) VALUES (
    '2',
    'ipsum'
);

INSERT INTO categoria (
    id_categoria,
    descripcion
) VALUES (
    '3',
    'nec'
);

INSERT INTO categoria (
    id_categoria,
    descripcion
) VALUES (
    '4',
    'erat,'
);

INSERT INTO categoria (
    id_categoria,
    descripcion
) VALUES (
    '5',
    'at'
);

INSERT INTO categoria (
    id_categoria,
    descripcion
) VALUES (
    '6',
    'magna'
);

INSERT INTO categoria (
    id_categoria,
    descripcion
) VALUES (
    '7',
    'quis'
);

INSERT INTO categoria (
    id_categoria,
    descripcion
) VALUES (
    '8',
    'auctor'
);

INSERT INTO categoria (
    id_categoria,
    descripcion
) VALUES (
    '9',
    'urna.'
);

INSERT INTO categoria (
    id_categoria,
    descripcion
) VALUES (
    '10',
    'Nulla'
);

---

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '1',
    'sagittis augue',
    '9,02',
    '3',
    '8'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '2',
    'Lorem ipsum',
    '6,58',
    '7',
    '10'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '3',
    'enim Mauris',
    '73,82',
    '2',
    '4'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '4',
    'vel, vulputate',
    '36,75',
    '8',
    '2'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '5',
    'lorem vitae',
    '58,36',
    '2',
    '4'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '6',
    'faucibus Morbi',
    '29,94',
    '4',
    '1'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '7',
    'blandit mattis',
    '73,92',
    '1',
    '10'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '8',
    'sagittis. Nullam',
    '62,04',
    '7',
    '4'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '9',
    'semper tellus',
    '79,45',
    '2',
    '7'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '10',
    'ornare. Fusce',
    '56,2',
    '7',
    '9'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '11',
    'Cras convallis',
    '15,22',
    '5',
    '4'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '12',
    'ante ipsum',
    '50,04',
    '6',
    '7'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '13',
    'nec urna',
    '17',
    '7',
    '7'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '14',
    'turpis Aliquam',
    '27,27',
    '5',
    '5'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '15',
    'Donec feugiat',
    '52,17',
    '8',
    '2'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '16',
    'eget, volutpat',
    '25,43',
    '3',
    '2'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '17',
    'velit in',
    '21,8',
    '1',
    '5'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '18',
    'non massa',
    '32,71',
    '6',
    '8'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '19',
    'nunc est,',
    '69,75',
    '9',
    '8'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '20',
    'est arcu',
    '63,63',
    '6',
    '8'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '21',
    'faucibus orci',
    '48,38',
    '4',
    '8'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '22',
    'est ac',
    '87,58',
    '10',
    '1'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '23',
    'condimentum eget,',
    '5,73',
    '9',
    '1'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '24',
    'Praesent interdum',
    '77,71',
    '6',
    '9'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '25',
    'vel turpis.',
    '86,38',
    '5',
    '3'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '26',
    'eget nisi',
    '72,8',
    '4',
    '1'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '27',
    'Aliquam erat',
    '93,96',
    '4',
    '10'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '28',
    'Nunc sollicitudin',
    '85,66',
    '8',
    '3'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '29',
    'quis urna.',
    '77,13',
    '8',
    '7'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '30',
    'natoque penatibus',
    '42,27',
    '6',
    '4'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '31',
    'a felis',
    '88,7',
    '2',
    '7'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '32',
    'pede. Cras',
    '31,38',
    '2',
    '1'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '33',
    'Proin non',
    '95,63',
    '9',
    '4'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '34',
    'Donec elementum,',
    '69,54',
    '8',
    '3'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '35',
    'at sem',
    '78,46',
    '10',
    '3'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '36',
    'ante dictum',
    '98,37',
    '1',
    '7'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '37',
    'semper rutrum.',
    '22,72',
    '4',
    '7'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '38',
    'eget, dictum',
    '79,88',
    '10',
    '5'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '39',
    'quis lectus.',
    '2,56',
    '1',
    '7'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '40',
    'Nam nulla',
    '50,51',
    '2',
    '6'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '41',
    'dictum augue',
    '83,89',
    '6',
    '2'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '42',
    'lacinia at,',
    '73,94',
    '9',
    '3'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '43',
    'nulla at',
    '18,64',
    '9',
    '2'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '44',
    'convallis in,',
    '28,22',
    '3',
    '8'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '45',
    'ipsum. Phasellus',
    '58,66',
    '9',
    '2'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '46',
    'nec quam.',
    '35,23',
    '8',
    '8'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '47',
    'quam vel',
    '65,73',
    '4',
    '8'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '48',
    'gravida. Praesent',
    '96,11',
    '9',
    '3'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '49',
    'sem ut',
    '73,04',
    '5',
    '1'
);

INSERT INTO producto (
    id_producto,
    descripcion,
    precio,
    id_categoria,
    id_proveedor
) VALUES (
    '50',
    'tempus risus.',
    '87',
    '6',
    '1'
);

--

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '1',
    '5500',
    '8',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '2',
    '5501',
    '5',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '3',
    '5502',
    '7',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '4',
    '5503',
    '10',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '5',
    '5504',
    '1',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '6',
    '5505',
    '5',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '7',
    '5506',
    '7',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '8',
    '5507',
    '9',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '9',
    '5508',
    '3',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '10',
    '5509',
    '5',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '11',
    '5510',
    '4',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '12',
    '5511',
    '8',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '13',
    '5512',
    '2',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '14',
    '5513',
    '10',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '15',
    '5514',
    '1',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '16',
    '5515',
    '10',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '17',
    '5516',
    '9',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '18',
    '5517',
    '4',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '19',
    '5518',
    '1',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '20',
    '5519',
    '8',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '21',
    '5520',
    '6',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '22',
    '5521',
    '1',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '23',
    '5522',
    '3',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '24',
    '5523',
    '9',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '25',
    '5524',
    '8',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '26',
    '5525',
    '10',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '27',
    '5526',
    '4',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '28',
    '5527',
    '5',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '29',
    '5528',
    '10',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '30',
    '5529',
    '1',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '31',
    '5530',
    '5',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '32',
    '5531',
    '3',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '33',
    '5532',
    '2',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '34',
    '5533',
    '6',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '35',
    '5534',
    '5',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '36',
    '5535',
    '8',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '37',
    '5536',
    '10',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '38',
    '5537',
    '8',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '39',
    '5538',
    '2',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '40',
    '5539',
    '9',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '41',
    '5540',
    '5',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '42',
    '5541',
    '2',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '43',
    '5542',
    '10',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '44',
    '5543',
    '10',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '45',
    '5544',
    '1',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '46',
    '5545',
    '1',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '47',
    '5546',
    '2',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '48',
    '5547',
    '6',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '49',
    '5548',
    '10',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '50',
    '5549',
    '8',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '51',
    '5550',
    '4',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '52',
    '5551',
    '8',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '53',
    '5552',
    '3',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '54',
    '5553',
    '6',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '55',
    '5554',
    '5',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '56',
    '5555',
    '9',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '57',
    '5556',
    '8',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '58',
    '5557',
    '9',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '59',
    '5558',
    '7',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '60',
    '5559',
    '10',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '61',
    '5560',
    '3',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '62',
    '5561',
    '7',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '63',
    '5562',
    '1',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '64',
    '5563',
    '5',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '65',
    '5564',
    '1',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '66',
    '5565',
    '4',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '67',
    '5566',
    '6',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '68',
    '5567',
    '8',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '69',
    '5568',
    '5',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '70',
    '5569',
    '5',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '71',
    '5570',
    '2',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '72',
    '5571',
    '10',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '73',
    '5572',
    '1',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '74',
    '5573',
    '8',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '75',
    '5574',
    '10',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '76',
    '5575',
    '7',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '77',
    '5576',
    '10',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '78',
    '5577',
    '1',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '79',
    '5578',
    '1',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '80',
    '5579',
    '10',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '81',
    '5580',
    '3',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '82',
    '5581',
    '3',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '83',
    '5582',
    '9',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '84',
    '5583',
    '10',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '85',
    '5584',
    '10',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '86',
    '5585',
    '5',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '87',
    '5586',
    '6',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '88',
    '5587',
    '10',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '89',
    '5588',
    '4',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '90',
    '5589',
    '6',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '91',
    '5590',
    '2',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '92',
    '5591',
    '4',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '93',
    '5592',
    '5',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '94',
    '5593',
    '1',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '95',
    '5594',
    '9',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '96',
    '5595',
    '3',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '97',
    '5596',
    '3',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '98',
    '5597',
    '4',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '99',
    '5598',
    '8',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '100',
    '5599',
    '2',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '101',
    '5600',
    '8',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '102',
    '5601',
    '8',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '103',
    '5602',
    '6',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '104',
    '5603',
    '9',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '105',
    '5604',
    '2',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '106',
    '5605',
    '1',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '107',
    '5606',
    '8',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '108',
    '5607',
    '3',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '109',
    '5608',
    '2',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '110',
    '5609',
    '7',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '111',
    '5610',
    '5',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '112',
    '5611',
    '4',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '113',
    '5612',
    '7',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '114',
    '5613',
    '4',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '115',
    '5614',
    '4',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '116',
    '5615',
    '2',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '117',
    '5616',
    '3',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '118',
    '5617',
    '4',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '119',
    '5618',
    '4',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '120',
    '5619',
    '10',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '121',
    '5620',
    '10',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '122',
    '5621',
    '9',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '123',
    '5622',
    '9',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '124',
    '5623',
    '3',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '125',
    '5624',
    '9',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '126',
    '5625',
    '1',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '127',
    '5626',
    '2',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '128',
    '5627',
    '4',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '129',
    '5628',
    '3',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '130',
    '5629',
    '5',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '131',
    '5630',
    '4',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '132',
    '5631',
    '9',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '133',
    '5632',
    '8',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '134',
    '5633',
    '3',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '135',
    '5634',
    '10',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '136',
    '5635',
    '8',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '137',
    '5636',
    '4',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '138',
    '5637',
    '10',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '139',
    '5638',
    '10',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '140',
    '5639',
    '4',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '141',
    '5640',
    '2',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '142',
    '5641',
    '8',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '143',
    '5642',
    '3',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '144',
    '5643',
    '9',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '145',
    '5644',
    '4',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '146',
    '5645',
    '8',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '147',
    '5646',
    '10',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '148',
    '5647',
    '2',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '149',
    '5648',
    '7',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '150',
    '5649',
    '1',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '151',
    '5650',
    '2',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '152',
    '5651',
    '3',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '153',
    '5652',
    '1',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '154',
    '5653',
    '9',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '155',
    '5654',
    '3',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '156',
    '5655',
    '1',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '157',
    '5656',
    '8',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '158',
    '5657',
    '10',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '159',
    '5658',
    '4',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '160',
    '5659',
    '4',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '161',
    '5660',
    '8',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '162',
    '5661',
    '4',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '163',
    '5662',
    '8',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '164',
    '5663',
    '8',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '165',
    '5664',
    '9',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '166',
    '5665',
    '1',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '167',
    '5666',
    '7',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '168',
    '5667',
    '5',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '169',
    '5668',
    '8',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '170',
    '5669',
    '4',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '171',
    '5670',
    '9',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '172',
    '5671',
    '8',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '173',
    '5672',
    '2',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '174',
    '5673',
    '1',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '175',
    '5674',
    '7',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '176',
    '5675',
    '8',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '177',
    '5676',
    '7',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '178',
    '5677',
    '9',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '179',
    '5678',
    '2',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '180',
    '5679',
    '5',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '181',
    '5680',
    '6',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '182',
    '5681',
    '3',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '183',
    '5682',
    '4',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '184',
    '5683',
    '4',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '185',
    '5684',
    '10',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '186',
    '5685',
    '1',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '187',
    '5686',
    '9',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '188',
    '5687',
    '7',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '189',
    '5688',
    '4',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '190',
    '5689',
    '3',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '191',
    '5690',
    '2',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '192',
    '5691',
    '10',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '193',
    '5692',
    '6',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '194',
    '5693',
    '3',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '195',
    '5694',
    '9',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '196',
    '5695',
    '2',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '197',
    '5696',
    '10',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '198',
    '5697',
    '9',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '199',
    '5698',
    '2',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '200',
    '5699',
    '10',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '201',
    '5700',
    '1',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '202',
    '5701',
    '2',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '203',
    '5702',
    '7',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '204',
    '5703',
    '6',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '205',
    '5704',
    '5',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '206',
    '5705',
    '1',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '207',
    '5706',
    '3',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '208',
    '5707',
    '10',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '209',
    '5708',
    '9',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '210',
    '5709',
    '10',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '211',
    '5710',
    '7',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '212',
    '5711',
    '4',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '213',
    '5712',
    '7',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '214',
    '5713',
    '2',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '215',
    '5714',
    '6',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '216',
    '5715',
    '1',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '217',
    '5716',
    '2',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '218',
    '5717',
    '1',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '219',
    '5718',
    '9',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '220',
    '5719',
    '1',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '221',
    '5720',
    '5',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '222',
    '5721',
    '1',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '223',
    '5722',
    '6',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '224',
    '5723',
    '4',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '225',
    '5724',
    '8',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '226',
    '5725',
    '3',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '227',
    '5726',
    '8',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '228',
    '5727',
    '2',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '229',
    '5728',
    '9',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '230',
    '5729',
    '8',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '231',
    '5730',
    '1',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '232',
    '5731',
    '6',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '233',
    '5732',
    '4',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '234',
    '5733',
    '7',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '235',
    '5734',
    '1',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '236',
    '5735',
    '10',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '237',
    '5736',
    '8',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '238',
    '5737',
    '1',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '239',
    '5738',
    '1',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '240',
    '5739',
    '5',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '241',
    '5740',
    '8',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '242',
    '5741',
    '2',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '243',
    '5742',
    '1',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '244',
    '5743',
    '10',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '245',
    '5744',
    '8',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '246',
    '5745',
    '9',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '247',
    '5746',
    '6',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '248',
    '5747',
    '2',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '249',
    '5748',
    '5',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '250',
    '5749',
    '2',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '251',
    '5750',
    '3',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '252',
    '5751',
    '3',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '253',
    '5752',
    '3',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '254',
    '5753',
    '1',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '255',
    '5754',
    '8',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '256',
    '5755',
    '9',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '257',
    '5756',
    '1',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '258',
    '5757',
    '7',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '259',
    '5758',
    '5',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '260',
    '5759',
    '1',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '261',
    '5760',
    '3',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '262',
    '5761',
    '1',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '263',
    '5762',
    '3',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '264',
    '5763',
    '8',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '265',
    '5764',
    '3',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '266',
    '5765',
    '7',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '267',
    '5766',
    '9',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '268',
    '5767',
    '3',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '269',
    '5768',
    '2',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '270',
    '5769',
    '2',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '271',
    '5770',
    '4',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '272',
    '5771',
    '4',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '273',
    '5772',
    '2',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '274',
    '5773',
    '8',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '275',
    '5774',
    '5',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '276',
    '5775',
    '9',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '277',
    '5776',
    '7',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '278',
    '5777',
    '8',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '279',
    '5778',
    '4',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '280',
    '5779',
    '3',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '281',
    '5780',
    '9',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '282',
    '5781',
    '2',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '283',
    '5782',
    '8',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '284',
    '5783',
    '9',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '285',
    '5784',
    '5',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '286',
    '5785',
    '5',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '287',
    '5786',
    '10',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '288',
    '5787',
    '3',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '289',
    '5788',
    '1',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '290',
    '5789',
    '9',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '291',
    '5790',
    '8',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '292',
    '5791',
    '3',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '293',
    '5792',
    '10',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '294',
    '5793',
    '5',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '295',
    '5794',
    '5',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '296',
    '5795',
    '3',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '297',
    '5796',
    '7',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '298',
    '5797',
    '6',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '299',
    '5798',
    '8',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '300',
    '5799',
    '1',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '301',
    '5800',
    '1',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '302',
    '5801',
    '4',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '303',
    '5802',
    '2',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '304',
    '5803',
    '1',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '305',
    '5804',
    '1',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '306',
    '5805',
    '7',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '307',
    '5806',
    '5',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '308',
    '5807',
    '6',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '309',
    '5808',
    '7',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '310',
    '5809',
    '5',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '311',
    '5810',
    '10',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '312',
    '5811',
    '6',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '313',
    '5812',
    '3',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '314',
    '5813',
    '3',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '315',
    '5814',
    '9',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '316',
    '5815',
    '4',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '317',
    '5816',
    '3',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '318',
    '5817',
    '1',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '319',
    '5818',
    '3',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '320',
    '5819',
    '3',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '321',
    '5820',
    '1',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '322',
    '5821',
    '9',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '323',
    '5822',
    '1',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '324',
    '5823',
    '1',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '325',
    '5824',
    '9',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '326',
    '5825',
    '7',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '327',
    '5826',
    '7',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '328',
    '5827',
    '4',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '329',
    '5828',
    '6',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '330',
    '5829',
    '5',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '331',
    '5830',
    '6',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '332',
    '5831',
    '9',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '333',
    '5832',
    '9',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '334',
    '5833',
    '4',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '335',
    '5834',
    '1',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '336',
    '5835',
    '3',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '337',
    '5836',
    '4',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '338',
    '5837',
    '8',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '339',
    '5838',
    '4',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '340',
    '5839',
    '3',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '341',
    '5840',
    '5',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '342',
    '5841',
    '5',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '343',
    '5842',
    '9',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '344',
    '5843',
    '9',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '345',
    '5844',
    '9',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '346',
    '5845',
    '9',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '347',
    '5846',
    '2',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '348',
    '5847',
    '7',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '349',
    '5848',
    '1',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '350',
    '5849',
    '9',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '351',
    '5850',
    '9',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '352',
    '5851',
    '1',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '353',
    '5852',
    '5',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '354',
    '5853',
    '1',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '355',
    '5854',
    '3',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '356',
    '5855',
    '8',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '357',
    '5856',
    '3',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '358',
    '5857',
    '6',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '359',
    '5858',
    '7',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '360',
    '5859',
    '5',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '361',
    '5860',
    '9',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '362',
    '5861',
    '5',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '363',
    '5862',
    '4',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '364',
    '5863',
    '1',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '365',
    '5864',
    '5',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '366',
    '5865',
    '10',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '367',
    '5866',
    '7',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '368',
    '5867',
    '2',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '369',
    '5868',
    '6',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '370',
    '5869',
    '4',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '371',
    '5870',
    '9',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '372',
    '5871',
    '9',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '373',
    '5872',
    '8',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '374',
    '5873',
    '2',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '375',
    '5874',
    '10',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '376',
    '5875',
    '5',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '377',
    '5876',
    '4',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '378',
    '5877',
    '4',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '379',
    '5878',
    '1',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '380',
    '5879',
    '2',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '381',
    '5880',
    '10',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '382',
    '5881',
    '5',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '383',
    '5882',
    '4',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '384',
    '5883',
    '3',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '385',
    '5884',
    '3',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '386',
    '5885',
    '9',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '387',
    '5886',
    '3',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '388',
    '5887',
    '3',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '389',
    '5888',
    '10',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '390',
    '5889',
    '8',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '391',
    '5890',
    '2',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '392',
    '5891',
    '3',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '393',
    '5892',
    '8',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '394',
    '5893',
    '4',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '395',
    '5894',
    '8',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '396',
    '5895',
    '4',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '397',
    '5896',
    '7',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '398',
    '5897',
    '8',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '399',
    '5898',
    '4',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '400',
    '5899',
    '9',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '401',
    '5900',
    '7',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '402',
    '5901',
    '2',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '403',
    '5902',
    '4',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '404',
    '5903',
    '6',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '405',
    '5904',
    '2',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '406',
    '5905',
    '2',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '407',
    '5906',
    '3',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '408',
    '5907',
    '1',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '409',
    '5908',
    '7',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '410',
    '5909',
    '9',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '411',
    '5910',
    '4',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '412',
    '5911',
    '9',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '413',
    '5912',
    '1',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '414',
    '5913',
    '5',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '415',
    '5914',
    '2',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '416',
    '5915',
    '5',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '417',
    '5916',
    '8',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '418',
    '5917',
    '2',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '419',
    '5918',
    '3',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '420',
    '5919',
    '10',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '421',
    '5920',
    '10',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '422',
    '5921',
    '9',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '423',
    '5922',
    '2',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '424',
    '5923',
    '10',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '425',
    '5924',
    '1',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '426',
    '5925',
    '6',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '427',
    '5926',
    '10',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '428',
    '5927',
    '7',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '429',
    '5928',
    '1',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '430',
    '5929',
    '10',
    '7'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '431',
    '5930',
    '5',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '432',
    '5931',
    '8',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '433',
    '5932',
    '1',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '434',
    '5933',
    '5',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '435',
    '5934',
    '4',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '436',
    '5935',
    '9',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '437',
    '5936',
    '3',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '438',
    '5937',
    '1',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '439',
    '5938',
    '9',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '440',
    '5939',
    '8',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '441',
    '5940',
    '2',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '442',
    '5941',
    '7',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '443',
    '5942',
    '10',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '444',
    '5943',
    '4',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '445',
    '5944',
    '8',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '446',
    '5945',
    '6',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '447',
    '5946',
    '7',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '448',
    '5947',
    '10',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '449',
    '5948',
    '7',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '450',
    '5949',
    '6',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '451',
    '5950',
    '1',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '452',
    '5951',
    '9',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '453',
    '5952',
    '2',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '454',
    '5953',
    '2',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '455',
    '5954',
    '7',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '456',
    '5955',
    '10',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '457',
    '5956',
    '2',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '458',
    '5957',
    '10',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '459',
    '5958',
    '3',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '460',
    '5959',
    '9',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '461',
    '5960',
    '1',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '462',
    '5961',
    '3',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '463',
    '5962',
    '8',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '464',
    '5963',
    '9',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '465',
    '5964',
    '1',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '466',
    '5965',
    '3',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '467',
    '5966',
    '5',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '468',
    '5967',
    '6',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '469',
    '5968',
    '3',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '470',
    '5969',
    '9',
    '6'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '471',
    '5970',
    '3',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '472',
    '5971',
    '1',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '473',
    '5972',
    '9',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '474',
    '5973',
    '9',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '475',
    '5974',
    '5',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '476',
    '5975',
    '10',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '477',
    '5976',
    '6',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '478',
    '5977',
    '6',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '479',
    '5978',
    '5',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '480',
    '5979',
    '4',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '481',
    '5980',
    '7',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '482',
    '5981',
    '4',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '483',
    '5982',
    '8',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '484',
    '5983',
    '1',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '485',
    '5984',
    '1',
    '10'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '486',
    '5985',
    '1',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '487',
    '5986',
    '4',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '488',
    '5987',
    '7',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '489',
    '5988',
    '3',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '490',
    '5989',
    '9',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '491',
    '5990',
    '3',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '492',
    '5991',
    '6',
    '1'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '493',
    '5992',
    '8',
    '5'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '494',
    '5993',
    '5',
    '9'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '495',
    '5994',
    '10',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '496',
    '5995',
    '5',
    '8'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '497',
    '5996',
    '10',
    '3'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '498',
    '5997',
    '8',
    '4'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '499',
    '5998',
    '8',
    '2'
);

INSERT INTO venta (
    id_venta,
    id_factura,
    id_producto,
    cantidad
) VALUES (
    '500',
    '5999',
    '4',
    '5'
);