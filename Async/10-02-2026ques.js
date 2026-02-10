// Consider the following javascript program. it maintains two arrays,ulteam and flutterteam. the function showmenu() prints both teams and then prints a merged list using the spread operator. the function display(teamtype, option) uses a switch statement to print a team based on the value of teamtype
let ulteam = ["Alice", "Bob", "Charlie"];
let flutterteam = ["David", "Eva", "Frank"];

function showMenu() {
    console.log("UL Team:", ulteam);
    console.log("Flutter Team:", flutterteam);

    let mergedTeam = [...ulteam, ...flutterteam];
    console.log("Merged Team:", mergedTeam);
}

function display(teamtype, option) {
    switch (teamtype) {
        case "ul":
            if (option === 1) {
                console.log("UL Team Members:");
                ulteam.forEach(member => console.log(member));
            }
            break;

        case "flutter":
            if (option === 1) {
                console.log("Flutter Team Members:");
                flutterteam.forEach(member => console.log(member));
            }
            break;

        case "all":
            if (option === 1) {
                console.log("All Team Members:");
                [...ulteam, ...flutterteam].forEach(member =>
                    console.log(member)
                );
            }
            break;

        default:
            console.log("Invalid team type");
    }
}


showMenu();
display("ul", 1);
display("flutter", 1);
display("all", 1);
