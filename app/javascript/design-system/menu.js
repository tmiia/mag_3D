
class MainMenu {
    constructor (selector) {
        this.element = document.querySelector(selector);
        this.menu = this.element.querySelector('#menu');
        this.mainButton = this.element.querySelector('button');

        this.state = {
            isOpened: false,
            isMobile: false
        };

        this.listen();
    }
    listen() {
        console.log(this.menu)
    }
}
export default new MainMenu('header-navigation');
