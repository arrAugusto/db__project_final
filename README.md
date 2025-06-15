# 🚀 Proyecto ETL: Ventas y Compras - Dashboard Power BI

Este proyecto demuestra cómo transformar datos operativos en visualizaciones de alto impacto usando herramientas profesionales de inteligencia de negocios. Desde un archivo Excel hasta un dashboard dinámico en Power BI. 💼📊

---

## 📁 Estructura del Flujo de Trabajo

### 1. 📄 Fuente de Datos

- **Archivo Excel:** `origen_ventas_compras.xlsx`
- **Hojas:**
  - `Compras`: contiene datos de adquisiciones
  - `Ventas`: contiene datos de ventas con información de cliente y vendedor

---

### 2. ⚙️ Proceso ETL (SSIS)

- **Herramienta utilizada:** Visual Studio con Integration Services Project
- **Componentes del flujo:**
  - Carga desde hoja `Compras` hacia tabla `Fact_Compras`
  - Carga desde hoja `Ventas` hacia tabla `Fact_Ventas`

**Diagrama de flujo del paquete SSIS:**

![Flujo SSIS](https://github.com/user-attachments/assets/8f9b1956-2352-4f86-93b3-a4386cdb2096)

---

### 3. 🔄 Transformaciones de Datos

- Conversión de tipos (`Data Conversion`)
- Búsquedas (`Lookup`) para completar claves foráneas desde dimensiones:
  - Producto
  - Cliente
  - Sucursal
  - Fecha

**Transformaciones aplicadas:**

![Lookup ETL](https://github.com/user-attachments/assets/3268553e-06ff-4165-a647-82b6060a17e1)

---

## 🗄️ Base de Datos SQL Server: `db_project_ventas_compras`

### Tablas utilizadas

- **Tablas de hechos:**
  - `Fact_Compras`
  - `Fact_Ventas`

- **Tablas de dimensiones:**
  - `Dim_Producto`
  - `Dim_Cliente`
  - `Dim_Proveedor`
  - `Dim_Sucursal`
  - `Dim_Fecha`

**Vista del modelo relacional en SQL Server:**

![Estructura SQL Server](https://github.com/user-attachments/assets/f9c3be76-547e-4986-8d13-2e737435164e)

---

## 🧠 Modelo Estrella

El modelo de datos se estructura como estrella, donde las tablas de hechos se relacionan con las dimensiones a través de claves foráneas. Esto permite un análisis ágil y estructurado en Power BI.

**Modelo en Power BI:**

![Modelo Estrella](https://github.com/user-attachments/assets/af6953d3-392c-4916-9398-828c4c48369e)

---

## 📊 Dashboard Final en Power BI

### Visualizaciones generadas:

- Suma de unidades vendidas por vendedor
- Suma de precio unitario por vendedor
- Lista de clientes y direcciones
- Total de ventas agregadas

**Captura del dashboard:**

![Dashboard Power BI](https://github.com/user-attachments/assets/42d7289c-7488-4b57-a4cf-083258293bc6)

---

## 🧰 Tecnologías Utilizadas

| Tecnología           | Propósito                                                  |
|----------------------|------------------------------------------------------------|
| Microsoft Excel      | Fuente de datos inicial (.xlsx)                            |
| SSIS (Visual Studio) | Extracción, transformación y carga de datos automatizada   |
| SQL Server           | Almacenamiento estructurado y consulta de datos            |
| Power BI             | Visualización interactiva y exploración de datos           |

---

## ✅ Resultado Final del Paquete

**Ejecución del flujo completo:**

![Resultado Final](https://github.com/user-attachments/assets/965c1f12-72fe-4ece-a2ac-3c208636cfd1)

---

## 🏁 Conclusión

Este proyecto implementa un flujo completo de integración de datos, transformación y análisis para el área de ventas y compras. Se utilizan herramientas estándar del entorno empresarial para garantizar trazabilidad, escalabilidad y claridad en el análisis de información operativa.

> Proyecto desarrollado con fines educativos y de demostración técnica.
