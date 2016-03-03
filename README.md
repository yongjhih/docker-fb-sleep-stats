# fb-sleep-stats: Using Facebook to track your friends' sleep

[![Docker Pulls](https://img.shields.io/docker/pulls/yongjhih/fb-sleep-stats.svg)](https://hub.docker.com/r/yongjhih/fb-sleep-stats/)
[![Docker Stars](https://img.shields.io/docker/stars/yongjhih/fb-sleep-stats.svg)](https://hub.docker.com/r/yongjhih/fb-sleep-stats/)
[![Docker Size](https://img.shields.io/imagelayers/image-size/yongjhih/fb-sleep-stats/latest.svg)](https://imagelayers.io/?images=yongjhih/fb-sleep-stats:latest)
[![Docker Layers](https://img.shields.io/imagelayers/layers/yongjhih/fb-sleep-stats/latest.svg)](https://imagelayers.io/?images=yongjhih/fb-sleep-stats:latest)
[![Docker Tag](https://img.shields.io/github/tag/yongjhih/docker-fb-sleep-stats.svg)](https://hub.docker.com/r/yongjhih/fb-sleep-stats/tags/)
[![License](https://img.shields.io/github/license/yongjhih/docker-fb-sleep-stats.svg)](https://github.com/yongjhih/docker-fb-sleep-stats/raw/master/LICENSE)
[![Travis CI](https://img.shields.io/travis/yongjhih/docker-fb-sleep-stats.svg)](https://travis-ci.org/yongjhih/docker-fb-sleep-stats)
[![Gitter Chat](https://img.shields.io/gitter/room/yongjhih/docker-fb-sleep-stats.svg)](https://gitter.im/yongjhih/docker-fb-sleep-stats)

[![Deploy to Docker Cloud](https://github.com/yongjhih/docker-parse-server/raw/master/art/deploy-to-docker-cloud.png)](https://cloud.docker.com/stack/deploy/?repo=https://github.com/yongjhih/docker-fb-sleep-stats)
[![Deploy to Tutum](https://s.tutum.co/deploy-to-tutum.svg)](https://dashboard.tutum.co/stack/deploy/?repo=https://github.com/yongjhih/docker-fb-sleep-stats)

A small tool to show the potential privacy implications modern social media have. By tracking online/offline status of people on Facebook, it is possible to get an accurate image of their sleep pattern.

Read the blog post: https://medium.com/@sqrendk/how-you-can-use-facebook-to-track-your-friends-sleeping-habits-505ace7fffb6

![Facebook Sleep Screenshot](https://cloud.githubusercontent.com/assets/209966/13382859/b7b31aa4-de7e-11e5-8fca-35d68fe2f02f.png)


## Installation

**Prerequisites**
 - Git ([how to install](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git))
 - Node.js ([how to install](https://docs.npmjs.com/getting-started/installing-node))

**Clone repository**
```
git clone https://github.com/sqren/fb-sleep-stats.git
```

**Configuration**

Open the source code folder:
```
cd fb-sleep-stats
```

Copy the default config file:
```
cp config/default.json config/development.json
```

Update the following values in `config/development.json`
 - "c_user": [your numeric Facebook user id](http://findmyfbid.com/)
 -  "xs": [xs value from Facebook cookie](https://gist.github.com/sqren/0e4563f258c9e85e4ae1)
 - "appId": [Facebook App Id](https://gist.github.com/sqren/1ac0f5d316fcbd46d8c1)

*Make sure there are no trailing tabs or spaces in the config file!*

**Install dependencies**
```
npm install
```

**Build browser dependencies**
```
npm run webpack
```

## Starting

You need to have two processes running simultaniously: the scraper and the webserver. Therefore, you must run the following two commands in separate windows/tabs.

**Start scraping**

*This will run continously, polling Facebook every 10 minutes. Keep it running for as long as you want to track sleep.*
```
npm run scrape
```

**Start server**
```
npm start
```

See the result in the browser: [http://localhost:3000](http://localhost:3000)

#Troubleshooting

**I get an error when running "npm run webpack"**

Try re-installing the node-modules:
```
rm -rf node_modules
npm install
npm run webpack
```

**No users show up**
 - If you have an ad-blocker, you must disable it for the site.
 - You need to run `npm run scrape` and keep it running. When you stop it, it will stop tracking.

**Changes to development.json are not picked up**
 - You have to run `npm run webpack`

**How do I update to the latest version?**

After pulling the latest version, you must rebuild the dependencies:
```
git pull
rm -rf node_modules
npm install
npm run webpack
```

**Other issues**

If you encounter a bug or have a problem, please go to [Issues](https://github.com/sqren/fb-sleep-stats/issues?utf8=%E2%9C%93&q=is%3Aissue+) and use the search functionality, in case someone else already asked the question. If you can't find anything helpful you are very welcome to create a [new issue](https://github.com/sqren/fb-sleep-stats/issues/new)


# Disclaimer
Facebook reached out to me and informed me, that it is against their terms to access their website by automated means. Additionally I am not allowed to urge anyone to do so. Therefore: I urge you to use this project for educational purpose only, and not use it to access Facebook.
