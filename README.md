# beezly-fastly

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with fastly](#setup)
    * [Beginning with fastly](#beginning-with-fastly)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)

## Description

This module makes the public-ip-list Fastly API available through a hiera data source.

## Setup

### Beginning with fastly

You can use fastly from other modules, either by using a lookup function, or by including
the fastly class in your module.

## Usage

1. Use a lookup function.
```puppet
lookup('fastly::addresses')
```

1. Include the class and refer to a variable.
```puppet
include fastly
fastly_public_ips = $fastly::addresses
```

1. Call the `fastly::public_ip_list` function
```puppet
fastly_public_ips = fastly::public_ip_list()
```

The "examples" directory has examples of both methods of using the data source.

## Reference

The module has one optional class, called "fastly", which you may choose to include in your code.

The module defines a hiera data source which provides a single hiera entry called "fastly::addressess".
