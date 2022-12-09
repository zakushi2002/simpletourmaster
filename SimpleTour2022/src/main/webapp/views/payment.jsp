<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment</title>
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./basic/assets/css/reset.css">
    <link rel="stylesheet" href="./basic/assets/css/paymentv1.css">
    <link rel="stylesheet" href="./basic/assets/css/logoutButton.css">
    <link rel="stylesheet" href="./basic/assets/css/cartv1.css">
    <link rel="stylesheet" href="./basic/font2022.css">
    <link rel="stylesheet" href="https://cdn.leanhduc.pro.vn/utilities/animation/shake-effect/style.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link rel="apple-touch-icon" sizes="57x57" href="./basic/assets/img/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="./basic/assets/img/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="./basic/assets/img/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="./basic/assets/img/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="./basic/assets/img/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="./basic/assets/img/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="./basic/assets/img/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="./basic/assets/img/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="./basic/assets/img/favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="./basic/assets/img/favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./basic/assets/img/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="./basic/assets/img/favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./basic/assets/img/favicon/favicon-16x16.png">
    <!-- <link rel="manifest" href="/manifest.json"> -->
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
</head>
<body>
<div id="main">
    <!-- HEADER -->
    <%@ include file="/common/web/header.jsp" %>
    <!-- END HEADER -->
      
    <!-- CONTENT -->
    <div class="content">
        <div class="form">
            <h1 class="title-page">Payment</h1>
            <form action="" class="payment-form">
                <!-- button add -->
                <!-- <div class="person-quantity">
                    <label for="person-quantity-input" class="person-quantity-label">Numbers of Person</label>
                    <div class="person-quantity-subtract">
                        <i class="fa fa-chevron-left"></i>
                    </div>
                    <div>
                        <input type="text" id="person-quantity-input" placeholder="0" value="0" />
                    </div>
                    <div class="person-quantity-add">
                        <i class="fa fa-chevron-right"></i>
                    </div>
                    </div> -->
                
                <div class="input-form">
                    <span>Total Price</span>
                    <input type="text" name="total-price" value="${cart.getIntForTotal(cart.getTotal())}" >
                    
                </div>
                <!-- end button add -->
            </form>
        </div>  
        </div>
        <div class="payment-method">
            <h1 class="payment-title">Payment methods</h1>
            <div class="wrap-method">
                <div class="method">
                    <!-- <div class="method-detail">
                        <input name="method-payment"  type="radio">                    
                        <p class="method-brand">Momo</p>
                        <img src="./assets/img/logo/logomomo.jpg" alt="">                        
                    </div>
                    <div class="method-detail">
                        <input name="method-payment"  type="radio">                     
                        <p class="method-brand">Vietcombank</p>
                        <img src="./assets/img/logo/logovietcombank.png" alt="">
                    </div>
                    <div class="method-detail">
                        <input name="method-payment"  type="radio">                       
                        <p class="method-brand">Company</p>
                        <img src="./assets/img/logo/homeicon.png" alt="">         
                    </div> -->
                    <!--paypal-->
                    <div class="wrap-paypal">
                        <script src="https://www.paypal.com/sdk/js?client-id=test&currency=USD"></script>
                        <!-- Set up a container element for the button -->
                        <div id="paypal-button-container"></div>
                    </div>
                </div>
            </div>
        </div>
        
        

        <%@ include file="/common/web/footer.jsp" %>
    </div>
    <!-- END CONTENT -->

    <!--scrip paypal-->
    <script>
        price_total = document.querySelector('input[type=text]').value;
        paypal.Buttons({
          // Sets up the transaction when a payment button is clicked
          createOrder: (data, actions) => {
            return actions.order.create({
              purchase_units: [{
                amount: {
                  value: ''+price_total+'' // Can also reference a variable or function
                }
              }]
            });
          },
          // Finalize the transaction after payer approval
          onApprove: (data, actions) => {
            return actions.order.capture().then(function(orderData) {
              // Successful capture! For dev/demo purposes:
              console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));
              const transaction = orderData.purchase_units[0].payments.captures[0];
              // alert('Transaction ${transaction.status}: ${transaction.id}\n\nSee console for all available details');
              // When ready to go live, remove the alert and show a success message within this page. For example:
              const element = document.getElementById('paypal-button-container');
              element.innerHTML = '<div class="wrap-button-done"><div class="button-done"><form action="orderuser"><input type="hidden" name="successful" value="1" /><a href="/orderuser"><button class="done">Done</button></a></form></div></div>';
              // Or go to another URL:  
           		actions.redirect('booking');
            });
          }
        }).render('#paypal-button-container');
    </script>  
    <script>
          createOrder: (data, actions) => {
              return actions.order.create({
                 "purchase_units": [{
                    "amount": {
                      "currency_code": "USD",
                      "value": "100",
                      "breakdown": {
                        "item_total": {  /* Required when including the items array */
                          "currency_code": "USD",
                          "value": "100"
                        }
                      }
                    },
                    "items": [
                      {
                        "name": "First Product Name", /* Shows within upper-right dropdown during payment approval */
                        "description": "Optional descriptive text..", /* Item details will also be in the completed paypal.com transaction view */
                        "unit_amount": {
                          "currency_code": "USD",
                          "value": "50"
                        },
                        "quantity": "2"
                      },
                    ]
                  }]
              });
            }
    </script>
    <!--scrip paypal-->
    </body>
</html>