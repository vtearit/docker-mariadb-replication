# docker-mariadb-replication

## Run

To run this examples you will need to start containers with "docker-compose" 
and after starting setup replication. See commands inside ./build.sh. 

#### Create 2 mariadb containers

```bash
make up
```

#### Access master mariadb and run

> 'magento' is root password

```bash
GRANT REPLICATION SLAVE ON *.* TO 'vuduc'@'%' IDENTIFIED BY 'magento';
```

#### Access slave mariadb and run

> 'db' master host
> 'magento' is root password

```bash
CHANGE MASTER TO MASTER_HOST='db', MASTER_USER='vuduc',MASTER_PASSWORD='magento';
START SLAVE;
```