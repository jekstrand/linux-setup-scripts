#! /bin/bash
# Fedora setup script for Fedora >= 19
#
# This set of scripts sets up a new fedora install to my personal tastes
# including default software installs, shell configuration, etc.
#
# This particular script sets up the machine for Ruby and nanoc-based
# website development.
#
# To be run as the regular user.

DNF=${DNF-dnf}

# This is needed for compiling ruby gems
sudo $DNF -y group install "Development Tools"
sudo $DNF -y install redhat-rpm-config

# Install ruby and other tools
sudo $DNF -y install rubygems ruby-devel pandoc python-pygments

# Install the required gems
gem install nanoc adsf
gem install pandoc-ruby
gem install nokogiri pygments.rb

