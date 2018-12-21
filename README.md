# QuickAuth quick deploy

Deploy the [QuickAuth](https://github.com/newnius/QuickAuth) user management system quickly.

## Requirements

  - `docker` install (version >= 17.03)
  - Permission to run docker commands
  - A docker swarm created and this is the **only** node, or the storage may encounter failure
  - One overlay network named `swarm-net`
  - The directory `/data` exists and able to read/write

If you haven't meet the requirements, refer to this script `install_requirements.sh` to setup that.

## Steps to deploy

#### Clone this repo

```bash
git clone https://github.com/QuickDeploy/QuickAuth.git
```

#### Start the services

```bash
bash QuickAuth/install.sh
```

#### Setup the database

visit `http://127.0.0.1/install.php` to init the system, and you will see four `Success`

#### Setup th SendGrid api keys

Visit [SendGrid](https://app.sendgrid.com/) to signup for an account and apply for your own API keys.

#### Run on your own servers

Modify the config files `/data/qa/web/config/config.js` and `/data/qa/web/config/config.inc.php` 

Properties to be updated are `BASE_URL`, `SENDGRID_API_KEY`, `EMAIL_FROM`

That's all!

## Advanced users

Feel free to post issues.