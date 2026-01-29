# Superhero App

Una aplicación Flutter para buscar y visualizar información sobre superhéroes.

## Descripción

Este proyecto es una aplicación móvil desarrollada en Flutter que permite a los usuarios buscar superhéroes por nombre y ver detalles específicos sobre ellos. Utiliza una API externa para obtener la información y mostrarla en una interfaz amigable.

## Características

-   **Búsqueda de Superhéroes:** Barra de búsqueda para encontrar superhéroes por su nombre.
-   **Listado de Resultados:** Visualización de los resultados de búsqueda con imágenes y nombres.
-   **Detalle de Superhéroe:** Pantalla de detalle que muestra información ampliada del superhéroe seleccionado (imagen, nombre, estadísticas, etc.).
-   **Diseño Responsivo:** Interfaz adaptada para diferentes tamaños de pantalla.
-   **Manejo de Errores:** Mensajes claros cuando no se encuentran resultados o hay errores de conexión.

## Tecnologías Utilizadas

-   **Flutter:** Framework principal para el desarrollo de la UI.
-   **Dart:** Lenguaje de programación.
-   **http:** Paquete para realizar peticiones HTTP a la API de superhéroes.

## Estructura del Proyecto

-   `lib/main.dart`: Punto de entrada de la aplicación.
-   `lib/screens/`: Contiene las pantallas de la aplicación (`SuperheroSearchScreen`, `SuperheroDetailScreen`).
-   `lib/data/`: Manejo de datos y modelos (`Repository`, `SuperheroResponse`, etc.).

## Capturas de Pantalla

|:---:|:---:|:---:|
|(assets/images/App1.png) | (assets/images/App2.png) | (assets/images/App3.png) |

## Cómo Ejecutar el Proyecto

1.  **Clonar el repositorio:**
    ```bash
    git clone https://github.com/Dainel-Samuel/Superhero-App.git
    ```

2.  **Instalar dependencias:**
    Desde la raíz del proyecto, ejecuta:
    ```bash
    flutter pub get
    ```

3.  **Ejecutar la aplicación:**
    ```bash
    flutter run
    ```

## Requisitos

-   Flutter SDK ^3.10.4
-   Conexión a Internet para realizar las búsquedas.
