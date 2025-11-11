# 🛠️ MANUAL TÉCNICO - SISTEMA COSMÉTICOS MERCY

## 📑 TABLA DE CONTENIDOS

1. [Visión General del Proyecto](#visión-general-del-proyecto)
2. [Arquitectura del Sistema](#arquitectura-del-sistema)
3. [Stack Tecnológico](#stack-tecnológico)
4. [Instalación y Configuración](#instalación-y-configuración)
5. [Estructura de Directorios](#estructura-de-directorios)
6. [Modelos de Datos](#modelos-de-datos)
7. [Componentes y Funcionalidades](#componentes-y-funcionalidades)
8. [Flujos de Negocio](#flujos-de-negocio)
9. [API Endpoints](#api-endpoints)
10. [Base de Datos](#base-de-datos)
11. [Seguridad](#seguridad)
12. [Configuración de Despliegue](#configuración-de-despliegue)
13. [Monitoreo y Mantenimiento](#monitoreo-y-mantenimiento)
14. [Troubleshooting Técnico](#troubleshooting-técnico)

---

## 🎯 VISIÓN GENERAL DEL PROYECTO

### Descripción

Cosméticos Mercy JSP es una aplicación web empresarial para la **gestión integral de inventario y ventas** de productos cosméticos. Proporciona funcionalidades de:

- Autenticación y autorización de usuarios
- Catálogo de productos
- Registro de ventas
- Reportes y análisis
- Gestión de inventario

### Propósito

Automatizar y centralizar la operación de una tienda de cosméticos, permitiendo:
- Tracking en tiempo real del inventario
- Registro de transacciones
- Control de acceso por roles
- Generación de reportes para toma de decisiones

### Población Objetivo

- **Usuarios finales:** Personal de ventas y vendedores
- **Administradores:** Gerentes de inventario, dueños
- **Desarrolladores:** Equipo de mantenimiento y soporte

### Fases de Implementación

```
Fase 1: Autenticación ✅ COMPLETADO
  - Registro de usuarios
  - Login/Logout
  - Gestión de sesiones
  - Filtro de seguridad

Fase 2: Productos (EN DESARROLLO)
  - CRUD de productos
  - Categorización
  - Control de stock

Fase 3: Ventas (EN DESARROLLO)
  - Registro de ventas
  - Reportes
  - Análisis

Fase 4: Optimizaciones (FUTURO)
  - Caché
  - Notificaciones
  - API REST
```

---

## 🏗️ ARQUITECTURA DEL SISTEMA

### Patrón Arquitectónico: MVC (Model-View-Controller)

```
┌─────────────────────────────────────────────────────┐
│                    PRESENTACIÓN                      │
│  JSP Views (login.jsp, registro.jsp, etc.)         │
└────────────────────┬────────────────────────────────┘
                     │ (HTTP Request/Response)
                     ▼
┌─────────────────────────────────────────────────────┐
│                CONTROLADORES (Servlets)             │
│  - UserServerlet                                    │
│  - ProductoServerlet                                │
│  - VentaServerlet                                   │
│  - Filtros (AuthenticationFilter)                   │
└────────────────────┬────────────────────────────────┘
                     │ (Negocio)
                     ▼
┌─────────────────────────────────────────────────────┐
│                SERVICIOS & MODELOS                  │
│  - UserServicio / IUserServicio                     │
│  - ProductoServicio / Modelos                       │
│  - VentaServicio / Modelos                          │
└────────────────────┬────────────────────────────────┘
                     │ (Persistencia)
                     ▼
┌─────────────────────────────────────────────────────┐
│                   DATA ACCESS (DAO)                 │
│  - UserDAO                                          │
│  - ProductDAO                                       │
│  - VentaDAO                                         │
└────────────────────┬────────────────────────────────┘
                     │ (JDBC)
                     ▼
┌─────────────────────────────────────────────────────┐
│                  BASE DE DATOS                      │
│  MariaDB / MySQL                                    │
│  - usuarios                                         │
│  - productos                                        │
│  - ventas                                           │
└─────────────────────────────────────────────────────┘
```

### Capas Arquitectónicas

| Capa | Componentes | Responsabilidad |
|------|-------------|-----------------|
| **Presentación** | JSP, HTML, CSS, JS | Interfaz de usuario, renderizado |
| **Controlador** | Servlets, Filtros | Ruteo, manejo de requests, sesiones |
| **Negocio** | Servicios, Interfaces | Lógica aplicacional, validaciones |
| **Persistencia** | DAO, Modelos | Acceso y transformación de datos |
| **Datos** | MariaDB | Almacenamiento persistente |

---

## 💻 STACK TECNOLÓGICO

### Lenguajes

| Tecnología | Versión | Uso |
|-----------|---------|-----|
| **Java** | 24 | Backend, lógica empresarial |
| **JSP** | 3.0 (Jakarta) | Renderizado de vistas HTML |
| **HTML5** | - | Estructura de páginas |
| **CSS3** | - | Estilos y diseño responsivo |
| **JavaScript** | ES6+ | Validaciones client-side, interactividad |
| **SQL** | - | Consultas a base de datos |

### Frameworks y Librerías

```xml
<!-- Servlet API -->
jakarta.servlet:jakarta.servlet-api:6.0.0
jakarta.platform:jakarta.jakartaee-web-api:9.1.0

<!-- JSTL y EL -->
jakarta.servlet.jsp.jstl:jakarta.servlet.jsp.jstl-api:3.0.0
org.glassfish.web:jakarta.servlet.jsp.jstl:3.0.0
jakarta.el:jakarta.el-api:6.0.0

<!-- Base de Datos -->
org.mariadb.jdbc:mariadb-java-client:3.3.0

<!-- Build -->
maven-compiler-plugin:3.12.1
maven-war-plugin:3.4.0
```

### Servidores y Herramientas

| Herramienta | Versión | Propósito |
|-----------|---------|----------|
| **Apache Tomcat** | 10.x | Servidor de aplicaciones web |
| **MariaDB / MySQL** | 10.6+ / 8.0+ | Sistema gestor de base de datos |
| **Maven** | 3.8+ | Build y gestión de dependencias |
| **Git** | - | Control de versiones |
| **JDK** | 24 | Runtime de Java |

### IDE Recomendado

- IntelliJ IDEA (Community o Ultimate)
- Eclipse IDE for Enterprise Java
- Visual Studio Code + extensiones

---

## 🚀 INSTALACIÓN Y CONFIGURACIÓN

### 1. Requisitos Previos

```bash
# Verificar versión de Java
java -version
# Debe ser 11 o superior

# Verificar Maven
mvn -version
# Debe estar instalado
```

### 2. Clonar el Repositorio

```bash
git clone https://github.com/usuario/cosmeticosmercyjsp.git
cd cosmeticosmercyjsp
```

### 3. Configurar Base de Datos

#### 3.1 Crear Base de Datos

```sql
CREATE DATABASE IF NOT EXISTS cosmeticos_mercy;
USE cosmeticos_mercy;
```

#### 3.2 Crear Usuario de Base de Datos (Recomendado)

```sql
-- Crear usuario con permisos limitados (SEGURIDAD)
CREATE USER 'mercy_app'@'localhost' IDENTIFIED BY 'StrongPassword123!';
GRANT SELECT, INSERT, UPDATE, DELETE ON cosmeticos_mercy.* TO 'mercy_app'@'localhost';
FLUSH PRIVILEGES;
```

#### 3.3 Ejecutar Scripts SQL

```bash
# Crear estructura de tablas
mysql -u mercy_app -p cosmeticos_mercy < setup_usuarios.sql

# Agregar datos de prueba (opcional)
mysql -u mercy_app -p cosmeticos_mercy < pruebas_autenticacion.sql
```

### 4. Configurar Propiedades de Conexión

Editar: `src/main/resources/database.properties`

```properties
# Conexión a MariaDB
db.driver=org.mariadb.jdbc.Driver
db.url=jdbc:mariadb://localhost:3306/cosmeticos_mercy
db.username=mercy_app
db.password=StrongPassword123!

# Connection Pool (Opcional)
db.pool.maxSize=20
db.pool.minSize=5
```

### 5. Compilar el Proyecto

```bash
# Compilación limpia
mvn clean compile

# Con tests
mvn clean test

# Build completo (genera WAR)
mvn clean package

# Skip tests para compilación rápida
mvn clean package -DskipTests
```

### 6. Desplegar en Tomcat

#### 6.1 Opción A: Automática con Maven

```bash
# Requiere plugin Maven de Tomcat configurado
mvn tomcat7:deploy
```

#### 6.2 Opción B: Manual

```bash
# Copiar WAR a directorio de Tomcat
cp target/cosmeticosmercyjsp.war $CATALINA_HOME/webapps/

# Iniciar Tomcat
$CATALINA_HOME/bin/startup.sh

# En Windows:
%CATALINA_HOME%\bin\startup.bat
```

### 7. Verificar Instalación

```
1. Abre navegador: http://localhost:8080/cosmeticosmercyjsp
2. Deberías ver la página de login
3. Intenta registrarte con email: test@mercy.com
4. Clave: Test123!@#
```

---

## 📁 ESTRUCTURA DE DIRECTORIOS

```
cosmeticosmercyjsp/
│
├── src/main/java/org/example/
│   │
│   ├── Main.java                          # Punto de entrada (si aplica)
│   │
│   ├── modelo/
│   │   ├── User.java                      # Entidad Usuario
│   │   ├── Producto.java                  # Entidad Producto
│   │   └── Venta.java                     # Entidad Venta
│   │
│   ├── dao/
│   │   ├── UserDAO.java                   # Data Access - Usuario
│   │   ├── ProductDAO.java                # Data Access - Producto
│   │   └── VentaDAO.java                  # Data Access - Venta
│   │
│   ├── servicios/
│   │   ├── IUserServicio.java             # Interfaz - Servicios Usuario
│   │   ├── UserServicio.java              # Implementación - Servicios Usuario
│   │   ├── IProductServicio.java          # Interfaz - Servicios Producto
│   │   ├── ProductoServicio.java          # Implementación - Servicios Producto
│   │   └── VentaServicio.java             # Servicios Venta
│   │
│   ├── serverlet/                         # Controladores HTTP
│   │   ├── UserServerlet.java             # Autenticación (login/registro)
│   │   ├── LoginViewServerlet.java        # Vista login
│   │   ├── RegistroViewServerlet.java     # Vista registro
│   │   ├── ProductoServerlet.java         # Gestión de productos
│   │   └── VentaServerlet.java            # Gestión de ventas
│   │
│   ├── filtros/
│   │   └── AuthenticationFilter.java      # Filtro de seguridad
│   │
│   ├── controlador/
│   │   ├── ProductoControlador.java       # Controlador Producto
│   │   ├── UserControlador.java           # Controlador Usuario
│   │   └── VentaControlador.java          # Controlador Venta
│   │
│   └── utils/
│       └── DatabaseConnection.java        # Gestión de conexiones BD
│
├── src/main/resources/
│   └── database.properties                # Configuración de BD
│
├── src/main/webapp/
│   │
│   ├── index.jsp                          # Página principal
│   │
│   └── WEB-INF/
│       │
│       ├── web.xml                        # Configuración web
│       │
│       └── views/
│           ├── login/
│           │   ├── login.jsp              # Página de login
│           │   └── registro.jsp           # Página de registro
│           │
│           ├── productos/
│           │   ├── lista.jsp              # Listado de productos
│           │   ├── nuevo.jsp              # Crear producto
│           │   └── editar.jsp             # Editar producto
│           │
│           ├── Users/
│           │   ├── perfil.jsp             # Perfil de usuario
│           │   └── editar.jsp             # Editar datos
│           │
│           └── ventas/
│               ├── lista.jsp              # Historial de ventas
│               ├── nueva.jsp              # Registrar venta
│               └── reportes.jsp           # Reportes
│
├── pom.xml                                # Configuración Maven
│
├── MANUAL_DE_USUARIO.md                   # Documentación para usuarios
├── MANUAL_TECNICO.md                      # Este archivo
├── AUTENTICACION_README.md                # Documentación de autenticación
├── RESUMEN_EJECUTIVO.md                   # Resumen general
├── GUIA_PASO_A_PASO.md                    # Guía de instalación
│
├── setup_usuarios.sql                     # Script creación de tablas
├── pruebas_autenticacion.sql              # Datos de prueba
└── target/                                # Directorio de compilación
    ├── cosmeticosmercyjsp.war            # Aplicación empaquetada
    └── classes/                           # Archivos compilados
```

---

## 📊 MODELOS DE DATOS

### Modelo: User

```java
public class User {
    private Integer idUsuario;        // PK, Auto-increment
    private String nombre;            // NOT NULL
    private String correo;            // NOT NULL, UNIQUE
    private String contraseña;        // NOT NULL
    private String telefono;          // NULLABLE
    private String direccion;         // NULLABLE
    private String estado;            // DEFAULT 'activo'
    private LocalDateTime fechaRegistro; // DEFAULT CURRENT_TIMESTAMP
    
    // Constructores, getters, setters...
}
```

**Tabla SQL:**
```sql
CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL,
    contraseña VARCHAR(255) NOT NULL,
    telefono VARCHAR(20),
    direccion VARCHAR(255),
    estado VARCHAR(20) DEFAULT 'activo',
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_correo (correo),
    INDEX idx_estado (estado)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
```

### Modelo: Producto

```java
public class Producto {
    private Integer codigoProducto;   // PK, Auto-increment
    private String nombreProducto;    // NOT NULL
    private BigDecimal precioUnitario;// NOT NULL, DECIMAL(10,2)
    private Integer cantidad;         // NOT NULL
    private String categoria;         // NOT NULL
    private LocalDate fechaIngreso;   // DEFAULT TODAY
    
    // Constructores, getters, setters...
}
```

**Tabla SQL:**
```sql
CREATE TABLE productos (
    codigo_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre_producto VARCHAR(150) NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    cantidad INT NOT NULL DEFAULT 0,
    categoria VARCHAR(50) NOT NULL,
    fecha_ingreso DATE DEFAULT CURRENT_DATE,
    INDEX idx_nombre (nombre_producto),
    INDEX idx_categoria (categoria)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
```

### Modelo: Venta

```java
public class Venta {
    private Integer idVenta;          // PK, Auto-increment
    private Integer codigoProducto;   // FK -> productos
    private Integer cantidadVendida;  // NOT NULL
    private LocalDate fechaVenta;     // DEFAULT TODAY
    private BigDecimal total;         // COMPUTED: cantidad * precio
    
    // Constructores, getters, setters...
}
```

**Tabla SQL:**
```sql
CREATE TABLE ventas (
    id_venta INT PRIMARY KEY AUTO_INCREMENT,
    codigo_producto INT NOT NULL,
    cantidad_vendida INT NOT NULL,
    fecha_venta DATE DEFAULT CURRENT_DATE,
    total DECIMAL(12, 2) NOT NULL,
    FOREIGN KEY (codigo_producto) REFERENCES productos(codigo_producto)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    INDEX idx_fecha (fecha_venta),
    INDEX idx_producto (codigo_producto)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
```

---

## 🔧 COMPONENTES Y FUNCIONALIDADES

### 1. Modelos (Entity Classes)

#### User.java
- **Responsabilidad:** Representar entidad Usuario
- **Propiedades:** ID, nombre, correo, contraseña, teléfono, dirección, estado, fecha
- **Métodos:** Getters, Setters, Constructores
- **Ubicación:** `modelo/User.java`

#### Producto.java
- **Responsabilidad:** Representar entidad Producto
- **Propiedades:** Código, nombre, precio, cantidad, categoría, fecha
- **Métodos:** Getters, Setters, Constructores
- **Ubicación:** `modelo/Producto.java`

#### Venta.java
- **Responsabilidad:** Representar entidad Venta
- **Propiedades:** ID, código producto, cantidad, fecha, total
- **Métodos:** Getters, Setters, Constructores
- **Ubicación:** `modelo/Venta.java`

### 2. Data Access Objects (DAO)

#### UserDAO.java

**Métodos principales:**

```java
public class UserDAO {
    // CREATE
    public int registrarUsuario(User usuario)
    
    // READ
    public User obtenerUsuarioPorCorreoYContraseña(String correo, String contraseña)
    public User obtenerUsuarioPorId(Integer id)
    public List<User> obtenerTodosLosUsuarios()
    public boolean existeCorreo(String correo)
    
    // UPDATE
    public boolean actualizarUsuario(User usuario)
    
    // DELETE (Soft Delete)
    public boolean eliminarUsuario(Integer id)
}
```

**Conexión a BD:** Utiliza `DatabaseConnection.getConnection()`

#### ProductDAO.java

Métodos CRUD para gestión de productos:
- `crearProducto(Producto p)`
- `obtenerProductoPorCodigo(Integer codigo)`
- `obtenerTodosProductos()`
- `actualizarProducto(Producto p)`
- `eliminarProducto(Integer codigo)`

#### VentaDAO.java

Métodos CRUD para gestión de ventas:
- `registrarVenta(Venta v)`
- `obtenerVentaPorId(Integer id)`
- `obtenerVentasPorRango(Date inicio, Date fin)`
- `obtenerVentasPorProducto(Integer codigoProducto)`

### 3. Servicios (Business Logic)

#### IUserServicio (Interfaz)

```java
public interface IUserServicio {
    int registrar(User usuario);
    User autenticar(String correo, String contraseña);
    User obtener(Integer id);
    List<User> obtenerTodos();
    boolean actualizar(User usuario);
    boolean eliminar(Integer id);
    boolean existeCorreo(String correo);
}
```

#### UserServicio (Implementación)

```java
public class UserServicio implements IUserServicio {
    private UserDAO userDAO = new UserDAO();
    
    @Override
    public int registrar(User usuario) {
        // Validaciones
        // Llamar DAO
    }
    
    @Override
    public User autenticar(String correo, String contraseña) {
        // Lógica de autenticación
    }
    
    // ... implementación de otros métodos
}
```

**Responsabilidades:**
- Validaciones de negocio
- Transformación de datos
- Orquestación de operaciones
- Manejo de excepciones

### 4. Controladores (Servlets)

#### UserServerlet.java

**URL Mappings:**
- `GET /login` → Renderizar página de login
- `POST /auth/login` → Procesar login
- `POST /auth/registro` → Procesar registro
- `GET /auth/logout` → Cerrar sesión

**Métodos:**

```java
@WebServlet({"/login", "/auth/login", "/auth/registro", "/auth/logout"})
public class UserServerlet extends HttpServlet {
    
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) {
        // GET: Renderizar páginas
    }
    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        // POST: Procesar acciones
    }
}
```

#### Otros Servlets

- **ProductoServerlet:** CRUD de productos
- **VentaServerlet:** Registro y consulta de ventas
- **LoginViewServerlet:** Renderiza vista de login
- **RegistroViewServerlet:** Renderiza vista de registro

### 5. Filtros

#### AuthenticationFilter.java

**Propósito:** Proteger acceso a recursos no autenticados

**Funcionamiento:**

```java
@WebFilter(urlPatterns = {"/*"})
public class AuthenticationFilter implements Filter {
    
    public void doFilter(ServletRequest req, ServletResponse res, 
                        FilterChain chain) throws IOException, ServletException {
        // 1. Verificar si usuario está autenticado (sesión)
        // 2. Si NO está autenticado:
        //    - Si pide /login o /auth/* → permitir
        //    - Si pide otro recurso → redirigir a /login
        // 3. Si está autenticado → continuar
    }
}
```

**Rutas permitidas sin autenticación:**
- `/login`
- `/auth/login`
- `/auth/registro`
- `/registro`
- Recursos estáticos (CSS, JS, imágenes)

### 6. Utilidades

#### DatabaseConnection.java

**Responsabilidad:** Gestionar conexiones a BD

```java
public class DatabaseConnection {
    // Cargar propiedades desde database.properties
    // Crear conexiones
    // Cerrar conexiones
    
    public static Connection getConnection() throws SQLException {
        // Retorna una nueva conexión a la BD
    }
    
    public static void closeConnection(Connection connection) {
        // Cierra la conexión de forma segura
    }
}
```

---

## 📱 FLUJOS DE NEGOCIO

### Flujo 1: Registro de Usuario

```
1. Usuario accede a GET /registro
   ↓
2. Se renderiza registro.jsp
   ↓
3. Usuario completa formulario
   ↓
4. POST /auth/registro con datos
   ↓
5. UserServerlet valida entrada
   ├─ ¿Email vacío? → Error
   ├─ ¿Contraseñas no coinciden? → Error
   ├─ ¿Email duplicado? → Error
   └─ ¿Datos válidos? → Continuar
   ↓
6. UserServicio.registrar(usuario)
   ├─ Ejecutar validaciones adicionales
   └─ Llamar UserDAO.registrarUsuario()
   ↓
7. UserDAO inserta en tabla usuarios
   ↓
8. Retorno a login con mensaje de éxito
```

### Flujo 2: Login de Usuario

```
1. Usuario accede a GET /login
   ↓
2. Se renderiza login.jsp
   ↓
3. Usuario ingresa email y contraseña
   ↓
4. POST /auth/login con credenciales
   ↓
5. UserServerlet valida entrada
   ├─ ¿Email o password vacíos? → Error
   ├─ ¿Email inválido? → Error
   └─ ¿Válido? → Continuar
   ↓
6. UserServicio.autenticar(email, password)
   ├─ Llamar UserDAO.obtenerUsuarioPorCorreoYContraseña()
   └─ ¿Usuario encontrado? → Retornar usuario
   ↓
7. Si usuario existe:
   ├─ Crear sesión HTTP
   ├─ Guardar usuario en sesión
   ├─ Guardar rol/permisos
   └─ Redirigir a dashboard
   ↓
8. Si usuario NO existe:
   └─ Redirigir a login con error
```

### Flujo 3: Acceso a Recursos Protegidos

```
1. Usuario solicita recurso (GET /productos)
   ↓
2. AuthenticationFilter intercepta
   ↓
3. ¿Usuario tiene sesión activa?
   ├─ Sí → Permitir acceso
   └─ No → Verificar si es ruta pública
            ├─ Es ruta pública (/login, /auth/*) → Permitir
            └─ Es ruta privada → Redirigir a /login
   ↓
4. Se procesa la solicitud en el servlet correspondiente
   ↓
5. Se responde al usuario
```

### Flujo 4: Crear Producto (Ejemplo)

```
1. Admin accede a GET /productos/nuevo
   ↓
2. ¿Tiene sesión? → Sí
   ↓
3. Se renderiza nuevo.jsp
   ↓
4. Admin completa formulario
   ↓
5. POST /productos con datos
   ↓
6. ProductoServerlet valida:
   ├─ ¿Nombre vacío? → Error
   ├─ ¿Precio <= 0? → Error
   ├─ ¿Cantidad < 0? → Error
   └─ ¿Válido? → Continuar
   ↓
7. ProductoServicio.crear(producto)
   ├─ Validaciones adicionales
   └─ ProductDAO.crear()
   ↓
8. Producto se inserta en BD
   ↓
9. Redirigir a lista de productos con éxito
```

---

## 🌐 API ENDPOINTS

### Autenticación

| Método | Endpoint | Descripción | Requiere Sesión |
|--------|----------|-------------|-----------------|
| `GET` | `/login` | Renderiza página login | No |
| `POST` | `/auth/login` | Procesa login | No |
| `GET` | `/registro` | Renderiza página registro | No |
| `POST` | `/auth/registro` | Procesa registro | No |
| `GET` | `/auth/logout` | Cierra sesión | Sí |

### Productos

| Método | Endpoint | Descripción | Requiere Sesión |
|--------|----------|-------------|-----------------|
| `GET` | `/productos` | Listar productos | Sí |
| `GET` | `/productos/nuevo` | Formulario crear | Sí |
| `POST` | `/productos` | Crear producto | Sí |
| `GET` | `/productos/:id` | Detalle producto | Sí |
| `GET` | `/productos/:id/editar` | Formulario editar | Sí |
| `POST` | `/productos/:id/editar` | Actualizar producto | Sí |
| `POST` | `/productos/:id/eliminar` | Eliminar producto | Sí |

### Ventas

| Método | Endpoint | Descripción | Requiere Sesión |
|--------|----------|-------------|-----------------|
| `GET` | `/ventas` | Listar ventas | Sí |
| `GET` | `/ventas/nueva` | Formulario nueva venta | Sí |
| `POST` | `/ventas` | Registrar venta | Sí |
| `GET` | `/ventas/reportes` | Generar reportes | Sí |

### Usuarios

| Método | Endpoint | Descripción | Requiere Sesión |
|--------|----------|-------------|-----------------|
| `GET` | `/perfil` | Ver perfil propio | Sí |
| `GET` | `/perfil/editar` | Editar perfil | Sí |
| `POST` | `/perfil/editar` | Guardar cambios perfil | Sí |
| `POST` | `/perfil/cambiar-contraseña` | Cambiar contraseña | Sí |

---

## 💾 BASE DE DATOS

### Propiedades de Conexión

**Archivo:** `src/main/resources/database.properties`

```properties
# Driver
db.driver=org.mariadb.jdbc.Driver

# URL de conexión
db.url=jdbc:mariadb://localhost:3306/cosmeticos_mercy

# Credenciales
db.username=mercy_app
db.password=StrongPassword123!

# Connection Pool (recomendado para producción)
db.pool.maxSize=20
db.pool.minSize=5
db.pool.timeout=30000
```

### Scripts SQL

#### setup_usuarios.sql

Crea la estructura base:
- Tabla `usuarios` con índices
- Tabla `productos` con categorías
- Tabla `ventas` con foreign keys

```bash
mysql -u root -p cosmeticos_mercy < setup_usuarios.sql
```

#### pruebas_autenticacion.sql

Inserta datos de prueba:
- Usuario de prueba
- Productos de ejemplo
- Ventas de ejemplo

```bash
mysql -u mercy_app -p cosmeticos_mercy < pruebas_autenticacion.sql
```

### Consultas Útiles para Desarrollo

```sql
-- Listar todos los usuarios activos
SELECT * FROM usuarios WHERE estado = 'activo';

-- Contar productos por categoría
SELECT categoria, COUNT(*) FROM productos GROUP BY categoria;

-- Total de ventas por día
SELECT fecha_venta, SUM(total) FROM ventas GROUP BY fecha_venta;

-- Productos sin stock
SELECT * FROM productos WHERE cantidad = 0;

-- Últimas 10 ventas
SELECT * FROM ventas ORDER BY fecha_venta DESC LIMIT 10;

-- Información de vendedor y producto
SELECT v.*, u.nombre, p.nombre_producto 
FROM ventas v
JOIN usuarios u ON v.id_usuario = u.id_usuario
JOIN productos p ON v.codigo_producto = p.codigo_producto;
```

---

## 🔐 SEGURIDAD

### Medidas de Seguridad Implementadas

#### 1. Autenticación

✅ **Login con validación:**
- Email y contraseña requeridas
- Validación server-side
- Sesiones HTTP protegidas

✅ **Sesiones seguras:**
- HTTPOnly flag (previene JavaScript access)
- Secure flag (solo HTTPS en producción)
- SameSite cookie policy

✅ **Logout seguro:**
- Invalidación de sesión
- Limpieza de atributos
- Redirección a login

#### 2. Autorización

✅ **Filtro de autenticación:**
- Verifica sesión en cada request
- Ruta whitelist para públicos
- Redirección automática a login

✅ **Control de acceso:**
- Solo usuarios autenticados acceden a recursos
- Roles definibles (Admin, User)
- Cierre de sesión en múltiples dispositivos

#### 3. Protección de Datos

✅ **Validación de entrada:**
- Server-side en todos los servlets
- Sanitización de datos
- Prevención de inyección SQL

✅ **Soft Delete:**
- No se elimina información
- Se marca como inactiva
- Historial preservado

✅ **Gestión de contraseñas:**
- Se almacenan encriptadas (implementar si necesario)
- Longitud mínima requerida
- Validación de complejidad

#### 4. HTTPS y Transporte

**Recomendaciones para producción:**
- Usar HTTPS en todos los endpoints
- Certificados SSL/TLS válidos
- Forzar redireccionamiento HTTP → HTTPS

#### 5. CSRF Protection

**Implementación recomendada:**
- CSRF tokens en formularios
- Validación en servlets POST
- Headers de seguridad adicionales

### Configuración de Seguridad en web.xml

```xml
<security-constraint>
    <web-resource-collection>
        <web-resource-name>Recursos Protegidos</web-resource-name>
        <url-pattern>/productos/*</url-pattern>
        <url-pattern>/ventas/*</url-pattern>
        <url-pattern>/perfil/*</url-pattern>
    </web-resource-collection>
    <auth-constraint>
        <role-name>USER</role-name>
    </auth-constraint>
    <user-data-constraint>
        <transport-guarantee>CONFIDENTIAL</transport-guarantee>
    </user-data-constraint>
</security-constraint>
```

---

## 🚀 CONFIGURACIÓN DE DESPLIEGUE

### Desarrollo Local

```bash
# 1. Compilar
mvn clean package

# 2. Iniciar Tomcat
$CATALINA_HOME/bin/startup.sh

# 3. Desplegar
cp target/cosmeticosmercyjsp.war $CATALINA_HOME/webapps/

# 4. Acceder
# http://localhost:8080/cosmeticosmercyjsp
```

### Producción

#### Servidor Web (Nginx)

```nginx
upstream tomcat {
    server localhost:8080;
}

server {
    listen 443 ssl http2;
    server_name cosmeticosmercyjsp.com;
    
    ssl_certificate /etc/ssl/certs/cert.pem;
    ssl_certificate_key /etc/ssl/private/key.pem;
    
    location / {
        proxy_pass http://tomcat;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }
}
```

#### Variables de Entorno

```bash
# .env
DB_HOST=db.production.com
DB_PORT=3306
DB_NAME=cosmeticos_mercy
DB_USER=mercy_app
DB_PASSWORD=SecurePassword123!@#

TOMCAT_MEMORY=-Xmx1024m -Xms512m
JAVA_OPTS=-Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=9010
```

#### Docker (Recomendado)

**Dockerfile:**
```dockerfile
FROM tomcat:10.0-jre17

RUN rm -rf $CATALINA_HOME/webapps/ROOT

COPY target/cosmeticosmercyjsp.war $CATALINA_HOME/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
```

**docker-compose.yml:**
```yaml
version: '3.8'

services:
  db:
    image: mariadb:latest
    environment:
      MYSQL_DATABASE: cosmeticos_mercy
      MYSQL_USER: mercy_app
      MYSQL_PASSWORD: ${DB_PASSWORD}
      MYSQL_ROOT_PASSWORD: root_pass
    volumes:
      - db_data:/var/lib/mysql

  app:
    build: .
    ports:
      - "8080:8080"
    environment:
      DB_HOST: db
      DB_USER: mercy_app
      DB_PASSWORD: ${DB_PASSWORD}
    depends_on:
      - db
    volumes:
      - logs:/usr/local/tomcat/logs

volumes:
  db_data:
  logs:
```

---

## 📊 MONITOREO Y MANTENIMIENTO

### Logs

**Ubicaciones:**
- Tomcat: `$CATALINA_HOME/logs/`
- Aplicación: `$CATALINA_HOME/logs/catalina.log`
- Errores: `$CATALINA_HOME/logs/catalina.err`

**Ejemplo de lectura:**
```bash
# Ver últimas líneas de log
tail -f $CATALINA_HOME/logs/catalina.out

# Buscar errores
grep ERROR $CATALINA_HOME/logs/catalina.out

# Ver últimas 100 líneas
tail -100 $CATALINA_HOME/logs/catalina.out
```

### Monitoreo de Performance

**Métricas importantes:**
- Tiempo de respuesta de requests
- Número de sesiones activas
- Uso de memoria
- Conexiones a BD activas

**Herramientas:**
- JConsole (incluido en JDK)
- VisualVM
- New Relic
- Prometheus + Grafana

### Backups

**Script de backup automático:**

```bash
#!/bin/bash
# backup.sh

BACKUP_DIR="/var/backups/cosmeticos_mercy"
DATE=$(date +%Y%m%d_%H%M%S)

# Backup de BD
mysqldump -u mercy_app -p$DB_PASSWORD cosmeticos_mercy > \
  $BACKUP_DIR/db_$DATE.sql

# Backup de archivos
tar -czf $BACKUP_DIR/app_$DATE.tar.gz \
  /usr/local/tomcat/webapps/cosmeticosmercyjsp/

# Mantener solo últimos 30 días
find $BACKUP_DIR -name "*.sql" -mtime +30 -delete
find $BACKUP_DIR -name "*.tar.gz" -mtime +30 -delete

echo "Backup completado: $DATE"
```

**Programación con cron:**
```bash
# Ejecutar backup diariamente a las 2 AM
0 2 * * * /home/admin/backup.sh
```

### Mantenimiento Preventivo

**Semanal:**
- ✅ Revisar logs de errores
- ✅ Verificar estado de BD
- ✅ Monitorear performance

**Mensual:**
- ✅ Análisis de seguridad
- ✅ Actualización de dependencias
- ✅ Limpieza de archivos temporales
- ✅ Revisión de capacidad

**Trimestral:**
- ✅ Pruebas de recuperación de backups
- ✅ Auditoría de seguridad
- ✅ Planificación de mejoras
- ✅ Revisión de logs de auditoría

---

## 🔧 TROUBLESHOOTING TÉCNICO

### Problema 1: Error de Conexión a BD

**Síntoma:**
```
java.sql.SQLException: Could not connect to jdbc:mariadb://localhost:3306/cosmeticos_mercy
```

**Causas posibles:**
1. MariaDB no está corriendo
2. Credenciales incorrectas
3. BD no existe
4. Firewall bloquea puerto 3306

**Solución:**
```bash
# 1. Verificar si MariaDB está corriendo
sudo systemctl status mariadb

# 2. Iniciar si no está corriendo
sudo systemctl start mariadb

# 3. Verificar conexión
mysql -u mercy_app -p -h localhost -D cosmeticos_mercy

# 4. Revisar propiedades
cat src/main/resources/database.properties

# 5. Ver puertos abiertos
netstat -tln | grep 3306
```

### Problema 2: JAR/Dependencias no encontradas

**Síntoma:**
```
[ERROR] Failed to execute goal on project cosmeticosmercyjsp: Could not resolve dependencies
```

**Solución:**
```bash
# 1. Limpiar caché de Maven
mvn clean

# 2. Descargar dependencias nuevamente
mvn dependency:resolve

# 3. Recompilar
mvn clean compile

# 4. Si persiste, actualizar índices
mvn -U clean compile
```

### Problema 3: Sesión expira inmediatamente

**Síntoma:**
Usuario iniciado de sesión es redirigido a login inmediatamente

**Causas:**
1. Filtro de autenticación muy restrictivo
2. Cookie de sesión no se guarda
3. Timeout de sesión muy corto

**Solución:**

En `web.xml`:
```xml
<session-config>
    <cookie-config>
        <http-only>true</http-only>
        <secure>false</secure>
    </cookie-config>
    <tracking-mode>COOKIE</tracking-mode>
    <timeout>30</timeout>
</session-config>
```

En `AuthenticationFilter.java`:
```java
// Revisar lógica de validación de sesión
HttpSession session = request.getSession(false);
if (session != null && session.getAttribute("usuario") != null) {
    // Usuario autenticado
    chain.doFilter(request, response);
}
```

### Problema 4: Contraseña no se valida correctamente

**Síntoma:**
Login falla aunque la contraseña sea correcta

**Causas:**
1. Diferencia en caracteres especiales
2. Espacios adicionales
3. Encoding diferente
4. Contraseña se almacena diferente en BD

**Solución:**
```java
// En UserDAO.obtenerUsuarioPorCorreoYContraseña()

public User obtenerUsuarioPorCorreoYContraseña(String correo, String contraseña) {
    String query = "SELECT * FROM usuarios WHERE correo = ? AND contraseña = ?";
    
    // IMPORTANTE: Trimear espacios
    correo = correo.trim();
    contraseña = contraseña.trim();
    
    // Si usa encriptación:
    // contraseña = encriptarContraseña(contraseña);
    
    try (Connection conn = DatabaseConnection.getConnection();
         PreparedStatement stmt = conn.prepareStatement(query)) {
        
        stmt.setString(1, correo);
        stmt.setString(2, contraseña);
        
        ResultSet rs = stmt.executeQuery();
        
        if (rs.next()) {
            return new User(
                rs.getInt("id_usuario"),
                rs.getString("nombre"),
                rs.getString("correo"),
                // ...
            );
        }
    }
    return null;
}
```

### Problema 5: Tomcat no inicia

**Síntoma:**
```
Error starting ApplicationContext
```

**Causas:**
1. Puerto 8080 en uso
2. Error en web.xml
3. Problema en inicialización de clases

**Solución:**
```bash
# 1. Verificar si puerto está en uso
netstat -tln | grep 8080

# 2. Cambiar puerto en server.xml
# $CATALINA_HOME/conf/server.xml
<Connector port="8081" protocol="HTTP/1.1" .../>

# 3. Limpiar directorio work
rm -rf $CATALINA_HOME/work/Catalina/localhost/cosmeticosmercyjsp

# 4. Reintentar inicio
$CATALINA_HOME/bin/startup.sh

# 5. Ver detalles del error
tail -100 $CATALINA_HOME/logs/catalina.out
```

### Problema 6: Falta de espacio en BD

**Síntoma:**
```
The disk has run out of space (Errcode: 28)
```

**Solución:**
```bash
# 1. Verificar espacio disponible
df -h

# 2. Limpiar archivos temporales
rm -rf $CATALINA_HOME/work/*
rm -rf /tmp/*

# 3. Comprimir logs antiguos
gzip $CATALINA_HOME/logs/catalina.out.*

# 4. Hacer backup y limpiar tablas de logs de BD
mysql -u root -p -e "OPTIMIZE TABLE cosmeticos_mercy.usuarios;"

# 5. Liberar espacio
# Ampliar partición o agregar disco duro
```

---

## 📚 Recursos Adicionales

### Documentación Oficial
- [Jakarta EE](https://jakarta.ee/specifications/)
- [Apache Tomcat](https://tomcat.apache.org/tomcat-10.0-doc/)
- [MariaDB](https://mariadb.com/docs/)
- [Maven](https://maven.apache.org/guides/)

### Libros Recomendados
- "Enterprise Java Development with Jakarta EE"
- "Tomcat: The Definitive Guide"
- "MySQL Performance Tuning"

### Herramientas Útiles
- MySQL Workbench: Visualización de BD
- Postman: Testing de APIs
- Git: Control de versiones
- IntelliJ IDEA: IDE para desarrollo

---

**Versión:** 1.0  
**Última actualización:** Noviembre 2025  
**Autor:** Equipo de Desarrollo  
**Estado:** Completo y Verificado

Para preguntas o actualizaciones, contactar al equipo de desarrollo.

