readme 

# Partie A : Serveur HTTP Minimaliste avec Docker

1. **Execution sans Docker**
   - Cree le fichier `server.py` et lance-le avec `python server.py`.
   - Accede a http://localhost:8000 pour tester.

2. **Dockeriser l'application**
   - Cree un fichier `Dockerfile`.
   - Construis l'image avec `docker build -t dieynaba .`.
   - Lance le serveur avec `docker run -p 8000:8000 dieynaba`.
   - Accede a [http://localhost:8000](http://localhost:8000).

3. **Execution avec Docker Compose**
   - Cree un fichier `docker-compose.yml`.
   - Execute la commande : `docker-compose up --build`.
   - Accede a http://localhost:8000 pour tester.



# Partie B : Pousser l'image de l'application vers DockerHub

1. **Creer l'image Docker**
   - Execute `docker build -t mon-projet-devops:v1.0 .`.

2. **Se connecter a DockerHub**
   - Utilise `docker login` pour te connecter a DockerHub.

3. **Taguer l'image Docker**
   - Utilise `docker tag mon-projet-devops:v1.0 dieynaba127/mon-projet-devops:v1.0`.

4. **Pousser l'image vers DockerHub**
   - Pousse l'image avec `docker push dieynaba127/mon-projet-devops:v1.0`.

5. **Verification sur DockerHub**
   - Verifie sur DockerHub que l'image est bien dans ton depot.



# Partie C : Automatisation du Push vers DockerHub

1. **Creation du depot GitHub**
   - Cree un nouveau depot sur GitHub:`mon-projet-devops`.
   - N'initialise pas le depot avec un README, car tu l'as deja localement.

2. **Lier ton projet local a GitHub**
   - Ajoute le depot GitHub comme remote : 
     
     git remote add origin https://github.com/dieynaba466/mon-projet-devops.git
     

3. **Configurer GitHub Actions**
   - Cree un fichier de workflow dans `.github/workflows/ci.yml` pour automatiser le push vers DockerHub.

4. **Ajouter des Secrets a GitHub**
   - Ajoute les secrets dans `Settings > Secrets` : `DOCKER_USERNAME` et `DOCKER_PASSWORD`.

5. **Commit et Push les modifications**
   - Utilise les commandes suivantes :
     git add .
     git commit -m "Ajout du workflow pour GitHub Actions"
     git push origin main
  

6. **Verification du pipeline**
   - Va dans l'onglet **Actions** pour verifier que le pipeline s'execute correctement et que l'image est poussee sur DockerHub.
