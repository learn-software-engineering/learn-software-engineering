---
type: docs
authors: ["jnonino"]
series: ["Programming"]
nav_weight: 104
title: "Configura tu entorno de programación"
description: "Adentrarse en el mundo de la programación puede parecer una tarea titánica, especialmente cuando te encuentras frente a la decisión inicial: ¿por dónde empezar? Este artículo te guiará a través de los pasos esenciales para configurar tu entorno de programación, garantizando una base sólida para tu viaje codificador."
date: 2023-03-09
tags: ["intro", "programming", "ide", "python", "install", "tools"]
images:
  - /images/banners/programming-course.es.png
---

---

## Elegir un lenguaje de programación

La elección del lenguaje de programación es el primer y quizás el más crucial paso en el proceso de aprendizaje. Hay varios factores a considerar al seleccionar un lenguaje, incluyendo:

1. **Propósito**: ¿Para qué quieres programar? Si es para desarrollo web, JavaScript o PHP podrían ser buenas opciones. Si estás interesado en la ciencia de datos, R o Python podrían ser más adecuados.
2. **Comunidad**: Un lenguaje con una comunidad activa puede ser esencial para los principiantes. Una comunidad vibrante generalmente significa más recursos, tutoriales y soluciones disponibles en línea.
3. **Curva de aprendizaje**: Algunos lenguajes son más fáciles de aprender que otros. Es fundamental elegir uno que coincida con tu nivel de experiencia y paciencia.
4. **Oportunidades de trabajo**: Si estás buscando una carrera en programación, investigar la demanda del mercado para diferentes lenguajes puede ser útil.

