# Design Document

By Mohammad Humzah

Video overview: https://youtu.be/UW776lOWPcI

## Scope

The purpose of this database is to store and organize information about YouTube creators, their videos, and the interactions (such as comments) made by users. It supports queries to analyze creators’ popularity, video performance, and user engagement.

Out of Scope (not included):
Monetization details (ad revenue, sponsorships, memberships).
YouTube algorithms (recommendations, trending).
Detailed analytics like watch time, audience demographics.

## Functional Requirements

What a user should be able to do with the database is Look up basic information about users, including their country. Identify which users are creators and see their subscriber counts. View details of videos (title, views, upload date) uploaded by creators.
Retrieve all videos by a specific creator. List comments made on a particular video, along with the users who made them.Count how many comments a user has made. Rank creators or videos based on subscribers, views, or comments.

## Representation
Entities are created with the following schema

### Entities

Entities, Attributes, and Design Choices

Entities represented in the database:
1. Users – all individuals in the system (viewers and creators).
2. Creators – a subset of users who upload videos.
3. Videos – content uploaded by creators.
4. Comments – user interactions on videos.

Attributes of each entity:
1. Users: id (primary key), name, country.
2. Creators: user_id (primary key, foreign key to Users), subscribers.
3. Videos: id (primary key), creator_id (foreign key to Creators), title, views, upload_date.
4. Comments: id (primary key), video_id (foreign key to Videos), user_id (foreign key to Users), likes.

Why these types?

1. INTEGER for IDs, subscribers, views, likes → ensures numeric operations and indexing are efficient.
2. TEXT for names, titles, and country → flexible for string values.
3. NUMERIC/TEXT (ISO date format) for upload_date → supports date comparisons.

Why these constraints?
1. PRIMARY KEY ensures each record is uniquely identifiable.
2. FOREIGN KEY constraints enforce relationships (e.g., every video must belong to a creator who exists in Users).
3. NOT NULL on essential attributes (like name, country, subscribers) guarantees required data is always present.

### Relationships

![chart](chart.png)


## Limitations
Limitations of the design:
The database only tracks basic entities (users, creators, videos, comments). It doesn’t capture more complex aspects of YouTube like playlists, categories, tags, or collaborations.
Subscriber count is stored as a single integer, so historical changes in subscribers over time cannot be tracked.
Views and likes are simple numbers, without detail on who viewed or liked something.
Comments are simplified to only store user, video, and likes — features like threaded replies or timestamps are not included.
Upload dates are stored, but no time zones or time-of-day details are considered.