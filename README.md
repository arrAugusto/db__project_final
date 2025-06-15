🚀 Proyecto ETL: Ventas y Compras - Dashboard Power BI

Este proyecto demuestra cómo transformar datos operativos en visualizaciones de alto impacto usando herramientas profesionales de BI. Desde un simple Excel hasta un poderoso dashboard, aquí vendo todo el humo... y funciona. 💼📊

📁 Estructura del Flujo de Trabajo

1. 📄 Fuente de Datos

Archivo Excel: origen_ventas_compras.xlsx

Hojas:

Compras: contiene datos de adquisiciones

Ventas: contiene datos de ventas con información de cliente y vendedor

2. ⚙️ Proceso ETL (SSIS)

Herramienta: Visual Studio con Integration Services Project

Componentes:

Compras: desde Excel hacia Fact_Compras

Ventas: desde Excel hacia Fact_Ventas

Flujo de control general del paquete SSIS:

📷 Imagen: imagenes/flujo_ssis.png


![Flujo SSIS](![Screenshot 2025-06-14 201422](https://github.com/user-attachments/assets/8f9b1956-2352-4f86-93b3-a4386cdb2096))

3. 🔄 Transformaciones de Datos

Conversión de tipos (Data Conversion)

Búsquedas (Lookup) en dimensiones:

Producto

Cliente

Sucursal

Fecha

📷 Imagen: imagenes/lookup_etl.png


![Lookup](![Screenshot 2025-06-14 201242](https://github.com/user-attachments/assets/3268553e-06ff-4165-a647-82b6060a17e1))

🗄️ Base de Datos SQL Server: db_project_ventas_compras

Tablas utilizadas:

Hechos:

Fact_Compras

Fact_Ventas

Dimensiones:

Dim_Producto

Dim_Cliente

Dim_Proveedor

Dim_Sucursal

Dim_Fecha

📷 Imagen: imagenes/estructura_sqlserver.png

![Tablas](![Screenshot 2025-06-14 201227](https://github.com/user-attachments/assets/f9c3be76-547e-4986-8d13-2e737435164e))

🧠 Modelo Estrella

Power BI construye relaciones entre hechos y dimensiones para facilitar el análisis.

📷 Imagen: imagenes/modelo_estrella.png

![Modelo Estrella](![Screenshot 2025-06-14 193743](https://github.com/user-attachments/assets/af6953d3-392c-4916-9398-828c4c48369e))

📊 Dashboard Final en Power BI

Visualizaciones:

📈 Suma de Unidades por Vendedor

💵 Suma de Precio Unitario por Vendedor

📋 Lista de Clientes y Direcciones

🔢 Total de ventas

📷 Imagen: imagenes/dashboard_powerbi.png



![Dashboard](![Screenshot 2025-06-14 201615](https://github.com/user-attachments/assets/42d7289c-7488-4b57-a4cf-083258293bc6))

🧰 Tecnologías Utilizadas![Uploading Screenshot 2025-06-14 201615.png…]()


Tecnología

Propósito

Microsoft Excel

Fuente de datos inicial (.xlsx)

SSIS (Visual Studio)

ETL: extracción, transformación y carga automatizada

SQL Server

Base de datos relacional para almacenamiento estructurado

Power BI

Visualización interactiva y análisis de métricas

✅ Resultado Final del Paquete

📷 Imagen: imagenes/resultado_final.png

![SSIS Final](![Screenshot 2025-06-14 201227](https://github.com/user-attachments/assets/965c1f12-72fe-4ece-a2ac-3c208636cfd1))


🏁 Conclusión

Este proyecto implementa de forma práctica y completa un flujo de Business Intelligence moderno, aprovechando herramientas ampliamente utilizadas en el entorno empresarial. Desde datos en Excel hasta dashboards que toman decisiones, se muestra un flujo automatizado y escalable. Ideal para escenarios reales en áreas de ventas, compras o reporting operativo.

🔧 Proyecto construido con fines educativos y demostrativos. Humo incluido, funcionalidad garantizada. ✨

