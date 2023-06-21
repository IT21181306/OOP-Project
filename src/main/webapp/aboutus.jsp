<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
      font-family: Arial, Helvetica, sans-serif;
      margin: 0;
    }
    
    html {
      box-sizing: border-box;
    }
    
    *, *:before, *:after {
      box-sizing: inherit;
    }
    
    .column {
      float: left;
      width: 33.3%;
      margin-bottom: 16px;
      padding: 0 8px;
    }
    
    .card {
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
      margin: 8px;
    }
    
    .about-section {
      padding: 50px;
      text-align: center;
      background-color: #474e5d;
      color: white;
    }
    
    .container {
      padding: 0 16px;
    }
    
    .container::after, .row::after {
      content: "";
      clear: both;
      display: table;
    }
    
    .title {
      color: grey;
    }
    
    .button {
      border: none;
      outline: 0;
      display: inline-block;
      padding: 8px;
      color: white;
      background-color: #000;
      text-align: center;
      cursor: pointer;
      width: 100%;
    }
    
    .button:hover {
      background-color: #555;
    }
    
    @media screen and (max-width: 650px) {
      .column {
        width: 100%;
        display: block;
      }
    }
</style>
</head>
<body>
<div class="about-section">
  <h1>About Us </h1>
  <p>Some text about who we are and what we do.</p>
  <p>Launched in 2020. EventPOP in south asia's premier online Event Create place with and active presence in
    Pakistan. Bangladesh. India.
    supported by a wide range of tailored marketing. data. and service solution. spark has 30.o00 sellers and
    500 brands and serves million consumers across the region.
    EventPOP has more than 2.5 million events to offer. growing at a very fast pace. EventPOP offers a divers assortment
    in categories
    ranging from consumer electronics to household goods. beauty. fashion. sport equipment. and groceries.
    Darz is focused on providing an excellent customer experience. ease-of-purchase., comprehensive customer
    care anda hassle-free shopping and retun experience.
    SparklIk was acquired by Spark group in May 2015
    Our primary objective is to provide customers who are with us and those who join us with a secure
    transaction to commemorate their favorite products and special discounts and reminders on various
    occasions.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="pic1.jpg" alt="Ayesha" style="width:100%">
      <div class="container">
        <h2>Ayesha Patabadige</h2>
        <p class="title">CEO & Founder</p>
        <p>Give good service to customer.</p>
        <p>ayesha@eventpop.com</p>
        <p><button class="button"><a href="mailto:ayesha@spark.com">Contact</a></button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="pic2.jpg" alt="Selva" style="width:100%">
      <div class="container">
        <h2>Selva Jayasooriya</h2>
        <p class="title">Selles Manajor</p>
        <p>Allways we give good service to our customer.</p>
        <p>selva@eventpop.com</p>
        <p><button class="button"><a href="mailto:selva@spark.com">Contact</a></button></p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="pic3.jpg" alt="Mayantha" style="width:100%">
      <div class="container">
        <h2>Mayantha Abeyrathne</h2>
        <p class="title">Event Manajor</p>
        <p>we give functions to customer with special offers under events .</p>
        <p>mayantha@eventpop.com</p>
        <p><button class="button"><a href="mailto:mayantha@spark.com">Contact</a></button></p>
      </div>
    </div>
  </div>
</div>

</body>
</html>