Aunque hay muchos lenguajes valiosos y poderosos, para este curso, hemos elegido [**Python**](https://www.python.org/). Este lenguaje es conocido por su simplicidad y legibilidad, lo que lo hace ideal para aquellos que están empezando. Además, Python cuenta con una comunidad activa y una amplia gama de aplicaciones, desde desarrollo web hasta inteligencia artificial[^1].

### Instalación de Python

#### Para usuarios de Windows:

1. Descargar el instalador:
   - Visita el sitio web oficial de Python en [https://www.python.org/downloads/windows/](https://www.python.org/downloads/windows/)
   - Haz clic en el enlace de descarga para la última versión de Python 3.x.
2. Ejecuta el instalador:
   - Una vez completada la descarga, localiza y ejecuta el archivo instalador `.exe`.
   - Asegúrate de marcar la casilla que dice "Agregar Python al PATH" durante la instalación. Este paso es crucial para hacer que Python sea accesible desde el Símbolo del Sistema.
   - Sigue las indicaciones de instalación.
3. Verifica la instalación:
   - Abre el Símbolo del Sistema y escribe:
     ```bash
     python --version
     ```
   - Esto debería mostrar la versión de Python que acabas de instalar.

#### Para usuarios de Mac:

1. Descargar el instalador:
   - Visita el sitio web oficial de Python en [https://www.python.org/downloads/mac-osx/](https://www.python.org/downloads/mac-osx/)
   - Haz clic en el enlace de descarga para la última versión de Python 3.x.
2. Ejecuta el instalador:
   - Una vez descargado, localiza y ejecuta el archivo `.pkg`.
   - Sigue las indicaciones de instalación.
3. Verifica la instalación:
   - Abre la Terminal y escribe:
     ```bash
     python3 --version
     ```
   - Esto debería mostrar la versión de Python que acabas de instalar.

#### Para usuarios de Linux (Ubuntu/Debian):

1. Actualiza los paquetes:
   ```bash
   sudo apt update
   ```
2. Instala Python:
   ```bash
   sudo apt install python3
   ```
3. Verifica la instalación:
   - Después de la instalación, puedes comprobar la versión de Python instalada escribiendo:
     ```bash
     python3 --version
     ```

---

## Entornos de Desarrollo Integrado (IDEs)

Un IDE es una herramienta que facilita el desarrollo de aplicaciones al combinar comúnmente utilizadas en un solo software: editor de código, compilador, depurador, entre otros. Elegir el IDE adecuado puede hacer que el proceso de programación sea más fluido y eficiente.

Al evaluar IDEs, considera:

1. **Compatibilidad con el lenguaje**: No todos los IDEs son compatibles con todos los lenguajes de programación.
2. **Características**: Algunos IDEs ofrecen funcionalidades como autocompletado, resaltado de sintaxis y herramientas de depuración.
3. **Extensiones y plugins**: La posibilidad de personalizar y extender tu IDE a través de plugins puede ser muy útil.
4. **Precio**: Hay IDEs gratuitos y otros de pago. Evalúa si las características adicionales de un IDE de pago justifican el costo.

Para este curso, hemos seleccionado [**Visual Studio Code (VS Code)**](https://code.visualstudio.com/). Es un IDE popular que es gratuito y de código abierto. Es conocido por su interfaz sencilla, amplia gama de plugins y capacidad para manejar múltiples lenguajes de programación[^2]. Su comunidad activa garantiza actualizaciones regulares y una amplia gama de recursos de aprendizaje.

### Instalación de Visual Studio Code

#### Para usuarios de Windows:

1. Descargar el instalador:
   - Visita el sitio web oficial de VS Code en [https://code.visualstudio.com/](https://code.visualstudio.com/)
   - Haz clic en el botón "Descargar para Windows".
2. Ejecuta el instalador:
   - Una vez completada la descarga, localiza y ejecuta el archivo instalador `.exe`.
   - Sigue las indicaciones de instalación, incluyendo aceptar el acuerdo de licencia y elegir la ubicación de instalación.
3. Inicia VS Code:
   - Tras la instalación, puedes encontrar VS Code en tu menú de inicio.
   - Lánzalo, ¡y estarás listo para comenzar a programar!

#### Para usuarios de Mac:

1. Descargar el instalador:
   - Visita el sitio web oficial de VS Code en [https://code.visualstudio.com/](https://code.visualstudio.com/)
   - Haz clic en el botón "Descargar para Mac".
2. Instala VS Code:
   - Una vez descargado, abre el archivo `.zip`.
   - Arrastra la aplicación Visual Studio Code `.app` a la carpeta `Aplicaciones`, para que esté disponible en el Launchpad.
3. Inicia VS Code:
   - Usa la búsqueda de Spotlight o navega hasta tu carpeta de Aplicaciones para iniciar VS Code.

#### Para usuarios de Linux (Ubuntu/Debian):

1. Actualiza los paquetes e instala las dependencias:
   ```bash
   sudo apt update
   sudo apt install software-properties-common apt-transport-https wget
   ```
2. **Descarga e instala la claves necesarias:
   ```bash
   wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
   ```
3. Añade el repositorio de VS Code:
   ```bash
   sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
   ```
4. Instala Visual Studio Code:
   ```bash
   sudo apt update
   sudo apt install code
   ```
5. Inicia VS Code:
   - Puedes iniciar VS Code desde la terminal escribiendo `code` o encontrarlo en tu lista de aplicaciones instaladas.

---

## Escribe y ejecuta tu primer programa

Una vez que hayas configurado tu entorno de programación, es hora de sumergirse en la codificación.

### ¡Hola mundo!

Este es posiblemente el programa más icónico para principiantes. Es simple, pero te introduce al proceso de escribir y ejecutar código.

```python
print("¡Hola mundo!")
```

![Ejecución del programa Hola Mundo](/images/content/programming/0100-intro/setup-environment-hello-world.es.png)
*Ejecución del programa Hola Mundo*

### Cálculo de área y perímetro de un triángulo

Este programa es un poco más complejo. No solo imprime un mensaje, sino que también realiza cálculos matemáticos.

```python
# Entrada del usuario
lado1 = float(input("Introduce la longitud del primer lado: "))
lado2 = float(input("Introduce la longitud del segundo lado: "))
lado3 = float(input("Introduce la longitud del tercer lado: "))

# Cálculo del perímetro
perimetro = lado1 + lado2 + lado3

# Cálculo del área usando la fórmula de Herón
s = perimetro / 2
area = (s*(s-lado1)*(s-lado2)*(s-lado3)) ** 0.5

print(f"El perímetro del triángulo es: {perimetro}")
print(f"El área del triángulo es: {area:.2f}")
```

![Ejecución del programa Triangulo](/images/content/programming/0100-intro/setup-environment-triangle.es.png)
*Ejecución del programa Triangulo*

---

## Conclusión

Configurar un entorno de programación puede parecer desalentador al principio, pero con las herramientas y recursos adecuados, se convierte en una tarea manejable y gratificante. Esperamos que este artículo te haya proporcionado una base sólida para comenzar tu viaje en programación. ¡Feliz codificación!

---

## Referencias

[^1]: Lutz, M. (2013). *Learning Python*. O'Reilly Media.
[^2]: Microsoft. (2020). *Visual Studio Code Documentation*. Microsoft Docs.
