// 
const readline = require("readline");

function bubbleSort(arr) {
    let n = arr.length;
    for (let i = 0; i < n - 1; i++) {
        for (let j = 0; j < n - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                let temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
    return arr;
}

function linearSearch(arr, target) {
    for (let i = 0; i < arr.length; i++) {
        if (arr[i] === target) return i;
    }
    return -1;
}

function binarySearch(arr, target) {
    let left = 0;
    let right = arr.length - 1;

    while (left <= right) {
        let mid = Math.floor((left + right) / 2);

        if (arr[mid] === target) return mid;

        if (arr[mid] < target)
            left = mid + 1;
        else
            right = mid - 1;
    }
    return -1;
}

// ===== Driver Code =====

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

let input = [];
rl.on("line", line => input.push(line.trim()));

rl.on("close", () => {
    let n = parseInt(input[0]);
    let arr = input[1].split(" ").map(Number);
    let target = parseInt(input[2]);

    console.log("Sorted Array:", bubbleSort([...arr]).join(" "));
    console.log("Linear Search Index:", linearSearch(arr, target));
    console.log("Binary Search Index:", binarySearch(bubbleSort([...arr]), target));
});