# Rails Blog Application

## Overview

This Rails application allows users to create and manage posts, comments, and tags. It includes user authentication, profile editing, and dynamic tag suggestions powered by `selectize.js`.

## Features

- **User Module**: 
  - Sign up / Sign in with email (using Devise).
  - Edit profile with avatar upload, city, state, country, phone, and gender.

- **Post Module**: 
  - Create multiple posts with title, description, images, and tags.
  - Server-side rendering of posts with pagination and search functionality.

- **Comments Module**: 
  - Users can comment on posts, including the post owner.

- **Tag Module**: 
  - Tags are dynamically suggested as users type in the input field.
  - Users can create new tags.

## Technologies Used

- Ruby on Rails
- PostgreSQL
- Devise (for authentication)
- Active Storage (for image uploads)
- Selectize.js (for tag suggestions)
- jQuery

## Installation

### Prerequisites

- Ruby 2.7 or higher
- Rails 7 or higher
- SQLelite

### Steps to Set Up

1. **Clone the Repository**
   ```bash
   git clone https://github.com/anandrajput533/Rails_TEST_APP.git
   cd Rails_TEST_APP
   ```

2. **Install Dependencies**
   ```bash
   bundle install
   ```

3. **Set Up the Database**
   ```bash
   rails db:create
   rails db:migrate
   ```

4. **Seed the Database**
   The seed file includes initial data for users, posts, comments, and tags. To populate your database, run:
   ```bash
   rails db:seed
   ```

   ### Sample Seed Data
   The seed file (`db/seeds.rb`) contains example data, including:
   - 2 sample users
   - 30 sample posts
   - Sample comments for each post

5. **Start the Rails Server**
   ```bash
   rails server
   ```

6. **Access the Application**
   Open your browser and navigate to `http://localhost:3000`.

## Usage

- **Sign Up**: Create a new account by clicking the "Sign Up" link.
- **Sign In**: Use your email and password to log in.
- **Create Posts**: After logging in, you can create new posts and add tags.
- **Add Comments**: Comments can be added to posts by any user.
- **Edit Profile**: Users can update their profile information and upload an avatar.

## Dynamic Tag Suggestions

- As you type in the tags input field, suggestions will be fetched from the API and displayed.
- You can select from existing tags or create new ones by simply typing them in.


## Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any improvements or bug fixes.

## Acknowledgements

- [Ruby on Rails](https://rubyonrails.org/)
- [Devise](https://github.com/heartcombo/devise)
- [Selectize.js](https://selectize.github.io/selectize.js/)