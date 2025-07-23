# Lopay tech test

### 👋 Overview

At **Lopay**, we care deeply about building high-quality, user-friendly mobile experiences. This tech test will simulate a collaborative pairing session where we’ll assess how you work through real-world problems, from fixing existing bugs to building and refining features.

You'll be working with an existing iOS Swift project that fetches products from a dummy API and displays them in a list. Your task is to identify and fix some known issues, implement UI improvements, and add functionality for a shopping cart.

We’ll pair-code together for this test. You are encouraged to ask questions, reason out loud, and search the internet if needed, just like in a real team setting.

---

### 🧱 Project Structure

You’ll be working in a UIKit-based Swift app. The current features include:

- A `UITableView` list of food/products from: `https://dummyjson.com/products`
- Tapping on a product navigates to a detail view with more information and a Buy button

---

### ✅ Your Tasks

### 1. 🐛 **Fix Existing Issues**

**Note:**  **Images are cut off** in the main list view. Adjust the layout to maintain aspect ratio and proper padding.
- [ ]  **Text overflows** the screen on some product names and descriptions. Ensure labels wrap and layout correctly.
- [ ]  **Prices are missing** on the product list. Display the price of each product.
- [ ]  Convert all prices from USD to GBP using the fixed conversion: **`$1 = £0.74`**

---

### 2. 📱 **UI & UX Enhancements**

- [ ]  In the **Detail View**, display the **stock left** for that product.
- [ ]  If a product is **out of stock**, then:
    - In the product list, display a clear “Out of Stock” label
    - Visually **dim the cell** (e.g. reduce alpha or change style)
    - Disable navigation to the detail view for that item

---

### 3. 🛒 **Implement Cart Functionality**

- [ ]  Add a **Cart button on the top left** of the main product list screen
- [ ]  Tapping the cart should open a screen showing:
    - [ ]  List of items added to cart
    - [ ]  Total price (in GBP)
    - [ ]  A **Checkout** button (non-functional)
- [ ]  Add an **“Add to Cart”** button in the **Detail View**
- [ ]  If the same product is added more than once:
    - [ ]  Increment the quantity instead of duplicating
    - [ ]  Show quantity and price per item in the cart
- [ ]  Support **removing items** or **decreasing quantity** from the cart

---

### 🧪 What We’re Looking For

We’re not expecting pixel-perfect UI. We're interested in:

- Your **debugging process**
- Understanding of **UIKit layout**
- Use of **model updates and shared state**
- Clean and modular **code structure**
- Ability to **communicate decisions** and **reason trade-offs**

---

### 🔧 Tools & Setup

- Project is in **Swift (UIKit)**.
- Uses `SDWebImage` via CocoaPods for image loading.
- Dummy API: `https://dummyjson.com/products`
- Clone or unzip the starter project, run `pod install`, and open `.xcworkspace`

---

### ⏱️ Interview Format

- 💻 1–1.5 hours pair coding with an iOS engineer
- 🤝 Collaborative, open-book format
- 🧠 You're encouraged to talk through your thought process

---

### 📦 Optional (Bonus Ideas, Only if there's time)

- Add basic **unit tests** for cart logic
- Add **loading indicators** when fetching products
- Support **empty state** (e.g. when no items in cart)

---

Let me know if you want me to:

- Inject the bugs
- Build a starter project with a basic cart model
- Package this as a `README.md` and add it to your zip bundle

Ready when you are!
