#!/bin/bash

MESSAGE="original message"

update_message() {
	MESSAGE="updated message"
}


echo "Message before function call: $MESSAGE"
update_message
echo "Message after function call: $MESSAGE"
