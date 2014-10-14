#!/bin/bash
ln -s mysql-tmpfs/mysql@.service ~/.config/systemd/user/mysql@.service
ln -s redis-persistless/redis@.service ~/.config/systemd/user/redis@.service
