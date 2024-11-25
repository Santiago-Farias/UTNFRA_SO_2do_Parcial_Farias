#!/bin/bash

#Pedir la ruta para guardar la lsita de usuarios.
echo "Ingrese la ruta donde desea guardar la lista de usuarios y grupos, ej: /home/vegano/Lista_Usuarios.txt"
read -r LISTA_USUARIOS

> "$LISTA_USUARIOS"

echo "Se va a guardar en: $LISTA_USUARIOS"

# Solicitar usuario main.
echo "Ingrese el usuario principal para obtener la clave a usar:"
read -r USUARIO_CLAVE

# Revisar a ver si existe el usuario main.
if ! id "$USUARIO_CLAVE" &>/dev/null; then
  echo "Error: El usuario $USUARIO_CLAVE no existe."
  exit 1
fi

# Agarrar la clave del usuario main.
CLAVE=$(sudo getent shadow "$USUARIO_CLAVE" | cut -d: -f2)

# Solicitar la lista de usuarios y grupos al usuario que ejecuta el script
echo "Ingrese los usuarios y grupos. Para terminar, deje ambos campos en blanco y presione Enter."

while true; do
  echo -n "Ingrese el nombre del grupo (o deje en blanco para terminar): "
  read -r GRUPO
  if [ -z "$GRUPO" ]; then
    break
  fi

  echo -n "Ingrese el nombre del usuario (o deje en blanco para terminar): "
  read -r USUARIO
  if [ -z "$USUARIO" ]; then
    break
  fi

  # Agregar la entrada al archivo de lista
  echo "$GRUPO:$USUARIO" >> "$LISTA_USUARIOS"
done

echo "Lista de usuarios y grupos guardada en $LISTA_USUARIOS."
echo "Iniciando la creación de usuarios y grupos..."

# Procesar el archivo de usuarios y grupos
while IFS=":" read -r GRUPO USUARIO; do
  # Crea el grupo si no existe
  if ! getent group "$GRUPO" &>/dev/null; then
    echo "Creando grupo: $GRUPO"
    sudo groupadd "$GRUPO"
  else
    echo "El grupo $GRUPO ya existe."
  fi

  # Crea el usuario si no existe
  if ! id "$USUARIO" &>/dev/null; then
    echo "Creando usuario: $USUARIO"
    sudo useradd -m -g "$GRUPO" -p "$CLAVE" "$USUARIO"
  else
    echo "El usuario $USUARIO ya existe."
  fi
done < "$LISTA_USUARIOS"

echo "Proceso finalizado. Puede verificar con getent (passwd/group)"

