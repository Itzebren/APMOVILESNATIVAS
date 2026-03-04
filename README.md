# hello_flutter

# Actividad 1: Hello Android con Flutter

## Descripción del Proyecto
Esta aplicación fue desarrollada como una introducción al entorno de desarrollo móvil. La actividad consistió en la creación de una "Activity" inicial (pantalla principal) que muestra un mensaje de bienvenida y el ciclo de vida básico de una aplicación móvil.

## Descripción de las Activities
- En la pantalla principal  se despliega el widget central con el mensaje "Hello Android"

## Manejo de Transiciones y Ciclo de Vida
- **Ciclo de Vida:** La aplicación utiliza el ciclo de vida gestionado por el Framework. Específicamente, se utiliza el método `initState()` para configurar el estado inicial de la aplicación, similar al `onCreate()` en Android nativo. Para la limpieza de recursos, se cuenta con el método `dispose()`, equivalente a `onDestroy()`.
- **Transiciones:** La navegación y las transiciones entre pantallas se manejan mediante el `Navigator` de Flutter, el cual gestiona una pila de widgets (Stack). Esto permite que el sistema operativo maneje la navegación hacia atrás de manera nativa, asegurando la integridad del ciclo de vida.

## Instrucciones para Ejecutar
1. Asegúrate de tener instalado Flutter SDK y configurado un emulador Android (API 36.1+).
2. Clona este repositorio en tu máquina local.
3. Abre el proyecto en Android Studio o VS Code.
4. Ejecuta el comando en la terminal: `flutter run`.


![Evidencia](imgs/Evidenccia.png)




# Ejercicio 2: Explorador Espacial

Esta es una aplicación Android educativa diseñada para que el usuario navegue a través de diferentes niveles del cosmos, desde la Vía Láctea hasta la superficie de la Luna. El objetivo principal es demostrar la implementación de Intents, transiciones personalizadas entre actividades y el diseño de interfaces mediante XML.

## Vista Previa

| Vía Láctea | Sistema Solar | Planeta Tierra | La Luna |
| :---: | :---: | :---: | :---: |
| ![Vía Láctea](res/drawable/vialactea.jpg) | ![Sol](res/drawable/sol.png) | ![Tierra](res/drawable/planeta.webp) | ![Luna](res/drawable/luna.png) |

## Características

La aplicación se compone de cuatro pantallas principales con un diseño temático progresivo:

1. **Vía Láctea (Inicio):** Pantalla de bienvenida con estética espacial y acceso al inicio del viaje.
2. **Sistema Solar:** Representación del Sol que permite avanzar hacia la Tierra.
3. **Planeta Tierra:** Vista enfocada en el planeta que habilita la navegación hacia su satélite.
4. **La Luna:** Destino final del recorrido con funcionalidad para reiniciar la experiencia regresando al inicio.

## Tecnologías Utilizadas

* **Lenguaje:** Kotlin
* **Interfaz:** XML Layouts (LinearLayout)
* **SDK de Compilación:** 36 (Android 15+)
* **Librerías principales:**
    * androidx.core-ktx:1.17.0
    * androidx.appcompat:1.6.1
    * androidx.activity:1.12.3
    * com.google.android.material:1.10.0

## Navegación y Transiciones

El proyecto emplea animaciones específicas para mejorar la fluidez de la experiencia de usuario:

* **Fundido (Fade):** Aplicado en la transición entre la Vía Láctea y el Sistema Solar.
* **Deslizamiento (Slide):** Utilizado para el movimiento entre el Sistema Solar y la Tierra.
* **Gestión de Pila (Stack):** La actividad de la Luna incluye una lógica para limpiar la pila de actividades existentes, permitiendo un retorno limpio a la pantalla de inicio.

## Estructura de Archivos

* **MainActivity.kt:** Punto de entrada; gestiona la vista de la Vía Láctea.
* **SistemaSolarActivity.kt:** Gestiona la lógica de la vista del Sol.
* **PlanetaActivity.kt:** Gestiona la lógica de la vista de la Tierra.
* **LunaActivity.kt:** Gestiona la vista final y el reinicio de la aplicación.
* **res/layout/:** Archivos XML que definen la jerarquía de vistas de cada etapa.
* **res/drawable/:** Recursos gráficos necesarios (vialactea.jpg, sol.png, planeta.webp, luna.png).

## Configuración del Proyecto

Para la correcta ejecución del proyecto, es necesario contar con Android Studio actualizado y el SDK de Android 36 instalado.

```kotlin
android {
    compileSdk = 36
    defaultConfig {
        minSdk = 24
        targetSdk = 36
    }
}
