# chatNoSoloSoft
Prueba de chat que permita a distintos usuarios acceder a diferentes salas de chat y poder comunicarse en tiempo real. Hecha con Ruby on Rails y Vuejs

Para el desarrollo se ha utilizado:
    
    MongoDB en su versión 4.2.0
    Rails en su versión 6.0.0
    VueJS en su versión 2.6.10
Pasos para instalar backend y frontend:
    
    1.git clone https://github.com/toniPortillo/chatNoSoloSoft.git
    2.cd chatNoSoloSoft
-----------------------------------------------------------------------------------------------
    3.cd backend
    4.bundle install (para instalar las dependencias del Gemfile)
    5.Iniciar la base de datos MongoDB con ‘sudo service mongod start’
    6.rspec spec (para ejecutar los test y comprobar correcto funcionamiento)
    7.rails server (Inicia el servidor y ya tendríamos la api funcionando)
-----------------------------------------------------------------------------------------------
    8. cd .. (para acceder a la carpeta raíz de chatNoSoloSoft
    9. cd frontend2
    10.npm install (para instalar las dependencias del package.json)
    11.npm run dev (Inicia el cliente y ya se podría usar)
-----------------------------------------------------------------------------------------------
    http://localhost:3000 dirección del servidor api una vez iniciado
    http://localhost:8080 dirección del cliente una vez iniciado
