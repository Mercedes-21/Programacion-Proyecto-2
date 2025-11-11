# 📚 MANUAL DE USUARIO - SISTEMA COSMÉTICOS MERCY

## 📑 TABLA DE CONTENIDOS
1. [Introducción](#introducción)
2. [Requisitos Previos](#requisitos-previos)
3. [Inicio Rápido](#inicio-rápido)
4. [Guía de Funcionalidades](#guía-de-funcionalidades)
5. [Gestión de Cuenta](#gestión-de-cuenta)
6. [Gestión de Productos](#gestión-de-productos)
7. [Gestión de Ventas](#gestión-de-ventas)
8. [Solución de Problemas](#solución-de-problemas)
9. [Preguntas Frecuentes](#preguntas-frecuentes)

---

## 🎯 INTRODUCCIÓN

### ¿Qué es Cosméticos Mercy?

Cosméticos Mercy es una aplicación web para la gestión de inventario y ventas de productos cosméticos. Ofrece una plataforma completa para:

- ✅ Crear y gestionar cuentas de usuario
- ✅ Administrar catálogo de productos
- ✅ Registrar y seguir ventas
- ✅ Consultar reportes de inventario

### Características Principales

| Característica | Descripción |
|---|---|
| 🔐 **Seguridad** | Sistema de autenticación robusto con sesiones protegidas |
| 👤 **Gestión de Usuarios** | Registro, login y perfiles personalizados |
| 📦 **Inventario** | Gestión completa de productos cosméticos |
| 📊 **Ventas** | Registro detallado de transacciones |
| 💾 **Base de Datos** | Almacenamiento seguro en MariaDB |
| 📱 **Interfaz Responsiva** | Funciona en PC, tablets y móviles |

---

## 💻 REQUISITOS PREVIOS

### Para Usuarios

**Requisitos mínimos:**
- Navegador web moderno (Chrome, Firefox, Edge, Safari)
- Conexión a Internet
- Acceso a la URL: `http://localhost:8080/cosmeticosmercyjsp` (o según configuración)

**Navegadores recomendados:**
- Google Chrome 90+
- Mozilla Firefox 88+
- Microsoft Edge 90+
- Safari 14+

### Para Administradores del Sistema

**Servidor:**
- Java 11 o superior
- Apache Tomcat 10.x
- MariaDB 10.6 o MySQL 8.0

**Base de Datos:**
- MariaDB/MySQL con permisos de lectura y escritura
- Base de datos: `cosmeticos_mercy`
- Usuario: preferentemente con acceso limitado a BD

---

## 🚀 INICIO RÁPIDO

### Paso 1: Acceder a la Aplicación

1. Abre tu navegador web
2. Ingresa la URL: `http://localhost:8080/cosmeticosmercyjsp`
3. Deberías ver la **página de login**

### Paso 2: Crear una Cuenta (Primera vez)

Si no tienes cuenta:

1. En la página de login, haz clic en **"Registrarse"**
2. Completa el formulario con:
   - **Nombre completo**
   - **Correo electrónico** (válido y único)
   - **Contraseña** (mínimo 8 caracteres)
   - **Confirmar contraseña**
   - Opcionalmente: teléfono y dirección
3. Acepta los términos y condiciones
4. Haz clic en **"Crear Cuenta"**
5. Si es exitoso, serás redirigido al login

### Paso 3: Iniciar Sesión

1. Ingresa tu **correo electrónico**
2. Ingresa tu **contraseña**
3. Haz clic en **"Iniciar Sesión"**
4. Si las credenciales son correctas, accederás al dashboard

### Paso 4: Explorar el Menú Principal

Una vez autenticado, verás las opciones principales:
- 📦 Productos
- 📊 Ventas
- 👤 Perfil
- 🚪 Cerrar Sesión

---

## 📖 GUÍA DE FUNCIONALIDADES

### 🔐 Página de Login

**Ubicación:** `/login`

**Campos requeridos:**
- **Email:** Tu correo de registro
- **Contraseña:** Tu contraseña de acceso

**Opciones disponibles:**
- ✏️ Crear nueva cuenta → enlace a registro
- 🔗 ¿Olvidaste tu contraseña? → (disponible en futuras versiones)

**Validaciones:**
- Email debe tener formato válido
- Contraseña no puede estar vacía
- Las credenciales deben coincidir con las registradas

**Errores comunes:**
- ❌ "Credenciales inválidas" → Verifica email y contraseña
- ❌ "Sesión expirada" → Inicia sesión nuevamente
- ❌ "Acceso denegado" → Tu cuenta podría estar inactiva

---

### 📝 Página de Registro

**Ubicación:** `/registro`

**Campos requeridos:**
- **Nombre completo:** 
  - Mínimo 3 caracteres
  - Sin números
  - Incluye tu nombre y apellido
  
- **Correo electrónico:**
  - Debe ser válido (ejemplo@dominio.com)
  - Debe ser único en el sistema
  - Se usará para iniciar sesión
  
- **Contraseña:**
  - Mínimo 8 caracteres
  - Se recomienda usar mayúsculas, minúsculas, números
  - Indicador de fortaleza te ayudará
  
- **Confirmar Contraseña:**
  - Debe coincidir exactamente con la contraseña
  - Protege contra errores de tipeo

**Campos opcionales:**
- 📞 Teléfono
- 🏠 Dirección

**Indicador de Fortaleza de Contraseña:**
- 🔴 **Débil:** Menos de 8 caracteres
- 🟡 **Media:** 8+ caracteres sin variedad
- 🟢 **Fuerte:** Mayúsculas, minúsculas, números, caracteres especiales

**Términos y Condiciones:**
- Debes marcar la casilla para aceptar
- Se activa el botón "Crear Cuenta" solo después de aceptar

**Errores comunes:**
- ❌ "Las contraseñas no coinciden" → Verifica que ambas sean idénticas
- ❌ "Este correo ya está registrado" → Usa otro email
- ❌ "Campos requeridos vacíos" → Completa todos los datos obligatorios
- ❌ "Email inválido" → Usa formato correcto (usuario@dominio.com)

---

## 👤 GESTIÓN DE CUENTA

### Acceder al Perfil

1. Una vez autenticado, haz clic en el ícono de **perfil** (👤) o menú
2. Selecciona **"Mi Perfil"** o **"Datos Personales"**
3. Verás tu información actual

### Actualizar Información Personal

**Pasos:**
1. Ve a tu perfil
2. Haz clic en **"Editar Perfil"** o **"Modificar"**
3. Edita los campos deseados:
   - Nombre
   - Teléfono
   - Dirección
4. Haz clic en **"Guardar Cambios"**

**⚠️ Notas importantes:**
- El correo electrónico NO puede cambiar
- Los cambios se guardan automáticamente
- Recibirás confirmación de actualización

### Cambiar Contraseña

**Pasos:**
1. Ve a **Configuración** o **Seguridad**
2. Selecciona **"Cambiar Contraseña"**
3. Ingresa tu contraseña actual
4. Ingresa la nueva contraseña (2 veces)
5. Haz clic en **"Actualizar"**

**Requisitos de contraseña nueva:**
- Diferente a la actual
- Mínimo 8 caracteres
- Recomendado: mezcla de mayúsculas, minúsculas, números

### Cerrar Sesión

**Opción 1 - Menú Principal:**
1. Haz clic en el menú (≡)
2. Selecciona **"Cerrar Sesión"** o **"Logout"**

**Opción 2 - Perfil:**
1. Haz clic en tu perfil (👤)
2. Selecciona **"Cerrar Sesión"**

**Seguridad:**
- Siempre cierra sesión en equipos compartidos
- Tu sesión expira automáticamente después de inactividad
- Puedes tener solo una sesión activa a la vez

---

## 📦 GESTIÓN DE PRODUCTOS

### Ver Catálogo de Productos

**Pasos:**
1. Desde el menú principal, selecciona **"Productos"** o **"Catálogo"**
2. Se cargará la lista de productos disponibles

**Información mostrada:**
| Campo | Descripción |
|-------|-------------|
| Código | ID único del producto |
| Nombre | Nombre del cosmético |
| Categoría | Tipo (cremas, maquillaje, etc.) |
| Precio | Precio unitario en moneda local |
| Stock | Cantidad disponible |
| Fecha Ingreso | Cuándo se agregó al inventario |

### Crear Nuevo Producto

**Acceso:** Solo administradores

**Pasos:**
1. En la sección de productos, haz clic en **"Agregar Producto"** o **"+"**
2. Completa el formulario:
   - **Nombre:** Nombre descriptivo
   - **Categoría:** Selecciona de lista
   - **Precio Unitario:** En formato decimal (ej: 19.99)
   - **Cantidad:** Unidades en stock
   - **Descripción:** (opcional) Detalles adicionales
3. Haz clic en **"Guardar"** o **"Crear Producto"**

**Validaciones:**
- Nombre no puede estar vacío
- Precio debe ser mayor a 0
- Cantidad debe ser número entero
- Categoría debe seleccionarse

### Editar Producto

**Pasos:**
1. Desde la lista de productos, busca el que deseas editar
2. Haz clic en el ícono **"✏️ Editar"** o el nombre
3. Modifica los campos necesarios
4. Haz clic en **"Guardar Cambios"**

**Campos editables:**
- Nombre
- Categoría
- Precio
- Cantidad/Stock
- Descripción

**⚠️ Campos que no se pueden cambiar:**
- Código (ID del producto)
- Fecha de ingreso

### Eliminar Producto

**Pasos:**
1. Desde la lista, localiza el producto
2. Haz clic en el ícono **"🗑️ Eliminar"** o **"Borrar"**
3. Confirma la acción en el diálogo emergente
4. El producto se marcará como inactivo

**⚠️ Importante:**
- Esta es una eliminación lógica (soft delete)
- El registro se mantiene en historial
- No se pierde información histórica de ventas

### Buscar Productos

**Métodos de búsqueda:**
1. **Por nombre:** Escribe en la barra de búsqueda
2. **Por categoría:** Selecciona de filtros
3. **Por rango de precios:** Usa deslizadores
4. **Por stock:** Filtra productos con/sin stock

**Funcionalidad de búsqueda:**
- Búsqueda en tiempo real
- No sensible a mayúsculas
- Coincidencia parcial de palabras

---

## 📊 GESTIÓN DE VENTAS

### Registrar Nueva Venta

**Pasos:**
1. Desde el menú principal, selecciona **"Ventas"** o **"Nueva Venta"**
2. Completa los datos de la venta:
   - **Producto:** Selecciona del catálogo
   - **Cantidad:** Unidades vendidas
   - **Fecha de venta:** Automática o manual
   - **Precio unitario:** Se carga automáticamente
3. El **total** se calcula automáticamente
4. Haz clic en **"Registrar Venta"** o **"Procesar"**

**Validaciones:**
- No puedes vender más unidades que el stock
- El sistema previene sobre-ventas
- La cantidad debe ser mayor a 0

### Ver Historial de Ventas

**Pasos:**
1. Ve a **"Ventas"** → **"Historial"** o **"Reporte"**
2. Verás la lista de todas las ventas registradas

**Información disponible:**
| Campo | Descripción |
|-------|-------------|
| ID Venta | Identificador único |
| Producto | Nombre del producto vendido |
| Cantidad | Unidades vendidas |
| Fecha | Cuándo se realizó la venta |
| Total | Monto total de la venta |
| Vendedor | Usuario que registró (si aplica) |

### Filtrar Ventas

**Opciones de filtrado:**
1. **Por fecha:** Rango de fechas
2. **Por producto:** Selecciona de lista
3. **Por monto:** Ventas mayores/menores a cantidad
4. **Por vendedor:** Usuario que registró

**Pasos:**
1. En la sección de ventas, ubica los **filtros**
2. Selecciona los criterios deseados
3. Haz clic en **"Aplicar"** o **"Buscar"**
4. Los resultados se actualizarán automáticamente

### Generar Reportes

**Tipos de reportes disponibles:**

1. **Reporte de Ventas Totales**
   - Monto total vendido en período
   - Desglose por mes/semana/día

2. **Reporte por Producto**
   - Qué productos más se venden
   - Ingresos por producto

3. **Reporte de Inventario**
   - Stock actual de cada producto
   - Productos con bajo stock

**Generación:**
1. Ve a **"Reportes"**
2. Selecciona el tipo de reporte
3. Especifica el rango de fechas (si aplica)
4. Haz clic en **"Generar"** o **"Descargar"**
5. El reporte se abrirá en PDF o Excel

---

## ⚠️ SOLUCIÓN DE PROBLEMAS

### Problemas de Acceso

#### ❌ "No puedo iniciar sesión"

**Posibles causas y soluciones:**

| Problema | Solución |
|----------|----------|
| Olvide contraseña | Usa "¿Olvidaste tu contraseña?" (si disponible) |
| Usuario no existe | Crea una nueva cuenta en Registro |
| Contraseña incorrecta | Verifica que esté correcta, sensible a mayúsculas |
| Cuenta inactiva | Contacta al administrador |
| Sesión expirada | Recarga la página e intenta de nuevo |

**Pasos de recuperación:**
1. Verifica que escribiste correctamente tu email
2. Verifica que escribiste la contraseña correcta
3. Si no recuerdas, usa opción de recuperación (si disponible)
4. Crea una nueva cuenta si es necesario

#### ❌ "Sesión expirada"

**Cause:** Tu sesión fue cerrada por inactividad

**Solución:**
1. Haz clic en "Iniciar Sesión"
2. Ingresa tu email y contraseña nuevamente
3. La sesión se restablecerá

**Cómo evitarlo:**
- Realiza alguna acción regularmente
- Las sesiones expiran después de 30 minutos de inactividad

### Problemas de Renderización

#### ❌ "La página se ve distorsionada o con estilos incompletos"

**Soluciones:**
1. **Limpiar caché del navegador:**
   - Chrome: Ctrl+Shift+Del
   - Firefox: Ctrl+Shift+Del
   - Edge: Ctrl+Shift+Del

2. **Recargar página:**
   - Ctrl+F5 (recarga completa, no caché)
   - Ctrl+Shift+R (en Chrome)

3. **Cambiar navegador:** Prueba con Chrome, Firefox o Edge

### Problemas de Base de Datos

#### ❌ "Error de conexión a BD"

**Si eres usuario regular:** Contacta al administrador del sistema

**Si eres administrador:**
1. Verifica que MariaDB está corriendo
2. Verifica credenciales en `database.properties`
3. Verifica conectividad a BD
4. Revisa logs del servidor

### Problemas de Carga Lenta

**Causas comunes:**
- Conexión a internet lenta
- Servidor sobrecargado
- Navegador con muchas pestañas

**Soluciones:**
1. Cierra otras aplicaciones/pestañas
2. Recarga la página (Ctrl+R)
3. Prueba en otro navegador
4. Verifica tu conexión de internet
5. Contacta al administrador si persiste

---

## ❓ PREGUNTAS FRECUENTES

### ¿Es segura mi información?

**Sí.** El sistema implementa:
- ✅ Encriptación de contraseñas
- ✅ Sesiones protegidas
- ✅ Validaciones server-side
- ✅ Protección CSRF (si está habilitada)
- ✅ Soft delete de datos (no se pierden registros históricos)

### ¿Qué pasa si olvido mi contraseña?

**Opciones:**
1. Si hay función de recuperación disponible, usa el enlace "¿Olvidaste tu contraseña?"
2. Contacta al administrador del sistema
3. Se puede resetear la contraseña desde la BD (admin)

### ¿Puedo usar la aplicación desde móvil?

**Sí.** La aplicación es totalmente responsiva:
- ✅ Compatible con iOS y Android
- ✅ Funciona en navegadores móviles
- ✅ Interfaz adaptada a pantallas pequeñas

### ¿Cuántos usuarios puede haber simultáneamente?

**Ilimitados.** Pero:
- Cada usuario solo puede tener una sesión activa
- La sesión anterior se cierra si inicia desde otro dispositivo
- El rendimiento depende de la capacidad del servidor

### ¿Se pueden recuperar ventas eliminadas?

**No completamente.** El sistema usa soft delete:
- ✅ Los registros NO se pierden en la BD
- ✅ El administrador puede acceder a historial completo
- ❌ Los usuarios normales no ven registros eliminados

### ¿Cuál es el tiempo de sesión?

**30 minutos** de inactividad (configurable)

Si el tiempo expira:
- Se te redirigirá automáticamente a login
- Tus datos sin guardar se perderán
- Debes iniciar sesión de nuevo

### ¿Hay backup de datos?

**Depende del administrador.**

Se recomienda:
- ✅ Backups diarios de la base de datos
- ✅ Backups automáticos programados
- ✅ Almacenamiento redundante

Contacta al administrador para confirmar la política de backups.

### ¿Puedo exportar mis datos?

**Depende de los permisos.**

Opciones disponibles:
- 📄 Generar reportes en PDF
- 📊 Descargar reportes en Excel
- 💾 Exportar catálogo de productos

Funcionalidades según tipo de usuario:
- **Usuarios normales:** Acceso limitado a sus propios datos
- **Administradores:** Acceso completo a todos los datos

---

## 📞 SOPORTE Y CONTACTO

### Cómo reportar un problema

Si encuentras un error o tienes una pregunta:

1. **Reúne información:**
   - Qué ibas a hacer
   - Qué error viste
   - En qué navegador ocurrió
   - A qué hora sucedió

2. **Contacta al soporte:**
   - 📧 Email: soporte@cosmeticosmercyjsp.local
   - 📞 Teléfono: [según configuración]
   - 💬 Sistema de tickets: [si disponible]

3. **Describe el problema claramente** con capturas si es posible

### Información de versión

- **Nombre:** Cosméticos Mercy JSP
- **Versión:** 1.0
- **Última actualización:** Noviembre 2025
- **Desarrollador:** [Nombre del equipo]

---

## 📋 CHECKLIST DE SEGURIDAD PERSONAL

Recomendaciones para usar la aplicación de forma segura:

- [ ] Utiliza una contraseña fuerte (8+ caracteres, variados)
- [ ] Cambia tu contraseña regularmente (cada 3 meses)
- [ ] No compartas tu contraseña con nadie
- [ ] Cierra sesión en equipos compartidos
- [ ] No uses WiFi público para transacciones sensibles
- [ ] Mantén tu navegador actualizado
- [ ] Verifica que la URL sea correcta antes de iniciar sesión
- [ ] No hagas clic en enlaces de email sospechosos
- [ ] Utiliza autenticación de dos factores (si disponible)

---

**Última actualización:** Noviembre 2025  
**Versión del manual:** 1.0  
**Estado:** Completo

Para actualizaciones de este manual, contacta al administrador del sistema.

