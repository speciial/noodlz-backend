# noodlz-backend
This spring boot backend is based on the amazing introduction to spring security with OAuth2 and OpenID by Sergio Lema ([YouTube Video](https://youtu.be/EbzcnwS4q00), [GitHub Project](https://github.com/serlesen/authorization-server/tree/chapter_1)). Over time, we'll add more functionality and content to it. For now however, the goal is to implement the basics and make everything run smoothly. 

## Next Steps 
- [ ] Containerize all modules 
- [ ] Setup registration process
- [ ] Connect with noodlz app 

## Build and run
Currently, the backend won't run out-of-the-box because of how we set up the URLs to the individual modules. They all share the localhost URL which leads to a chain of redirects and subsequently to an error. When following Sergios tutorial exactly, you'll see that he edits the hosts file of his machine to provide aliases to the different modules to avoid this issue. In this project, we'll run the spring modules in separate containers to have unique addresses for each. This is still a work in progress though. 
