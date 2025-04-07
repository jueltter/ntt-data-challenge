# ntt-data-challenge

A Java backend developer technical challenge.

## Description
The solution consists of four Spring Boot projects:
- `ntt-data-challenge-clients`: the microservice that manages the client entity.
- `ntt-data-challenge-accounts`: the microservice that manages the accounts and account movements entities.
- `ntt-data-challenge-eureka-server`: the microservice that offers service discovery.
- `ntt-data-challenge-api-gateway`: the API gateway.

### Important
The database is cloud-hosted.

## Files
- `BaseDatos.sql`: database script.
- `ntt-data-challenge.postman_collection.json`: Postman collection file.
- `01 - develop-ntt-data-challenge.postman_environment.json`: Postman environment file.
- `docker-compose.yml`: Docker Compose file.

## Prerequisites
1. Git
2. Docker | Docker Desktop

## Execution
```bash
# Clone the repository
git clone https://github.com/jueltter/ntt-data-challenge.git
# Change to the project folder
cd ./ntt-data-challenge
# Checkout the master branch
git checkout master
# <optional> Initialize submodules
git submodule update --init --recursive
# Run Docker Compose
docker-compose up
```

## Testing
1. Import the Postman collection and enviroment files into your postman workspace.
2. Execute the requests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.