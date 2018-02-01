# beezly-fastly

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with fastly](#setup)
    * [Beginning with fastly](#beginning-with-fastly)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)

## Description

This module makes the public-ip-list Fastly API available through a hiera data source.

## Setup

### Beginning with fastly

You can use fastly from other modules, either by using a lookup function, or by including
the fastly class in your module.

## Usage

1. Use a lookup function. (works in Puppet 4.9 onwards)
```puppet
lookup('fastly::addresses')
```

2. Include the class and refer to a variable. (works in Puppet 4.9 onwards)
```puppet
include fastly
$fastly_public_ips = $fastly::addresses
```

3. Call the `fastly::public_ip_list` function (works in Puppet 4.7 onwards)
```puppet
$fastly_public_ips = fastly::public_ip_list()
```

The "examples" directory has examples of both methods of using the data source.

## Reference

The module has one optional class, called "fastly", which you may choose to include in your code.

The module defines a hiera data source which provides a single hiera entry called "fastly::addressess".
