<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Decor Store</title>
    <style>
        :root {
                    --primary-color: #2c3e50;
                    --accent-color: #e67e22;
                    --gold-color: #D8A444;
                    --gold-shimmer: linear-gradient(45deg, rgba(216, 164, 68, 0.8), rgba(255, 223, 186, 0.8));
                    --text-color: #34495e;
                    --light-bg: #f9f9f9;
                }

                body {
                    background-image: url('https://www.example.com/path-to-your-background-image.jpg'), var(--gold-shimmer);
                    background-size: cover, 200%;
                    background-position: center;
                    animation: shimmer 3s infinite alternate;
                    font-family: 'Poppins', sans-serif;
                    color: var(--text-color);
                    min-height: 100vh;
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                    font-size: 14px;
                    padding-top: 80px; /* Height of the header */
                    padding-bottom: 0px; /* Height of the footer */
                }
                .content-wrapper {
                    flex: 1; /* Allows this section to take up remaining space, pushing footer down */
                }

                @keyframes shimmer {
                    0% { background-position: 0% 0%; }
                    100% { background-position: 100% 100%; }
                }

                header {
                    position: fixed;
                    top: 0;
                    left: 0;
                    right: 0;
                    z-index: 1000;
                    background-color: rgba(255, 255, 255, 0.8);
                    padding: 0.2rem 0;
                    text-align: center;
                    color: var(--primary-color);
                    font-family: 'Playfair Display', serif;
                    font-size: 1.2rem;
                    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);

                }


                .menu {
                            display: flex;
                            justify-content: space-between; /* Space between Welcome and menu buttons */
                            align-items: center; /* Align items vertically in the center */
                            background-color: rgba(255, 255, 255, 0.8);
                            padding: 1rem;
                            margin-top: 1px;
                        }

                        .menu-left {
                            font-size: 1rem;
                            font-weight: 500;
                            color: var(--primary-color);
                        }

                        .menu-right a {
                            color: var(--gold-color);
                            text-decoration: none;
                            padding: 0.5rem 1rem;
                            margin: 0 0.2rem;
                            border-radius: 5px;
                            transition: all 0.3s ease;
                        }

                        .menu-right a:hover {
                            color: #b59430;
                        }

        a {
            text-decoration: none;
            color: inherit;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #ff2e63;
        }


        /* Header Section */
        .header {
            width: 100%;
            max-width: 1200px;
            text-align: center;
            margin-bottom: 0px;
        }

        .header h1 {
            font-size: 48px;
            color: #4a3219;
        }

        .header p {
            font-size: 20px;
            color: #666;
            margin-top: 10px;
        }

        .cta-buttons {
            margin-top: 20px;
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .cta-buttons a {
            text-decoration: none;
            padding: 15px 30px;
            border-radius: 8px;
            font-size: 18px;
            font-weight: bold;
            transition: all 0.3s ease;
        }

        .shop-now {
            background: linear-gradient(135deg, #f093fb, #f5576c);
            color: white;
        }

        .shop-now:hover {
            background: linear-gradient(135deg, #f5576c, #f093fb);
        }

        .sell-with-us {
            background: #4a3219;
            color: white;
        }

        .sell-with-us:hover {
            background: #333;
        }

        /* Categories Section */
        .categories {
            width: 100%;
            display: flex;
            justify-content: center;
            gap: 30px;
            flex-wrap: wrap;
            margin-top: 40px;
        }

        .category-card {
            position: relative;
            width: 250px;
            height: 300px;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            transform: scale(1);
            transition: all 0.3s ease;
        }

        .category-card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
            border-radius: 15px;
        }

        .category-card:hover img {
            transform: scale(1.1);
        }

        .category-info {
            position: absolute;
            bottom: 20px;
            left: 20px;
            right: 20px;
            text-align: center;
            color: white;
            z-index: 1;
        }

        .category-info h3 {
            font-size: 22px;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        /* About Us Section */
        .about-us {
            width: 100%;
            max-width: 1200px;
            background: linear-gradient(135deg, #f5576c, #f093fb);
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            margin: 20px 0;
            padding: 40px;
            color: white;
            opacity: 0;
            transform: translateY(50px);
            animation: fadeInUp 1s forwards;
        }

        .about-us h2 {
            font-size: 28px;
            margin-bottom: 15px;
            text-align: center;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .about-us p {
            font-size: 18px;
            line-height: 1.8;
            text-align: center;
        }

        /* Help Section */
        .help {
            width: 100%;
            max-width: 1200px;
            background: linear-gradient(135deg, #4a3219, #333);
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            margin: 20px 0;
            padding: 40px;
            color: white;
            opacity: 0;
            transform: translateY(50px);
            animation: fadeInUp 1.2s forwards;
        }

        .help h2 {
            font-size: 28px;
            margin-bottom: 15px;
            text-align: center;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .help p {
            font-size: 18px;
            line-height: 1.8;
            text-align: center;
        }

        /* Contact Us Section */
        .contact-us {
            width: 100%;
            max-width: 1200px;
            background: linear-gradient(135deg, #f093fb, #f5576c);
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            margin: 20px 0;
            padding: 40px;
            color: white;
            opacity: 0;
            transform: translateY(50px);
            animation: fadeInUp 1.4s forwards;
        }

        .contact-us h2 {
            font-size: 28px;
            margin-bottom: 15px;
            text-align: center;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .contact-us p {
            font-size: 18px;
            line-height: 1.8;
            text-align: center;
        }

        .contact-info {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 10px;
            margin-top: 30px;
        }

        .contact-info div {
            font-size: 16px;
            text-align: center;
        }

        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        .contact-form button {
            padding: 12px 30px;
            background: #4a3219;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        .contact-form button:hover {
            background: #333;
        }

        /* Footer Section */
        footer {
                    background-color: rgba(255, 255, 255, 0.8);
                    padding: 0rem 0;
                    text-align: center;
                    color: #000000;
                    font-size: 0.6rem;
                    box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.2);
                    border-radius: 8px;
                    margin:0;
        }

        @keyframes fadeInUp {
            0% {
                opacity: 0;
                transform: translateY(50px);
            }

            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>

<header>
        <jsp:include page="include/header.jsp"/>
    </header>


    <div id="header" class="header">
        <h1>Transform Your Home with Style</h1>
        <p>Browse our wide range of elegant home decor products to suit every taste.</p>
        <div class="cta-buttons">
            <a href="<c:url value='/reg_form'/>" class="shop-now">Shop Now</a>
            <a href="<c:url value='/reg_form'/>" class="sell-with-us">Sell with Us</a>
        </div>
    </div>

    <!-- Categories Section -->
    <div class="categories">
        <div class="category-card">
                                    <s:url var="url_bg1" value="/static/images/livingroom.jpg"/>
                                   <s:url var="url_bg2" value="/static/images/bedroom.jpg"/>
                                   <s:url var="url_bg3" value="/static/images/office.jpg"/>

                                   <img src="${url_bg1}" alt="Living Room"/>
            <div class="category-info">
                <h3>Living Room</h3>
            </div>
        </div>
        <div class="category-card">
            <img src="${url_bg2}" alt="Bedroom">
            <div class="category-info">
                <h3>Bedroom</h3>
            </div>
        </div>
        <div class="category-card">
            <img src="${url_bg3}" alt="Office">
            <div class="category-info">
                <h3>Office</h3>
            </div>
        </div>
    </div>

    <!-- About Us Section -->
    <div id="about" class="about-us">
        <h2>About Us</h2>
        <p>We come together to transform our clients’ ideas into real objects <br>
         <h1>Budget-Friendly Home Decor Items: Tips for a Stylish Living Space</h1>

            <p>Online shopping for home décor items for your living room can be simple and enjoyable. Here are some budget-friendly home décor ideas for quick online decoration:</p>

            <h2>1. Define Your Style</h2>
            <p>Before you start shopping, determine the style and theme you want for your home décor. Having a clear vision of your preferred style will help you narrow down your search and find the right items more easily.</p>

            <h2>2. Set a Budget</h2>
            <p>Decide on a budget for your home décor purchases. This will help you avoid overspending and focus on items that fit within your price range.</p>

            <h2>3. Measure Your Space</h2>
            <p>Take accurate measurements of the areas where you plan to place your beautiful home décor items. This will help you determine the appropriate sizes and dimensions when browsing online.</p>

            <h2>4. Read Product Descriptions and Reviews</h2>
            <p>Pay close attention to product descriptions, including dimensions, materials, and any special features. Additionally, read customer reviews to get an idea of the item's quality and how well it meets expectations.</p>

            <h2>5. Look for Clear Product Images</h2>
            <p>Ensure that the online store you choose provides clear and high-resolution images of products. This will help you visualize how the item will look in your home.</p>

            <h2>6. Take Advantage of Filters and Search Options</h2>
            <p>To reduce your alternatives, use the filters and search functions offered by the online retailer. You can narrow your search to exactly what you want by using criteria such as price, color, and style.</p>
            </p>
    </div>

    <!-- Help Section -->
    <div id="help" class="help">
        <h2>Need Help?</h2>
        <p>Buying home decor items online offers several advantages, making it a popular choice for many consumers. Here are some reasons why people prefer to buy home decor items online:
               <br>
           1. Convenience:<br>
           Online shopping allows you to browse & purchase items from the comfort of your home. There's no need to travel to physical stores, saving time & effort.
                <br>
           2. Variety and Selection:<br>
           Online platforms offer a vast range of home decor items, providing you with a diverse selection. You can explore different styles, colours, & designs from various sellers or brands, giving you more options to find the perfect pieces for your home.
            <br>
           3. Comparison Shopping:<br>
           Online shopping enables you to compare prices, styles, & customer reviews easily. This helps you make informed decisions & ensures that you get the best value for your money.
<br>
           4. Access to Exclusive Items:<br>
           Many online retailers & marketplaces feature unique & exclusive home decor items that may not be available in local stores. This allows you to find one-of-a-kind pieces to personalize your space.
<br>
           5. Customer Reviews:<br>
           Online platforms often include customer reviews & ratings for products. Reading these reviews can provide insights into the quality, durability, & overall satisfaction of other customers who have purchased the same items.
<br>
           6. Sales and Discounts:<br>
           Online retailers frequently offer promotions, discounts, & sales events. This can help you save money on your home decor purchases compared to buying from brick-and-mortar stores.
<br>
           7. Easy Returns and Refunds:<br>
           Reputable online retailers typically have customer-friendly return policies, allowing you to return or exchange items easily if they don't meet your expectations.
<br>
           8. Time-Saving:<br>
           Shopping online eliminates the need to spend time traveling to multiple stores. With just a few clicks, you can quickly find & order the items you want.
<br>
           9. Customization Options:<br>
           Some online platforms allow you to customize certain home decor items, such as furniture or wall art, to better suit your preferences & style.
<br>
           10. Availability 24/7:<br>
           Online stores are accessible 24/7, allowing you to shop whenever it's convenient for you. This is particularly beneficial for individuals with busy schedules or those in different time zones.
<br>
          </p>
    </div>

    <!-- Contact Us Section -->
    <div id="contact-us" class="contact-us">
        <h2>Contact Us</h2>
        <p></p>

        <div class="contact-info">
            <div><strong>Address:</strong>YASH IT PARK
                                          Plot No. 1, Scheme Number 166 Super Corridor Road,
                                          Indore, Madhya Pradesh, 452005</div>
            <div><strong>Phone:</strong>18001035700</div>
            <div><strong>Email:</strong>info@yash.com.</div>
        </div>

        <form class="contact-form">
            <input type="text" name="fullName" placeholder="Full Name" required>
            <input type="email" name="email" placeholder="Email" required>
            <textarea name="message" placeholder="Type your Message..." rows="6" required></textarea>
            <button type="submit">Send</button>
        </form>
    </div>

    <!-- Footer Section -->
    <footer>
            <jsp:include page="include/footer.jsp"/>
        </footer>

</body>
</html>