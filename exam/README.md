# 📝 Esame Flutter Corso 28 – App Gestione Piante da Interno

**📅 Data:** 27 Maggio 2025  
**⏰ Durata:** 4 ore  
**👨‍🏫 Docente:** Andrea Valenzano

---

## 🎯 Obiettivo

Sviluppare una semplice applicazione Flutter per la gestione di una **collezione di piante da interno**, utilizzando le tecnologie e gli approcci studiati durante il corso:

- `flutter_bloc` per la gestione dello stato  
- `freezed` per i modelli e lo stato dei Cubit  
- `http` per le chiamate HTTP

---

## 🔗 API disponibili

Le API REST sono già pronte e documentate a questo indirizzo:

👉 **[Swagger - Piante da Interno](https://app.swaggerhub.com/apis-docs/andrea-89e/indoor_plants/1.0.0)**

Forniscono un **CRUD completo** sull'entità `Plant` con i campi:

- `objectId`: String  
- `name`: String  
- `species`: String  
- `wateringFrequency`: String  
- `sunlight`: String  
- `isPetFriendly`: bool (indica se la pianta è sicura per gli animali domestici)

---

## 📱 Requisiti funzionali dell'app

L'app deve permettere di:

1. **Visualizzare** la lista di tutte le piante  
2. **Aggiungere** e **Modificare** una nuova pianta 
3. **Eliminare** una pianta  
4. Gestire correttamente stati di loading ed errori

---

## ⚠️ Importante

- Non cancellare **piante già presenti nel database** né quelle inserite da altri colleghi.  
- Puoi **modificare o eliminare solo i dati inseriti da te** durante l'esame.  
- Gli inserimenti effettuati da altri **non vanno toccati**.

**⚠️ Attenzione:**  
Qualsiasi compito che risulti **copiato**, anche parzialmente, sarà **penalizzato**.  
Saranno penalizzati **sia chi ha copiato**, sia **chi ha permesso di copiare**.

---

## 🧩 Requisiti tecnici

- Utilizzare **flutter_bloc** per la logica di business  
- Utilizzare **freezed** per:
  - la classe `Plant`
  - stati dei Cubit
- Utilizzare **http** per l’integrazione con le API REST  
- UI semplice ma funzionale, anche solo in stile Material base, ma le personalizzazioni sono apprezzate e saranno considerate un plus.

---

## 📂 Nome progetto

Il nome del progetto **Flutter** deve essere il vostro **cognome_nome**, ad esempio:  
`flutter create rossi_mario`

---

## ✅ Consegna

- Eseguire il clean del progetto `flutter clean`  
- Comprimere l'intera cartella del progetto in un file `.zip`  
- Il file `.zip` deve chiamarsi: `cognome_nome.zip`  
- Caricare il file **su Google Classroom** nella sezione dedicata all’esame

---

## 💡 Suggerimenti

- Crea una struttura modulare: `api`, `app`, `models`, `pages`  
- Usa `dart run build_runner watch` per generare i file `freezed`
