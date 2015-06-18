#pdsh

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What does the module do](#module-description)
3. [Setup - The basics of getting started with pdsh](#setup)
    * [What pdsh affects](#what-pdsh-affects)
    * [Beginning with pdsh](#beginning-with-pdsh)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
6. [Limitations - OS compatibility, etc.](#limitations)

##Overview

This module manages the installation and configuration of pdsh - the Parallel Distributed Shell.

##Module Description

Manage all aspects of pdsh - currently only installing the package itself. More is on the todo list.

##Setup

###What pdsh affects

The module currently only installs the relevant package.

###Beginning with pdsh

To install pdsh simply include the class:

```puppet
    include pdsh
```

##Usage

### Class: `pdsh`

The module's class is the primary entry point of the module.

**Parameters within `pdsh`:**

None

##Reference

###Classes

####Public Classes

* [`pdsh`](#class-pdsh): Primary class that installs pdsh

####Private Classes

none

###Defined Types

####Public Defined Types

none

####Private Defined Types

none

## Limitations

This module has been tested on the following operating systems:

* CentOS-6.6

