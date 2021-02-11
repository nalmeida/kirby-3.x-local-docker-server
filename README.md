# Kirby 3.x Local Server

Docker + docker-compose to get your Kirby 3.x up and running using docker in your local machine.

## Requirements

1. [Docker](https://docs.docker.com/get-docker/)
2. [Docker Compose](https://docs.docker.com/compose/install/)

### Tested machine

* MacOS version `10.13.6`
* Docker version `20.10.2`
* docker-compose version `1.27.4`

## Getting started

### 1) Create a folder for your project

Create a folder for your local project. E.g.: `myproject`.

```
$ mkdir myproject
```

### 2) Clone this repo

Enter inside your project folder `myproject` and clone this repo.

```
$ cd myproject
$ git clone https:// .
```

### 3) Remove the `.git` folder

Remove the `.git` folder from this project.

```
$ rm -rf .git
```

### 4) Clone your Kirby project into `./public` folder

Clone **your** Kirby project or some of the starter projects inside the `./public` folder:

#### Sample with the Kirby plainkit

```
$ git clone https://github.com/getkirby/plainkit.git public
```

### 5) Build the Dockerfile image and run

Download, build the [Dockerfile](Dockerfile) image and start yout project.

```
$ docker-compose up --build
```

### 6) Test your site

Open your site in the browser and start working.

* Open http://localhost:8089
* Change your files inside the `./public` folder.

## Working with the docker docker-compose cli

#### ▶️ Running your project / container:

Inside your `myproject` folder:

```
$ docker-compose up
```

#### 👁 Checking if it is running ok:

```
$ docker ps
```

#### ⏹ Stopping your project / container:

Inside your `myproject` folder:

```
$ docker-compose down
```

Or `Ctrl+c` inside yout Terminal.