# Happy Lager - Craft demo site

This repo contains all of the templates, front-end resources, and a MySQL DB dump for Happy Lager, a Craft demo site.

You can find out more about Craft on [craftcms.com](https://craftcms.com/).

## Features

Happy Lager takes advantage of several Craft features:

#### Sections

The content in Happy Lager is managed from the following sections:

* Four “Single” sections:
  - Homepage
  - About
  - Services Index
  - Work Index
* Two “Channel” sections:
  - News
  - Work
* Two “Structure” sections:
  - Locations
  - Services

:information_source: Watch the [Section Types video](http://craftcms.com/features/section-types) for an overview of the difference between Singles, Channels, and Structures in Craft.

#### Entry Types

The News section has two Entry Types:

* **Article** – used to store news articles
* **Link** – used to store links to articles on other websites

:information_source: Watch the [Entry Types video](http://craftcms.com/features/entry-types) for an overview of Entry Types in Craft.

#### Matrix Fields

This site has the following Matrix fields:

* **Article Body** – used to store the varying content of the About page and News, Services, and Work entries.
* **Contact Methods** – used to store Locations’ various contact methods.
* **Services Body** – used to store information about the Services.
* **Testimonials** – used to store the Homepage testimonials.

:information_source: Watch the [Matrix video](http://craftcms.com/features/matrix) for an overview of Matrix in Craft.

#### Relations

This site has the following relational fields:

* **Services Performed** _(Entries)_ – used to relate Work entries to the relevant Services entries.
* **Client Logos** _(Assets)_ – used to related the Homepage to the logos that should be displayed in the “Our Best Drinking Buddies” section.
* **Featured Image** _(Assets)_ – used to relate a featured image to News, Work, Services, and Locations entries.
* **Featured Thumb** _(Assets)_ – used to relate a featured thumbnail to Work entries.
* **Hero Image** _(Assets)_ – used to relate a hero image to the Homepage.
* **Service Icon** _(Assets)_ – used to relate an icon to Services entries.
* There are additional Assets fields within the “Article Body” and “Service Body” Matrix fields.

:information_source: Watch the [Relations video](http://craftcms.com/features/relations) for an overview of Relations in Craft.

#### Assets

This site has the following Asset Sources;

* **Site Assets** – used to store all miscellaneous site imagery.
* **Company Logos** – used to store the company logos that are displayed on the Homepage.
* **Service Icons** – used to store Services’ icons.


## Installation

You can check out Happy Lager online from [demo.craftcms.com](http://demo.craftcms.com/).

If you want to install the site locally, follow these instructions:

1. Download/clone the repo on your computer

		> git clone https://github.com/pixelandtonic/happylager.git

2. Set the permissions on happylager/craft/storage/ to 777

		> cd happylager
		> chmod 777 craft/storage

3. Set the permissions on happylager/craft/config/ to 744, 774, or 777 depending on the relationship between the user that Apache/PHP is running as and the user who owns the happylager/craft/config folder. (See the [Craft installation docs](https://craftcms.com/docs/installing#step-2-set-the-permissions) for details.)

		> chmod 774 craft/config

4. Download the latest version of Craft from [craftcms.com](https://craftcms.com), and copy its craft/app/ folder into happylager/craft/.

5. Create a new MySQL database called `happylager`, and import happylager.sql into it.

6. Fill in the proper MySQL credentials in happylager/craft/config/db.php.

7. Create a new virtual host with the hostname `happylager.dev` that points to the happylager/public/ folder.

8. Edit your hosts file to resolve happylager.dev to `127.0.0.1`, if necessary.

Now you should be able to point your web browser to http://happylager.dev/admin. You should either see a Craft login screen, or a prompt telling you that some database updates need to be run. If it’s the latter, just click “Finish up”.

Now point your browser at http://happylager.dev. You should see the Happy Lager homepage.


## Logging in

The Craft Control Panel is located at http://happylager.dev/admin. You can log in with the following credentials:

* Username: `admin`
* Password: `password`

