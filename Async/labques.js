function placeOrder(item, delay) {
  return new Promise((resolve) => {
    setTimeout(() => {
      console.log("Order confirmed");
      resolve({ orderId: 1, item });
    }, delay);
  });
}

function assignRider(orderId, delay) {
  return new Promise((resolve) => {
    setTimeout(() => {
      console.log("Rider assigned");
      resolve({ riderId: 101, orderId });
    }, delay);
  });
}

function pickupOrder(riderId, delay) {
  return new Promise((resolve) => {
    setTimeout(() => {
      console.log("On the way");
      resolve(riderId);
    }, delay);
  });
}

function deliverOrder(orderId, delay) {
  return new Promise((resolve) => {
    setTimeout(() => {
      console.log("Delivered");
      resolve(orderId);
    }, delay);
  });
}

async function trackOrder() {
  try {
    const order = await placeOrder("Pizza", 1000);
    const rider = await assignRider(order.orderId, 2000);
    await pickupOrder(rider.riderId, 2000);
    await deliverOrder(order.orderId, 3000);
  } catch (error) {
    console.log("Error:", error);
  } finally {
    console.log("Tracking closed");
  }
}

trackOrder();
