# Blütezeit – Standalone-Version

Das ist die gleiche Bauweise wie bei eurem Lifetracker: **eine einzige
Datei** (`index.html`), Supabase-Zugangsdaten werden beim ersten Öffnen
direkt im Browser eingegeben und dort gespeichert — keine separate
`config.js` mehr nötig.

## 1. Supabase einrichten

1. Projekt auf [supabase.com](https://supabase.com) anlegen (falls noch
   nicht geschehen).
2. Im **SQL Editor** den Inhalt von `schema.sql` einfügen und ausführen.
3. Unter **Project Settings → API** die **Project URL** und den
   **anon public key** (den klassischen langen JWT-Key, nicht den neuen
   "Publishable key") kopieren.

## 2. Über GitHub hochladen (nur im Browser, kein Terminal)

1. Neues **privates** Repository auf github.com anlegen.
2. **Add file → Upload files** → `index.html`, `schema.sql` und diese
   `README.md` per Drag & Drop hochladen.
3. Unten **Commit changes** klicken.

## 3. Hosten mit GitHub Pages

1. Im Repository zu **Settings → Pages**.
2. Bei **Branch** `main` auswählen, Ordner `/ (root)`, speichern.
3. Nach ein bis zwei Minuten ist die App unter der angezeigten
   `github.io`-Adresse erreichbar.

## 4. Einmalig einrichten

1. Die App-URL öffnen (auf beiden Handys/Geräten).
2. Beim ersten Öffnen erscheint der Einrichtungs-Bildschirm: Project URL
   und anon key eintragen, **"Verbinden & speichern"** klicken.
3. Ab jetzt merkt sich der Browser die Verbindung — beim nächsten Öffnen
   erscheint direkt der Kalender.

Da beide von euch die App separat öffnen, muss dieser Schritt auf **jedem
Gerät einmal** gemacht werden (URL + Key sind ja identisch, nur die
Eingabe passiert lokal auf jedem Gerät).

## Updates später hochladen

Bei Änderungen einfach die neue `index.html` erneut über
**Add file → Upload files** hochladen — GitHub Pages aktualisiert die Seite
automatisch. Die Supabase-Daten bleiben davon unberührt.
