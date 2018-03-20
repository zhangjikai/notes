(function () {
function install (hook) {

    hook.doneEach(function (_) {
        document.getElementById("main").style.visibility = 'hidden';
        var list = document.querySelectorAll("pre");
        for (var i = 0; i < list.length; ++i) {
            list[i].classList.add('line-numbers');
        }
        Prism.highlightAll();
        document.getElementById("main").style.visibility = 'visible';
    });
}

$docsify.plugins = [].concat(install, $docsify.plugins);

}());
