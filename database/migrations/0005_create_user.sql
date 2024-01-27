-- pra criar meu usuário de aplicação

//criar usuario
CREATE USER client_api WITH PASSWORD 'admin';

//dar permissão pra se conectar no banco
GRANT CONNECT ON DATABASE db_geekkicks TO client_api;

//acessar todos os schemas publicos 
GRANT USAGE ON SCHEMA public TO client_api;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO client_api;


//dropar usuario
DROP USER client_api;
