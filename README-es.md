### Form in Flutter of New User with CUBIT

**Descripción:**
Un proyecto Flutter para gestionar el registro de usuarios y funcionalidades de contador utilizando BLoC y Cubit.


## Result
### Home
![Alt text](docs/home.jpg) 
### New User with validation
![Alt text](docs/new_user.jpg) 
### New User Form
![Alt text](docs/new_user.jpg) 
### Count with Cubit
![Alt text](docs/cubit.jpg) 
### Count with BloC
![Alt text](docs/bloc.jpg) 

**Estructura del Proyecto:**
- `lib/`: Contiene el código principal en Dart del proyecto.
  - `presentation/`: Contiene el código de la capa de presentación.
    - `blocs/`: Contiene las implementaciones de BLoC y Cubit.
      - `counter_bloc/`: Implementa la funcionalidad del contador utilizando el patrón BLoC.
      - `register_cubit/`: Implementa la funcionalidad de registro de usuario utilizando el patrón Cubit.
    - `widgets/`: Contiene widgets personalizados utilizados en la interfaz de usuario.
  - `infrastructure/`: Contiene el código relacionado con la infraestructura, como entradas de formulario.
  - `main.dart`: Punto de entrada de la aplicación.
- `pubspec.yaml`: Contiene las dependencias del proyecto y metadatos.

---

#### Para Empezar

1. **Clonar el Repositorio:**
   ```bash
   git clone https://github.com/Anyel-ec/App-Forms-Flutter
   ```

2. **Ir al Directorio del Proyecto:**
   ```bash
   cd forms_app
   ```

3. **Instalar Dependencias:**
   ```bash
   flutter pub get
   ```

4. **Ejecutar la Aplicación:**
   ```bash
   flutter run
   ```

---

### Registro de Usuario

**Características:**
- Permite a los usuarios registrarse con un nombre de usuario, correo electrónico y contraseña.
- Valida las entradas del usuario para nombre de usuario, correo electrónico y contraseña.
- Muestra mensajes de error para entradas no válidas.
- Guarda los detalles del registro de usuario.

**Implementación:**
- Implementado utilizando Flutter con el patrón Cubit para la gestión del estado.
- Utiliza los paquetes `flutter_bloc` y `formz` para gestionar el estado y las entradas de formulario.

---

### Funcionalidad del Contador

**Características:**
- Permite a los usuarios incrementar el contador en 1, 2 o 3.
- Reinicia el contador a cero.
- Muestra el valor actual del contador.

**Implementación:**
- Implementado utilizando Flutter con el patrón BLoC para la gestión del estado.
- Utiliza `flutter_bloc` para gestionar el estado y el manejo de eventos.

---

#### Nota
Asegúrate de tener el entorno Flutter necesario configurado e instalar las dependencias antes de ejecutar la aplicación. Consulta la documentación de Flutter para obtener instrucciones detalladas sobre cómo configurar tu entorno de desarrollo.