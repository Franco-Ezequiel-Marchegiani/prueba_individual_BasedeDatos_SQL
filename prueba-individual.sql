USE prueba_tecnica;
/* Definición Tablas */
CREATE TABLE usuarios (
    id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    email TEXT NOT NULL,
    CONSTRAINT pk_usuario PRIMARY KEY(id)
);

CREATE TABLE notas (
    id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    editor_nota INT UNSIGNED NOT NULL,
    nota TEXT NULL,
    fecha_creacion DATE NOT NULL,
    ultima_modificacion DATE NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (editor_nota) REFERENCES usuarios(id)
);

CREATE TABLE notas_categorias (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    notas_id INT UNSIGNED,
    categorias_id INT UNSIGNED,
    FOREIGN KEY(notas_id) REFERENCES notas(id),
    FOREIGN KEY(categorias_id) REFERENCES categorias(id)
);

CREATE TABLE categorias (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nombre_categoria VARCHAR(100) NOT NULL
);

/* Fin Definición tablas */
/* Insertar datos Base de Datos */
/* Tabla Usuarios */
INSERT INTO usuarios (id, nombre, email)
VALUES (DEFAULT, "Roberto", "Robert@gmail.com");

INSERT INTO usuarios
VALUES (DEFAULT, "Agustín", "agus@gmail.com");

INSERT INTO usuarios
VALUES (DEFAULT, "María", "mariaDB@gmail.com");

INSERT INTO usuarios
VALUES (DEFAULT, "Milatzo", "milatzo@gmail.com");

INSERT INTO usuarios
VALUES (DEFAULT, "Ravenna", "Ravenna@gmail.com");

INSERT INTO usuarios
VALUES (DEFAULT, "Lampone", "teAgachasY...@gmail.com");

INSERT INTO usuarios
VALUES (DEFAULT, "Raul", "raulito79@gmail.com");

INSERT INTO usuarios
VALUES (DEFAULT, "Ramirez", "Gonzales@gmail.com");

INSERT INTO usuarios
VALUES (DEFAULT, "Sebastian", "seba123@gmail.com");

INSERT INTO usuarios
VALUES (DEFAULT, "Pepito", "pepito@gmail.com");
/* Fin Tabla Usuarios */


/* Notas categorias */
INSERT INTO categorias (id, nombre_categoria)
VALUES (DEFAULT, "Comedia");

INSERT INTO categorias (id, nombre_categoria)
VALUES (DEFAULT, "Suspenso");

INSERT INTO categorias (id, nombre_categoria)
VALUES (DEFAULT, "Terror");

INSERT INTO categorias (id, nombre_categoria)
VALUES (DEFAULT, "Drama");

INSERT INTO categorias (id, nombre_categoria)
VALUES (DEFAULT, "Romance");

INSERT INTO categorias (id, nombre_categoria)
VALUES (DEFAULT, "Aventura");

INSERT INTO categorias (id, nombre_categoria)
VALUES (DEFAULT, "Enseñanza");

INSERT INTO categorias (id, nombre_categoria)
VALUES (DEFAULT, "Clasico");

INSERT INTO categorias (id, nombre_categoria)
VALUES (DEFAULT, "Futurista");

INSERT INTO categorias (id, nombre_categoria)
VALUES (DEFAULT, "Documental");

/* Fin Notas categorias */


/* Tabla Notas */
INSERT INTO notas (id, titulo, editor_nota, nota, fecha_creacion, ultima_modificacion)
VALUES (DEFAULT, "Mil y una noches", "3", "Texto en progreso", "2020/8/12", " 2020/9/15");

INSERT INTO notas
VALUES (DEFAULT, "Romeo y Julieta", "7", "Vivieron felices por siempre", "2018/8/12", " 2020/4/15");

INSERT INTO notas
VALUES (DEFAULT, "Como cocinar sin perder el tiempo", "3", "Pedir comida", "2020/8/02", " 2020/9/15");


INSERT INTO notas
VALUES (DEFAULT, "Padre rico padre pobre", "4", "Notas post lectura del libro", "2020/1/12", " 2021/9/15");


INSERT INTO notas
VALUES (DEFAULT, "Hercules", "2", "Notas entrenamiento", "2020/8/12", " 2020/12/15");


INSERT INTO notas
VALUES (DEFAULT, "Cómo programar en JS", "8", "Enseñar a hacer carrito de compras", "2010/8/12", " 2020/9/15");


INSERT INTO notas
VALUES (DEFAULT, "Viajes al exterior", "5", "Lista de paises a migrar", "2021/9/12", " 2020/10/15");


INSERT INTO notas
VALUES (DEFAULT, "Como cocinar mondongo", "1", "Pasos a seguir para hacer mondongo", "2005/2/12", " 2010/11/15");


INSERT INTO notas
VALUES (DEFAULT, "Milam y Steven", "3", "Aventura de una guerra de Egipto", "2018/8/12", " 2020/3/11");


INSERT INTO notas
VALUES (DEFAULT, "Top mi musica favorita", "3", "David Bowie, System of a Down, Lady Gaga", "2013/8/12", " 2021/9/15");
/* Fin Tabla Notas */


/* Notas Categoría */
INSERT INTO notas_categorias (id, notas_id, categorias_id)
VALUES (DEFAULT, "1", "3");

INSERT INTO notas_categorias (id, notas_id, categorias_id)
VALUES (DEFAULT, "5", "4");

INSERT INTO notas_categorias (id, notas_id, categorias_id)
VALUES (DEFAULT, "8", "1");

INSERT INTO notas_categorias (id, notas_id, categorias_id)
VALUES (DEFAULT, "9", "3");

INSERT INTO notas_categorias (id, notas_id, categorias_id)
VALUES (DEFAULT, "2", "1");

INSERT INTO notas_categorias (id, notas_id, categorias_id)
VALUES (DEFAULT, "5", "4");

INSERT INTO notas_categorias (id, notas_id, categorias_id)
VALUES (DEFAULT, "9", "8");

INSERT INTO notas_categorias (id, notas_id, categorias_id)
VALUES (DEFAULT, "2", "6");

INSERT INTO notas_categorias (id, notas_id, categorias_id)
VALUES (DEFAULT, "3", "7");

INSERT INTO notas_categorias (id, notas_id, categorias_id)
VALUES (DEFAULT, "1", "1");
/* Fin Notas Categoría */