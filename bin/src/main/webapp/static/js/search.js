let btn = document.querySelector(".btn");
        let search = document.querySelector(".search");
        let bell = document.querySelector(".bell");
        let alarm = document.querySelector(".alarm");
        let cls = document.querySelector(".fa");
        let header = document.querySelector("#header");

        btn.addEventListener('click', () => {
            if (search.classList.contains("active")) {
                search.classList.remove("active")
            } else {
                search.classList.add("active")
            }
        });

        cls.addEventListener('click', () => {
            search.classList.remove("active")
        });

        bell.addEventListener('click', () => {
            if (alarm.classList.contains("active")) {
                alarm.classList.remove("active")
            } else {
                alarm.classList.add("active")
            }
        });

        document.addEventListener('scroll', () => {
            let currentScrollValue = document.documentElement.scrollTop;
            console.log(currentScrollValue)
            if (currentScrollValue > 100) {
                header.animate({ opacity: "0" }, 500)
                header.animate({ opacity: "1" }, 500)
            }
        });