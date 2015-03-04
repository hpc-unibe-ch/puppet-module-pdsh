# pdsh

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What does the module do](#module-description)
3. [Setup - The basics of getting started with pdsh](#setup)
    * [What pdsh affects](#what-pdsh-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with pdsh](#beginning-with-pdsh)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)
7. [Copyright Notice](#copyright)

## Overview

This module manages the installation and configuration of pdsh - the Parallel Distributed Shell.

## Module Description

Manage all aspects of pdsh - currently only installing the package itself. More is on the todo list.

## Setup

### What pdsh affects

The module currently only installs the relevant package.

### Beginning with pdsh

To install pdsh simply include the class:

```puppet
    include pdsh
```

## Reference

### Class: `pdsh`

The module's primary class, `pdsh` is the primary entry point of the module.

**Parameters within `pdsh`:**

None

## Limitations

This module has been tested on the following operating systems:

* CentOS-6.6

## Development

Interested system administrator can help to improve this module by sending patches to grid-admin@id.unibe.ch and/or make pull requests.

## Copyright Notice

pdsh (c) by IT Services Department, University of Bern

pdsh is licensed under a
Creative Commons Attribution-ShareAlike 4.0 International License.

You should have received a copy of the license along with this
work. If not, see <http://creativecommons.org/licenses/by-sa/4.0/>.
