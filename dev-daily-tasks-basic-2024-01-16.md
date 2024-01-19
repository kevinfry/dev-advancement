# Developer Daily Tasks [Home](https://github.com/kevinfry/dev-advancement)
Created by Kevin Fry
- [GitHub](https://github.com/kevinfry)
- [LinkedIn](https://www.linkedin.com/in/kevinjfry/)
- [Facebook](https://www.facebook.com/kevinjfry)

## 2024-01-16
### Notes
```bash

makeServer() {
    path="$1"
    if [ -z "$path" ]; then
        path="."
    fi
    port="$2"
    if [ -z "$port" ]; then
        port="9001"
    fi
    file="$3"
    if [ -z "$file" ]; then
        file="index.php"
    fi
    open http://localhost:$port/$file
    php -t $path -S localhost:$port
}
openSocialTabs() {
  open 'https://github.com/' \
      'https://www.linkedin.com/' \
      'https://www.facebook.com/' \
      'https://www.twitter.com/'
}

```

### Links
- [Pika](https://pika.art/) - Short AI generated videos.
- My Creation [animated penguins](content/five_penguins_discussing_advanced_development_topics.mp4)

### Developer Daily Tasks for Code Development

1. [ ] **Coding, Code Review and Refactoring**
    - [ ] Wrote Code
    - [ ] Pushed Code
    - [ ] Created PR
    - [ ] Merged
    - [ ] Code Review
    - [ ] Refactor
    - [ ] Created Content

2. [ ] **Learn Something New**
   - [ ] Tutorial
   - [ ] Coding Function
   - [ ] Coding Technique
   - [ ] Coding Library
   - [ ] Coding Language
   - [ ] Research
   - [ ] Web Platform
   - [ ] Web App
   - [ ] Phone App
   - [ ] Computer App

3. [ ] **Problem-Solving**
   - [ ] No Errors or Warnings
   - [ ] Read logs and debugged solutions (Clean Code - No Errors or Warnings)
   - [ ] Noticed unexpected results ` n/a `
   - [ ] I need help with this: ` n/a `
   - [ ] Discovered solution: ` n/a `

4. [ ] **Communication**
   - [ ] Write a review on a source code change.
   - [ ] Look for other perspectives on your software.
   - [ ] Post on social media.
     - [ ] LinkedIn
     - [ ] Facebook
     - [ ] Reddit
     - [ ] Quora
     - [ ] Flipboard
     - [ ] TikTok
     - [ ] Instagram
   - [ ] Make Someone Happy!
     - [ ] React
     - [ ] Comment
     - [ ] Share
     - [ ] Reply

5. [ ] **Testing**
   - [ ] Nothing to test yet.
   - [ ] Tested in multiple environments with no changes.
   - [ ] Tested in multiple environments, made changes.
   - [ ] Everything worked.

### Personal Development
1. [ ] **Eating/Drinking**
   - [ ] Coffee
   - [ ] Breakfast
   - [ ] Lunch
   - [ ] Dinner
   - [ ] Snack
   - [ ] Dessert
   - [ ] Tea
   - [ ] Water

2. [ ] **Rest/Relax/Sleep**
   - [ ] Sleep
   - [ ] Rested Mind
   - [ ] Meditated
   - [ ] Nap
   - [ ] Relaxed
   - [ ] Prayer
   - [ ] Phone Free
     - [ ] Wake Up
     - [ ] Pre-Sleep
     - [ ] 1h Hack Session
     - [ ] 2h Hack Session

3. [ ] **Free Time**
    - [ ] Family Time
    - [ ] Significant Other Time
    - [ ] Personal Time
    - [ ] Work Out
    - [ ] Exercise
    - [ ] Make A Call
    - [ ] Receive A Call
    - [ ] Make A Text
    - [ ] Receive A Text
    - [ ] Make A Email
    - [ ] Receive A Email
    - [ ] Other

4. [ ] **Chore**
    - [ ] Throw something away
    - [ ] List something on a sales platform
    - [ ] Do dishes
    - [ ] Vacuum
    - [ ] Laundry
    - [ ] Clear Off Desk
    - [ ] Re-arrange Room
    - [ ] Cook/make Breakfast
    - [ ] Cook/make Lunch
    - [ ] Cook/make Dinner
    - [ ] Cook/make Snack
    - [ ] Clean Room
    - [ ] Clean Closet
    - [ ] Clean Drawer
    - [ ] Other

5. [ ] **Outside**
   - [ ] Morning Walk
   - [ ] Green Walk
   - [ ] Walk
   - [ ] Run
   - [ ] Drive
   - [ ] Bike
   - [ ] Other

### git log, star date 2024-01-16

Back to work

Replace the count below with the number of occurrences of `[X]` you find.
count: `0`
