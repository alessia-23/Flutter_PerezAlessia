# 📱 Flutter - Números Primos

Aplicación desarrollada en Flutter como parte de la práctica **"Instalación y primeros pasos con Flutter"**.

La aplicación permite generar secuencialmente números primos utilizando el botón **+** y regresar al valor inicial mediante el botón **Inicio**.

---

## 👩‍💻 Autor

**Alessia Pérez**

---

## 🎯 Objetivo

- Instalar Flutter y configurar el entorno de desarrollo.
- Crear una aplicación Flutter a partir del proyecto de ejemplo.
- Modificar la lógica del contador para generar números primos.
- Implementar navegación básica mediante botones de acción.

---

## 🛠 Tecnologías utilizadas

| Tecnología | Versión |
|------------|----------|
| Flutter | 3.44.1 |
| Dart | 3.12.1 |
| Visual Studio Code | Última versión |
| Google Chrome | Entorno de ejecución |

---

## ⚙️ Configuración del entorno

Verificación realizada con:

```bash
flutter doctor
```

Resultado:

```text
[✓] Flutter
[✓] Windows Version
[✓] Android toolchain
[✓] Chrome
[✓] Visual Studio
[✓] Connected device
[✓] Network resources

No issues found!
```

---

## 🚀 Funcionalidades

- Mostrar el primer número primo (2).
- Generar el siguiente número primo al presionar el botón ➕.
- Reiniciar la secuencia al presionar el botón 🏠.
- Interfaz desarrollada utilizando widgets nativos de Flutter.

---

## 📸 Evidencias

| Verificación de Flutter |
|-------------------------|
| <img width="768" height="200" alt="image" src="https://github.com/user-attachments/assets/c2f0402f-a98f-47d8-a990-7b3e9c688e5f" />|

<br>

| Command Palette | Aplicación ejecutándose |
|-----------------|-------------------------|
|<img width="410" height="250" alt="image" src="https://github.com/user-attachments/assets/99365510-e8c9-4cd7-afad-cab7dcbac731" />| <img width="330" height="500" alt="image" src="https://github.com/user-attachments/assets/4202b6a1-22fc-42f7-a519-2e43f89b769c" />|

<br>

| Generación de números primos |
|------------------------------|
| <img width="330" height="500" alt="image" src="https://github.com/user-attachments/assets/fa2340d8-fd8a-47e1-b982-d0625ba8c3a3" />|

---

## 🧠 Lógica utilizada

La aplicación evalúa si un número es primo verificando que no tenga divisores distintos de 1 y de sí mismo.

```dart
void _incrementCounter() {
  int numero = _numeroActual + 1;

  while (true) {
    bool esPrimo = true;

    for (int i = 2; i <= numero ~/ 2; i++) {
      if (numero % i == 0) {
        esPrimo = false;
        break;
      }
    }

    if (esPrimo) {
      setState(() {
        _primoActual = numero;
        _numeroActual = numero;
      });
      break;
    }

    numero++;
  }
}
```

---

## 📂 Estructura del proyecto

```text
lib/
 └── main.dart

screenshots/
 ├── flutter-doctor.png
 ├── flutter-command-palette.png
 ├── app-desktop.png
 └── app-primos.png
```

---

## ▶️ Ejecución

Clonar el repositorio:

```bash
git clone https://github.com/usuario/repositorio.git
```

Ingresar al proyecto:

```bash
cd flutter_application_1
```

Instalar dependencias:

```bash
flutter pub get
```

Ejecutar:

```bash
flutter run
```

---

## 📌 Resultado

La aplicación genera números primos de forma secuencial utilizando el botón principal del ejemplo de Flutter y permite reiniciar la secuencia cuando el usuario lo desee.
