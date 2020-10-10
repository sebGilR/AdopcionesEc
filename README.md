# AdopcionesEC

- The goal of this application is to host all information available about homeless pets, so that both non-profit rescue organizations and regular citizens can help in rescuing or making their life a little better.

## Architechture thoughts

This are the initial design specifications just to get the MVP out as soon as my time allows, as the project has been stuck for a while already.

- Postgresql will be used for the database as it is the one use when the App is deployed with Heroku.
- Server-side rendering will be used only for the homepage and for devise handled views.
- React will be used for the front-end and React Router will be used to handle any routing not managed by Devise defaults.
- Front-end testing will be conducted upon MVP completion.
- ContextAPI will handle the state of the application when React is in control.
- UI/UX design will be taken from an existing template and adapted to the app's purpose, at least during the MVP phase.

Future iterations of the app will include better code design and structure, as much testing as possible and needed, and features like the following could be added:

- A map with pins to show estimated pet locations.
- Suggestion of existing pets when people try to add a pet to the platform, to make sure it has not been added already in the same area.
- Integrate reporting for non-profit organizations to be able to take actions based on the data supplied by citizens.

## Progress Log

- React is setup and root App component is used any time the users access a non-existent route, and also gets redirected back to this component after log-in, log-out and sign-up.
- Pet controller is set up for API consumption.
- User model created through Devise and added a name column to the DB.
- Testing setup is done, and the Pet model is already being tested. Additional testing will be added upon MVP completion, to be able to experiment with more time available.
- Concerns will be used for handling custom methods required for controllers and models if they arise, for now everything will be kept within the same files for simplicity.
