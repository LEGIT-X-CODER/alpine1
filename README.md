# Alpine 1 — Q1 & Q2 Guide

This folder contains the consolidated **Tomcat WAR** project. Both the Frontend UI and Backend API are merged into a single `alpine-webtech.war`.

### 🏗️ VM Setup
1.  **Clone** this repo to VM 1.
2.  **Run**: `sh setup.sh`
    -   Installs Java, Maven, Tomcat 10.
    -   Builds the combined WAR.
    -   Deploys to `/var/lib/tomcat10/webapps/`.

### 🚀 Access
-   **URL**: `http://<VM1_IP>:8080/alpine-webtech/index.html`
-   **Scenario Q1**: All 3 pages (String, Math, CRUD) work on this single VM.
-   **Scenario Q2**: Using a phone on the same hotspot, visit the IP above.

### 📁 Directory Paths
-   **Project**: `~/alpine/q1-q2/`
-   **Database**: `/opt/alpine-webtech/derbydb/` (Created automatically)
