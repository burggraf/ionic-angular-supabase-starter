# ionic-angular-supabase-starter

A complete working example application using the Ionic Angular framework for the front end and Supbase (powered by PostgreSQL) on the backend.


[Live Demo](https://ionic-angular-supabase-starter.vercel.app/)

## Stack:
- [Ionic 5.6.10](https://ionicframework.com/)
- [Angular 12.0.1](https://angular.io/)
- [Supabase](https://supabase.io)

## Features:
- Authentication
    - [Register with email](https://supabase.io/docs/reference/javascript/auth-signup)
    - [Sign in with email](https://supabase.io/docs/reference/javascript/auth-signin#sign-in-with-email)
    - [Reset password](https://supabase.io/docs/reference/javascript/reset-password-email)
    - Sign in with [Magic Link](https://supabase.io/docs/reference/javascript/auth-signin#sign-in-with-magic-link)
    - Sign in with [Google](https://supabase.io/docs/reference/javascript/auth-signin#sign-in-using-third-party-providers) see: [setup video](https://youtu.be/dE2vtnv83Fc)
    - Sign in with [Facebook](https://supabase.io/docs/reference/javascript/auth-signin#sign-in-using-third-party-providers) see: [setup video](https://youtu.be/EbV746pWDas)
    - Sign in with [Github](https://supabase.io/docs/reference/javascript/auth-signin#sign-in-using-third-party-providers) see: [setup video](https://youtu.be/RlfCIvmimSA)
    - Sign in with [Twitter](https://supabase.io/docs/reference/javascript/auth-signin#sign-in-using-third-party-providers) see: [setup video](https://youtu.be/z1rWsRb4PDw)
    - Sign in with [Gitlab](https://supabase.io/docs/reference/javascript/auth-signin#sign-in-using-third-party-providers) see: [setup video](https://youtu.be/rlyESzCH4Y0)
    - Sign in with [Bitbucket](https://supabase.io/docs/reference/javascript/auth-signin#sign-in-using-third-party-providers) see: [setup video](https://youtu.be/hBYcIKsXdrM)
    - Sign in with [Apple](https://supabase.io/docs/reference/javascript/auth-signin#sign-in-using-third-party-providers) see: [setup video](https://youtu.be/6I2JEky20ME)
    - Sign in with [Azure](https://supabase.io/docs/reference/javascript/auth-signin#sign-in-using-third-party-providers)
- Database
    - Get / Display List of Records
    - Get / Display Detail Record
    - Get / Display Child List
    - Get / Display Child Record

## Getting Started

- Clone or copy this repository
- Create a **Supabase Project** at [https://supabase.io](https://supabase.io)
    - Get your `SUPABASE_URL` and `SUPABASE_KEY` values
        - Open your project
        - Click on the `settings` icon at the bottom left
        - Click on `API` under `Project`
        - Under `Config` / `URL` copy your `SUPABASE_URL` which looks like this:  https://<YOUR_UNIQUE_KEY>.supabase.co
        - Under `API Keys` / `anon` `public` copy your anonymous public `SUPABASE_KEY`
- Set up your Supabase keys
    - Rename `src/enviroments/supabase_sample.ts` to `src/environments/supabase.ts`
    - Edit `src/environments/supabase.ts` with your `SUPABASE_URL` and `SUPABASE_KEY` values
- Create the sample data
    - Open your **Supabase Project**
    - Click the `SQL` icon at the left
    - Click `+ New Query` at the top
    - Paste the contents of each `.sql` script in the `data-setup` folder into the query window and click `RUN` to execute each script
- Set up Authentication
    - see `Authentication` under `Features` above for information on configuring various third party providers
- Run `npm install` from the root of your (Ionic) project
    - Start the Development Server:  `ionic serve`
    - Build for Production: `ionic build --prod`
