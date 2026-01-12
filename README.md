# 🔐 ALCASAR Auto Login (Bash)

## 📌 Description

Ce projet contient un script **Bash** permettant de se connecter automatiquement au **portail captif ALCASAR** sans utiliser de navigateur web.

Le script reproduit la requête HTTP envoyée par le formulaire de connexion ALCASAR et permet également une **reconnexion automatique** en cas de coupure.

---

## 🎯 Objectifs du projet

* Connexion à ALCASAR **uniquement en ligne de commande**
* Aucune interface graphique
* Aucune API officielle requise
* Automatisation complète après le lancement
* Script simple et compréhensible (niveau étudiant)

---

## ⚙️ Fonctionnalités

* Détection automatique du portail captif ALCASAR
* Connexion via requête HTTP POST (`curl`)
* Mot de passe saisi de manière sécurisée (non affiché)
* Reconnexion automatique si la session est perdue
* 100 % Bash

---

## 🧠 Principe de fonctionnement

1. L'utilisateur lance le script avec son email
2. Le script demande le mot de passe (masqué)
3. Détection automatique de la passerelle réseau (serveur ALCASAR)
4. Vérification de la présence du portail captif
5. Envoi automatique de la requête de connexion
6. Surveillance et reconnexion périodique

---

## 📦 Prérequis

* Système Linux (testé sous Debian)
* Bash
* curl
* iproute2

---

## 🚀 Utilisation

Rendre le script exécutable :

```bash
chmod +x alcasar_login.sh
```

Lancer le script :

```bash
./alcasar_login.sh email@example.com
```

Le mot de passe est demandé automatiquement.

---

## 🛡️ Sécurité

* Le mot de passe n'est jamais affiché
* Aucun stockage en clair sur le disque
* Le script utilise uniquement des commandes standards

---

## ⚠️ Avertissement

Ce script doit être utilisé **uniquement avec un compte légitime** et sur un réseau où vous êtes autorisé à vous connecter.

Toute utilisation abusive est de la responsabilité de l'utilisateur.

---

## 📚 Contexte pédagogique

Ce projet a été réalisé dans un cadre pédagogique afin de :

* comprendre le fonctionnement d'un portail captif
* manipuler HTTP depuis la ligne de commande
* automatiser une tâche réseau en Bash

---

## 👤 Auteur

Andy

---

## 📝 Licence

Projet pédagogique – usage personnel / académique
