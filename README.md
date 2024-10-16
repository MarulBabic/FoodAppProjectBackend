# FoodApp

FoodApp je mobilna aplikacija koja omogućava korisnicima da pregledavaju razne kategorije hrane, naručuju jela i upravljaju svojim narudžbama.

## Zavisnosti

Prije pokretanja aplikacije, provjerite da imate instalirane sljedeće alate:

- **MySQL Server**
- **MySQL Workbench**

## Instalacija

Slijedite ove korake za instalaciju i pokretanje aplikacije:

1. **Instalirajte MySQL Server i MySQL Workbench.**
   - Postavite `root` kao korisničko ime.
   - Odaberite lozinku po vašem izboru.

2. **Preuzmite SQL dump datoteku.**
   - Preuzmite `foodAppBackend.sql`  iz mape `resources`. Nakon preuzimanja projekta s GitHub-a, datoteka se može pronaći na sljedećoj putanji unutar vašeg lokalnog projekta: <path-to-your-cloned-project>/resources/foodAppBackend.sql
.

3. **Importajte SQL dump u vašu MySQL bazu podataka.**
   - Otvorite MySQL Workbench.
   - Povežite se s vašim MySQL serverom.
   - Kreirajte novu bazu podataka (npr. `foodappbackend_db`).
   - Desni klik na novu bazu i odaberite **"Import"** ili **"Data Import"**, a zatim odaberite svoju SQL dump datoteku.

4. **Pokrenite backend aplikaciju.**
   - Osigurajte da je backend aplikacija (Spring Boot) pokrenuta na `http://localhost:8080`.

5. **Pokrenite Android aplikaciju.**
   - U Android aplikaciji, provjerite da li je u `ApiClient` klasi postavljena ispravna `BASE_URL`. Ako je backend pokrenut lokalno, URL bi trebao biti:
     ```
     http://<tvoj-lokalni-ip>:8080/
     ```
   - Primjer: `http://192.168.1.90:8080/`

## Korištenje

- Otvorite aplikaciju na Android uređaju.
- Registrirajte se ili prijavite.
- Pregledajte dostupne kategorije hrane.
- Dodajte stavke u svoju narudžbu i završite narudžbu.

## Problemi i rješenja

- **Ne mogu se povezati s backendom:**
  - Provjerite je li backend aplikacija pokrenuta na ispravnoj adresi.
  - Provjerite je li vaš Android uređaj povezan na istu mrežu kao vaše računalo.

## Licenca

Ova aplikacija je otvorenog koda. Slobodno ju koristite i modificirajte prema vašim potrebama.


--------------------------------------------------------------------------------------------------------------------------------------------


# FoodApp

FoodApp is a mobile application that allows users to browse various food categories, order dishes, and manage their orders.

## Dependencies

Before running the application, make sure you have the following tools installed:

- **MySQL Server**
- **MySQL Workbench**

## Installation

Follow these steps to install and run the application:

1. **Install MySQL Server and MySQL Workbench.**
   - Set `root` as the username.
   - Choose a password of your choice.

2. **Download the SQL dump file.**
   -Download the foodAppBackend.sql file from the resources folder. After cloning the project from GitHub, the file can be found at the following path within your local project: <path-to-your-cloned-project>/resources/foodAppBackend.sql


3. **Import the SQL dump into your MySQL database.**
   - Open MySQL Workbench.
   - Connect to your MySQL server.
   - Create a new database (e.g., `foodappbackend_db`).
   - Right-click on the new database and select **"Import"** or **"Data Import,"** then choose your SQL dump file.

4. **Run the backend application.**
   - Ensure that the backend application (Spring Boot) is running at `http://localhost:8080`.

5. **Run the Android application.**
   - In the Android application, check that the `BASE_URL` in the `ApiClient` class is set correctly. If the backend is running locally, the URL should be:
     ```
     http://<your-local-ip>:8080/
     ```
   - Example: `http://192.168.1.90:8080/`

## Usage

- Open the application on your Android device.
- Register or log in.
- Browse available food categories.
- Add items to your order and complete the checkout.

## Troubleshooting

- **Cannot connect to the backend:**
  - Check if the backend application is running at the correct address.
  - Ensure your Android device is connected to the same network as your computer.

## License

This application is open source. Feel free to use and modify it according to your needs.

