# Week 11 Assignment - MERN App Deployment

## Goal

The goal of this assignment is to deploy a MERN stack blog application using:

* Terraform to provision infrastructure
* Ansible to configure the backend server
* AWS S3 to host the frontend
* MongoDB Atlas for the database

## Steps

1. Used Terraform to:

   * Create EC2 instance for backend
   * Create S3 bucket for frontend
   * Create IAM credentials

2. Used Ansible to:

   * Install Node.js and npm on EC2
   * Install pm2
   * Clone backend repo and install dependencies
   * Start backend with pm2

3. MongoDB Atlas:

   * Created free cluster
   * Whitelisted EC2 IP
   * Created database and user
   * Connected to backend via .env

4. Frontend:

   * Built frontend with `npm run build`
   * Synced `dist/` folder to S3
   * Enabled static website hosting

5. Media Uploads:

   * Used S3 bucket for storing images
   * Integrated image upload in blog posts

## Tools Used

* Terraform
* Ansible
* AWS EC2, S3, IAM
* MongoDB Atlas
* Node.js, React

## Cleanup

* Ran `terraform destroy` to remove resources
* Removed IAM credentials

## Screenshots

* PM2 showing backend running.png
* MongoDB cluster.png
* Media upload success.png
* S3 frontend in browser.png
* diagram architecture.png
