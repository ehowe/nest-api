# Nest API Client

Nest API client using Cistern. Currently this client can only read thermostat params

## Usage

### Installation
`gem install nest-api`

`require 'nest'`

###
1. Initialize the client

`client = Nest.new(access_token: API_KEY)`

2. Get a device

`thermostat = client.thermostats.first`
