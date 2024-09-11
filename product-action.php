<?php
if (!empty($_GET["action"])) 
{
    $productId = isset($_GET['id']) ? htmlspecialchars($_GET['id']) : '';
    $quantity = isset($_POST['quantity']) ? htmlspecialchars($_POST['quantity']) : '';
    $resId = isset($_GET['res_id']) ? htmlspecialchars($_GET['res_id']) : '';
    $userTitle = isset($_POST['title']) ? htmlspecialchars($_POST['title']) : '';

    switch ($_GET["action"]) 
    {
        case "add":
            if (!empty($quantity)) {
                // Prepare SQL statement to fetch product details
                $stmt = $db->prepare("SELECT * FROM products WHERE d_id= ?");
                $stmt->bind_param('i', $productId);
                $stmt->execute();
                $productDetails = $stmt->get_result()->fetch_object();

                // Use user-provided title if res_id is 5, otherwise use title from the database
                $itemTitle = ($resId == 5 && !empty($userTitle)) ? $userTitle : $productDetails->title;

                // Generate a unique key for the cart item using both product ID and title
                $cartKey = $productId . '_' . md5($itemTitle);

                $itemArray = array(
                    $cartKey => array(
                        'title' => $itemTitle, // Use itemTitle here
                        'd_id' => $productDetails->d_id,
                        'quantity' => $quantity,
                        'price' => $productDetails->price
                    )
                );

                if (!empty($_SESSION["cart_item"])) 
                {
                    if (array_key_exists($cartKey, $_SESSION["cart_item"])) 
                    {
                        // Update existing item
                        $_SESSION["cart_item"][$cartKey]["quantity"] += $quantity;
                    } 
                    else 
                    {
                        // Add new item
                        $_SESSION["cart_item"] = array_merge($_SESSION["cart_item"], $itemArray);
                    }
                } 
                else 
                {
                    // Initialize cart with the new item
                    $_SESSION["cart_item"] = $itemArray;
                }
            }
            break;

        case "remove":
            if (!empty($_SESSION["cart_item"])) 
            {
                // Generate the unique key for the item to be removed
                $itemTitle = isset($_GET['title']) ? htmlspecialchars($_GET['title']) : ''; // Assuming title is passed in the URL
                $cartKey = $productId . '_' . md5($itemTitle);

                if (array_key_exists($cartKey, $_SESSION["cart_item"])) 
                {
                    unset($_SESSION["cart_item"][$cartKey]);

                    // Optional: If the cart is empty after removal, unset the cart session
                    if (empty($_SESSION["cart_item"])) {
                        unset($_SESSION["cart_item"]);
                    }
                }
            }
            break;

        case "empty":
            unset($_SESSION["cart_item"]);
            break;

        case "check":
            header("location:checkout.php");
            break;
    }
}
