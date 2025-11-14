# 📱 FilaZero — Documentação do Projeto

Aplicativo desenvolvido como Projeto Integrador do curso de **Tecnologia em Sistemas Inteligentes – FATEC Pompeia**.  
O FilaZero busca oferecer uma alternativa digital para o processo de agendamento de consultas no SUS.

---

## 📖 Visão Geral

O **FilaZero** foi desenvolvido com o objetivo de **digitalizar o processo de agendamento de consultas médicas no SUS**, oferecendo uma plataforma intuitiva e acessível que pode reduzir filas presenciais e melhorar a experiência dos usuários.

O projeto envolve:
- Um **aplicativo Flutter** para os pacientes.  
- Uma **API REST em Node.js** que faz a comunicação com o banco de dados SQL.

---

## 🛠️ Tecnologias Utilizadas

### **Frontend — Flutter**
- Flutter 3.x  
- Dart  
- Material Design  
- Consumo de API via HTTP  
- Gerenciamento de estado

### **Backend — Node.js**
- Node.js 18+  
- Express.js  
- JWT para autenticação  
- MariaDB 
- ORM (Prisma)  
- Dotenv para variáveis de ambiente  

---

## ✨ Funcionalidades Principais

- Cadastro e login com CPF/SUS  
- Listagem de especialidades  
- Seleção de médicos disponíveis  
- Agendamento de consultas  
- Notificações sobre consultas  
- Histórico de atendimentos  
- Área de perfil do usuário  

---

## 📱 Instalação do App (Flutter)

### **Pré-requisitos**
- Flutter instalado  
- SDK configurado  
- Dispositivo físico ou emulador  

### **Passos**
```bash
git clone git@github.com:Felipe-Takayuki/FilaZero.git
cd fila-zero/app
flutter pub get
flutter run
