# 🎬 CS50 SQL Final Project: YouTube-Style Database


## 📌 Project Overview
This project is a **relational database** inspired by YouTube, tracking **users, creators, videos, and comments**.  
It demonstrates **database design, querying, and analysis** using SQL with real-world examples.

![ER Diagram](images/er_diagram.png)

---

## 🎯 Scope
- **Purpose:** Model a simplified YouTube ecosystem in SQL.  
- **In Scope:** Users, creators, videos, comments, and their relationships.  
- **Out of Scope:** Playlists, live streams, subscriptions, and full platform functionality.

---

## 🛠 Functional Requirements
- Users can view videos, comment, and see creator stats.  
- Queries include top creators, most viewed videos, total comments, and user activity.  
- Beyond scope: video playback, recommendations, and subscriptions.

---

## 🧩 Entities & Attributes
| Entity     | Attributes                          |
|-----------|-------------------------------------|
| Users      | id, name, country                   |
| Creators   | user_id, subscribers                |
| Videos     | id, creator_id, title, views, upload_date |
| Comments   | id, video_id, user_id, likes        |

**Constraints:**  
- Primary and foreign keys enforce relationships.  
- Users may or may not be creators (1-to-0/1).  
- Videos and comments have 1-to-many relationships.

---

## ⚠️ Limitations
- Cannot model live streaming, playlists, or subscriptions.  
- Limited sample data; analytics are simplified.

---

## 📊 ER Diagram
The ER diagram illustrates relationships and cardinalities:  
- **Users → Creators:** 1-to-0/1  
- **Creators → Videos:** 1-to-many  
- **Videos → Comments:** 1-to-many  
- **Users → Comments:** 1-to-many  

---

## 💻 Sample Queries
1. List all videos uploaded by a creator.  
2. Count comments per video.  
3. Find top creators by subscribers.  
4. Show users with no videos.  
5. List comments by a specific user.

---

## 🧠 Skills Demonstrated
- Writing **complex queries & subqueries**  
- **Joins, aggregations, filtering, ordering**  
- **Transactions, concurrency, scaling, sharding, optimization**  
- Preventing **SQL injection**  
- Database **design, indexing, and ER modeling**  

---

## 🚀 Final Project
- Designed a **YouTube-style database** with users, creators, videos, and comments.  
- Ran queries to analyze engagement and popularity.  
- Created an **ER diagram** with cardinalities.  

---


