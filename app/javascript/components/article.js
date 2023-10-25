const articles = document.querySelectorAll('article.article');

class Article {
    constructor (dom) {
        this.dom = dom;

        this.init();
    }
    init() {
        this.mood = this.dom.querySelector('.mood span')
    }
}

articles.forEach((dom) => {
    new Article(dom);
});