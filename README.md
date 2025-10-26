# 🚀 Dotfiles - Configuración de Termux/Zsh

Configuración personalizada optimizada para Termux en Android con Oh My Zsh, Powerlevel10k, Neovim y más.

## ✨ Características

- 🎨 **Oh My Zsh** con tema Powerlevel10k
- 🌈 **Saludo personalizado** con figlet, cowsay y lolcat
- 🐍 **Aliases optimizados** para Git, Python y desarrollo
- 📝 **Neovim** configurado con LSP
- 🔐 **Git + SSH** preconfigurado
- 🚀 **ngrok** para compartir localhost

## 📦 Requisitos previos

### 1. Instalar Termux
Descarga desde [F-Droid](https://f-droid.org/packages/com.termux/) (NO desde Play Store)

### 2. Actualizar paquetes
```bash
pkg update && pkg upgrade
3. Instalar dependencias básicas
pkg install git zsh neovim python nodejs ruby wget curl
🛠️ Instalación
1. Clonar este repositorio
cd ~
git clone git@github.com:XzLuizem/dotfiles.git
cd dotfiles
2. Dar permisos de almacenamiento
termux-setup-storage
3. Instalar Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
4. Instalar Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
5. Instalar herramientas del saludo
pkg install figlet cowsay fortune
gem install lolcat
6. Instalar LSP de Python (opcional)
npm install -g pyright
7. Copiar archivos de configuración
# Backup de configs actuales (opcional)
mv ~/.zshrc ~/.zshrc.backup 2>/dev/null
mv ~/.config/nvim/init.lua ~/.config/nvim/init.lua.backup 2>/dev/null

# Copiar nuevas configuraciones
cp .zshrc ~/
cp .zsh_aliases ~/
cp .zsh_welcome ~/

# Copiar config de Neovim
mkdir -p ~/.config/nvim
cp nvim-init.lua ~/.config/nvim/init.lua

# Copiar script de frases
mkdir -p ~/.local/bin
cp frase-random ~/.local/bin/
chmod +x ~/.local/bin/frase-random
8. Configurar Git
# Reemplaza con tus datos
git config --global user.name "Tu Nombre"
git config --global user.email "tu-email@ejemplo.com"
9. Configurar SSH para GitHub
# Generar clave SSH
ssh-keygen -t ed25519 -C "tu-email@ejemplo.com"

# Mostrar clave pública
cat ~/.ssh/id_ed25519.pub

# Copiar la salida y agregarla en GitHub:
# Settings → SSH and GPG keys → New SSH key
10. Configurar agente SSH
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
11. Probar conexión con GitHub
ssh -T git@github.com
12. Configurar directorio seguro de Git
git config --global --add safe.directory 'tu_directorio/*' # * configura seguro todo dentro de tu_directorio
13. Aplicar configuración
# Cambiar shell por defecto a Zsh
chsh -s zsh

# Recargar configuración
source ~/.zshrc
📂 Estructura de archivos
dotfiles/
├── README.md           # Este archivo
├── .zshrc              # Configuración principal de Zsh
├── .zsh_aliases        # Aliases y atajos
├── .zsh_welcome        # Script de saludo personalizado
├── .gitconfig          # Configuración de Git
├── nvim-init.lua       # Configuración de Neovim
└── frase-random        # Script de frases aleatorias
🎨 Personalización
Cambiar nombre en el saludo
Edita .zsh_welcome línea 12:
figlet -f slant "Start Termux, Hola TU_NOMBRE" | lolcat
Agregar más frases
Edita ~/.local/bin/frase-random y agrega frases al array FRASES
Cambiar mascotas de cowsay
Ver mascotas disponibles:
cowsay -l
Edita .zsh_welcome línea 28 y modifica el array mascotas
Agregar más aliases
Edita .zsh_aliases y agrega tus comandos personalizados
🚀 Comandos útiles
# Git
gs              # git status
gaa             # git add .
gc "mensaje"    # git commit
gp              # git push
glog            # git log gráfico

# Python
py              # python
venv            # crear entorno virtual
activate        # activar venv
pipi paquete    # pip install

# Navegación
..              # subir directorio
ll              # listar archivos detallado
c               # limpiar pantalla
reload          # recargar zsh

# Termux
pkgup           # actualizar paquetes
storage         # ir a almacenamiento interno
🐛 Solución de problemas
El saludo tarda en cargar
Edita .zsh_welcome y agrega -F al final de los comandos lolcat:
... | lolcat -F
Neovim muestra error de LSP
Instala pyright:
npm install -g pyright
Git muestra "dubious ownership"
git config --global --add safe.directory 'tu_directorio'
Oh My Zsh no se ve bien
Configura Powerlevel10k:
p10k configure
📝 Notas
Esta configuración está optimizada para Termux en Android
Para usar en Windows 11: usar WSL2 con algunas adaptaciones
Para usar en Linux/macOS: funciona con mínimos cambios
🤝 Contribuciones
¿Mejoras o sugerencias? Abre un issue o pull request.
📄 Licencia
MIT License - Úsalo libremente
⭐ Si te fue útil, dale una estrella al repo!
