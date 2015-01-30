---
layout: page
title: Course Project
description: Description of Course Project
categories: ['presentations']
showinnav: true
---
<div class="content">
  <h2>Objective</h2>

  <p>
  The goal of the project is to gain hands-on experience in building and
  deploying a scalable web service on the Internet.  Using the latest web
  technologies while learning how to tackle the scalability and
  fault-tolerance concerns. This is a "learn by doing" course: the course
  project will form the primary focus of the course with the lectures and
  discussion of research papers providing background material. Each project
  will be conducted in an agile team where students will build their own
  scalable, redundant web site using fundamental web technologies and the
  Ruby on Rails framework.  
  </p>


  <h2>Getting Started</h2>

  <ul>
    <li>Follow Chapter 1 of the book (Agile Web Development with Rails 4)
    for installation instructions of Rails for Windows, Mac, or Linux</li>
    <li>Read the list of <a href="#project_ideas">project suggestions</a></li>
    <li>Add your own project suggestions</li>
  </ul>
  
  <h2>This Year's Projects</h2>
  <ul>
    <li><a href="https://github.com/scalableinternetservices/Gradr">A scalable automatic grading system</a>.</li>
    <li><a href="https://github.com/scalableinternetservices/Compete">A competition tracking application</a>.</li>
    <li><a href="https://github.com/scalableinternetservices/LaPlaya">Share programming projects like MIT's Scratch</a>.</li>
    <li><a href="https://github.com/scalableinternetservices/BaconWindshield">Find and compare nearby surf spots</a>.</li>
    <li><a href="https://github.com/scalableinternetservices/Upvid">Upload and share viral videos</a>.</li>
    <li><a href="https://github.com/scalableinternetservices/Picshare">Send photos to strangers, and upvote/downvote them</a>.</li>
    <li><a href="https://github.com/scalableinternetservices/Motley-Crew">Questmaster: gamification of everyday tasks</a>.</li>
    <li><a href="https://github.com/scalableinternetservices/Xup">Find parties near you and share yours</a>.</li>
    <li><a href="https://github.com/scalableinternetservices/Team-Hytta">An electronic cabin guest book</a>.</li>
    <li><a href="https://github.com/scalableinternetservices/Suppr">Suppr: share meals with friends</a>.</li>
    
  </ul>

  <a id="project_ideas"></a>
  <h2> Project Ideas </h2>
  <ul>
    <li> YCombinator inspired: YC <a href="http://www.ycombinator.com/rfs/">Request for Startups</a> Implement some portion of one of the YCombinator "Startup ideas we would like to fund" </li>
    <li> 
    Government data project. A system that uses the large amounts of
    data at <a href="http://data.gov">data.gov</a> or the <a href="http://aws.amazon.com/publicdatasets/">amazon public data sets</a>, see the <a href="http://sunlightfoundation.com/projects/">sunlight
      foundation</a> projects for some ideas.
    </li>
    <li>
      Leverage the data from the <a href="http://developer.nytimes.com/docs"> New York Times Developer
      APIs </a> in order to build something interesting.  They have APIs
      convering geography, movie reviews and more.
    </li>
    <li>
      Embrace the sharing economy!  Build a time-sharing app for pets.
      Own 30% of a dog.
    </li>
    <li>
    Stock trade advisor. A system that gathers information about stocks,
    stock trades, and companies from both traditional and non-traditional
    sources (blogs, email lists, twitter feeds, facebook) and computes
    interesting data. Potential interesting data would be correlations
    between stock price and both non-traditional data, trending information
    based on non-traditional sources. Could also include social aspects for
    submitting sources, voting for impact of source, etc.

    </li>
  </ul>

  <h2> Project Sprint Schedule </h2>

  <ul>
    <li>
    <b>Sprint -1. Starts Oct 8, 2014.</b>
    <ul>
      <li>Install Rails</li>
      <li>Learn Ruby</li>
      <li>Do <a href="http://www.codecademy.com/en/tracks/ruby">Ruby Code Academy</a></li>
      <li>Learn Rails</li>
      <li>Read Chapters one through eight in Agile Web Development with Rails</li>
    </ul>
    </li>

    <li>
    <b>Sprint 0. Starts Oct 15, 2014.</b>
    <ul>
      <li>Read chapters nine through seventeen in Agile Web Development with Rails</li>
      <li>Learn TDD</li>
      <li>Learn Pairing</li>
    </ul>
    </li>

    <li>
    <b>Sprint 1: Starts Oct 22, 2014.</b>
    <ul>
      <li>Form Groups</li>
      <li>Decide on Projects</li>
      <li>Basic user stories and page flow diagram</li>
      <li>Basic project planning</li>
      <li>Enter stories in pivotal tracker</li>
    </ul>
    </li>


    <li>
    <b>Sprint 2: Starts Oct 29, 2014.</b>
    <ul>
      <li>Implement initial set of functionality</li>
      <li>Implement user accounts and authentication</li>
      <li>Use small dataset for development</li>
      <li>Use MySQL database</li>
      <li>Demo your web site on an instance of Amazon's Elastic Compute Cloud</li>
      <li>Learn EC2 and Amazon Web Console</li>
    </ul>
    </li>

    <li>
    <b>Sprint 3: Starts Nov 5, 2014.</b>
    <ul>
      <li>Implement next set of functionality</li>
      <li>Have capistrano deployment scripts to automate loading the production database and deploying production code</li>
    </ul>
    </li>


    <li>
    <b>Sprint 4: Starts Nov 12, 2014.</b>
    <ul>
      <li>Finish implementing general functionality</li>
      <li>Describe the "critical path" for scalability, which is the sequence of pages that you expect most users to go through. This is the set of pages that you will optimize, scale and benchmark</li>
      <li>Create medium-large dataset (about 10,000 records)</li>
    </ul>
    </li>


    <li>
    <b>Sprint 5: Starts Nov 19, 2014.</b>
    <ul>
      <li>Fully implement the features that are exercised by the "critical path"</li>
      <li>It is important that the pages have all the elements/data required, which ensures that all the database accesses that need to occur actually do occur</li>
      <li>For each of the critical sequences, list the database operations that are issued in the production environment</li>
    </ul>
    </li>


    <li>
    <b>Sprint 6: Starts Nov 26, 2014.</b>
    <ul>
      <li>Create large dataset (greater than 100,000 records)</li>
      <li>Launch a load-generator instance on EC2 and use httperf on it to load-up your web site. Plot response time (sec/req) and throughput (req/sec) as you increase the load</li>
      <li>Push the envelope using a single server without compromising scalability</li>
      <li>Run multiple instances and test the scalability of your system</li>
      <li>Begin scaling experiments and optimizations. Document what you learn</li>
      <li>Continue to optimize and document results</li>
      <li>Implement caching and architectural changes to eliminate bottlenecks (database, application, http), eventual consistency, etc</li>
    </ul>
    </li>


    <li>
    <b>Sprint 7: Starts Dec 3, 2014.</b>
    <ul>
      <li>Final performance experiments</li>
      <li>Document measurements</li>
      <li>Test for Availability</li>
      <li>Writeup results on team page</li>
      <li>Prepare final presentation</li>
    </ul>
    </li>


    <li>
    <b>Final Presentation date TBD</b>
    <ul>
      <li>Final Presentations</li>
    </ul>
    </li>


  </ul>
</div>
