# Project description

Content driven website in Hugo for personal study of the bible.

## Npm scripts

Run Hugo dev server on port 1313 and Tailwind CLI for live CSS reloading

```
npm run dev
```

Build project for manual deployment

```
npm run build
```

## Ruby script

Grab HTML for eeuwig gelukkig les 35 from JW.org and create content in markdown

```
ruby ruby-scripts/grap-eeuwig.rb https://www.jw.org/nl/bibliotheek/boeken/voor-eeuwig-gelukkig/deel-3/les-35/
```

## Docker commands

**With Docker and Docker-compose installed you can run these commands**

Start container with Hugo dev server on port 1313 and Tailwind CLI for live reloading

```
docker-compose up
```

Run commands manually inside throwaway container

```
docker-compose run --rm -p 1313:1313 hugo bash
```

Start throwaway container and grab HTML for eeuwig gelukkig les 56 from JW.org and create content in markdown

```
docker-compose run --rm ruby ruby grap-eeuwig.rb https://www.jw.org/nl/bibliotheek/boeken/voor-eeuwig-gelukkig/deel-4/les-56/
```

## Deployment instructions for Vercel

**General Settings**

Framework preset: Hugo

Node.js Version: 18.x

**Environment Variables**

Important step, otherwise build process might fail!

HUGO_VERSION: 0.111.3

