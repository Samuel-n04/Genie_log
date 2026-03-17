CREATE TABLE utilisateur (
  id SERIAL PRIMARY KEY,
  nom VARCHAR(20),
  prenom VARCHAR(20),
  email VARCHAR(50),
  mot_de_passe VARCHAR(255),
  telephone VARCHAR(15)
);

CREATE TABLE patient (
  id SERIAL PRIMARY KEY,
  utilisateur_id INT REFERENCES utilisateur(id),
  date_naissance DATE,
  adresse TEXT,
  numero_ss VARCHAR(15),
  groupe_sanguin VARCHAR(3)
);

CREATE TABLE medecin (
medecin_id SERIAL PRIMARY KEY,
utilisateur_id INT REFERENCES utilisateur(id),
specialite TEXT,
sabinet TEXT,
tarif_consultation DECIMAL(10, 2)
);

CREATE TYPE statut_rdv AS ENUM ('EN_ATTENTE', 'CONFIRME', 'ANNULE', 'TERMINE');