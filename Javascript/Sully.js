let iterator = 5;
const main = function main() {
    const fs = require('fs');
    if (fs.existsSync('Sully_5.js')) {
        iterator--;
    }
    fs.writeFile(`Sully_${iterator}.js`, `let iterator = ${iterator};\nconst main = ${main.toString()}\nmain()\nmodule.exports.main = main;`, function(){
        if (iterator) {
            const child = require(`./Sully_${iterator}`);
            child.main();
        }
    })
}
main()
module.exports.main = main;