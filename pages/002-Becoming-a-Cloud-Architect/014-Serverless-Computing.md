
# Serverless Computing


Serverless computing is a newer paradigm that came about relatively recently. Back in 2014 amazon web services released a new service called AWS Lambda. This service promised to give you the power of running the code for your applications without the need to provision and manage a server. 

This new way of executing code, without a server, is where the term serverless comes from. Now At first glance, the words serverless computing, and the whole idea of a server not existing might seem paradoxical, and that's because it is.

When Amazon says something is serverless, what they are actually saying is that they will manage and deal with all the server-related tasks for you; and they are promising that your experience will not require any setup, patching, or configuration of servers from your end. Now to be clear, there are servers in the backend of any serverless service, you are just not in charge of them.

So when we talk about something like Serverless compute for instance, we are speaking about a way to run code, without the need for us to provision the server that does the execution of that code. 

Serverless has gained rapid popularity as cloud computing has grown. As a result of lambda success, there have been a whole new species of serverless applications and managed services that have grown out of this simple idea. There are now serverless compute services, serverless databases services, and serverless application integration services.

Overall serverless is an extremely important architectural concept that any new solutions architect should be aware of when they start their cloud journey. And a large part of working with serverless is to understand where its strengths lie and where its weaknesses might be too much of a burden.

For the next part of this lecture, I will be specifically talking about serverless compute. However, these concepts generally apply to all forms of serverless. 

Serverless compute has a number of very impressive strengths that allow it to occupy an important place in your architect's toolbox. These strengths allow you to use serverless in a very different way than you might be used to operating in a traditional architecture.

In a traditional environment, you will need to keep your servers running 24 x 7 so that they are always ready to handle a request. During that time you will be paying for the electricity and maintenance of those servers. Even if you were to downscale your footprint or autoscale your servers, there will always be a minimum number of elements required to be online at all times to respond to your requests.

Many people will only use somewhere around 10 to 20 percent of their main available fleet capacity at any one time. Additionally, I think it's also important to remember that many architectures will need to have a warm standby or fully operational standby ready for high availability and disaster recovery requirements. These kinds of costs start to add up very quickly.

When you use a serverless service, however, those costs are not a factor for you. You are only billed for the active time that you are using the underlying infrastructure, and not any of the idle time in between. This makes serverless very cost-effective for inconsistent traffic throughput workloads, and for avoiding the need for warm and hot standbys.

Another amazing feature of using a serverless service is that in general, they are able to scale extremely quickly. If you are suddenly hit with a high-demand spike, a serverless service already has its backend completely running and ready to pick up any load. If you were to experience this using traditional methods, it would take some time for the autoscaling to provision more servers. This downtime could cause latency for the end users and may affect their experience negatively. 

One of the original benefits of moving to the cloud was that it helped to eliminate the temporal costs of scaling your architectures. If you wanted to add more servers you would have to request funding, create and sign purchase agreements, accept delivery, and build out all the new network infrastructure.

By moving to the cloud we were able to take something that would require weeks to months of planning and orchestration, and convert that all into a simple API call. Now, this call might still take minutes to hours to fully execute, but that was orders of magnitude easier and more efficient than before. 

Serverless is that next jumping point. When you have a robust serverless architecture you are able to scale to the demand of your application at a moment's notice. You no longer have to wait for servers to spin up, for health checks to complete, everything is ready to go from the start.

Another facet of serverless that can not be understated, is that it is inherently highly available and fault-tolerant. AWS is in charge of the services autoscaling, they are in charge of data protection within the service, they are responsible for keeping the lights on within the service.

Now, this doesn't mean you can get sloppy and not create backups and have a disaster recovery plan. What this does mean, however, is that you know this specific piece of the puzzle (the serverless compute for instance) will not be the sticking point in your architecture. 

Serverless is built around the idea of fault tolerance.

One of the more difficult issues when deploying new applications or code is getting those updates out to your fleet of servers. This operational headache can take hours to get orchestrated correctly and is very open for errors to occur. 

When you use serverless, your updates are propagated extremely quickly and require no extra hand-holding on your end. This allows your developers to innovate and iterate quickly when they are building for a serverless application.

Just like many aspects of life, when you decide to go with a serverless solution, there are both positives and negatives associated with it. In general, the negative side related to serverless will help to guide what types of architecture and applications it will work with.

This is probably the greatest weakness of serverless. For most serverless services, there is a very heavy cut-off time for how long a particular function can run. If we are talking about serverless compute, specifically on AWS, using AWS Lambda, the run time for any code execution is limited to 15 minutes. Believe it or not, it actually used to be way shorter than this, and 15-minute execution was a groundbreaking feature update.

So, if you have a piece of code that you need to execute that will take longer than 15 minutes to complete, this is simply not an option for you. There are of course ways you can build around this problem, but at face value, it's always something you will need to keep in mind when building for serverless.

What this also means is that you will have to take special care to deal with the state of your applications or programs. Since AWS lambda hard stops at the 15-minute mark, you would need to be in charge of bookmarking where the execution left off, or at the bare minimum making sure your tasks are chunkable. That they can be eaten like chips out of a bag, instead of as a full meal.

Like with any managed service, you do not have access to the underlying infrastructure. All of that hardware and software is obscure from your view, and with it, some of your ability to test and debug your applications. 

This doesn't mean that there are no tools out there that can help with this problem, but it is yet another hurdle that you must overcome when dealing with serverless. For example, AWS Lambda does have a method of debugging and stepping through your code locally, but you will have to use AWS SAM (the Serverless Application Model) framework, in order to gain that functionality. This means downloading and building your applications using the AWS SAM CLI which provides a lambda-like execution environment for you to use.

You will find this kind of problem all over the shop when dealing with serverless in its various incarnations. In general Serverless, compute is more expensive than servered compute in a 1-to-1 environment. Five minutes of raw serverless will cost more than five minutes of raw servered power (if everything is equal). So you would assume that it is always better to pick a servered option... Well, it's complicated..

What I said earlier is accurate only as you maximize the total used resources on the source machine that is running your code. Let's say that all your code running on ec2 instances only used up 50% of the CPU and memory of the underlying instance.

In this scenario, you would probably be better off running your code on a serverless workload. In fact, it would be almost 40% more cost-effective to use the serverless option. This is because serverless is always running at 100% effective CPU and memory utilization and won't have that extra compute wasted.

However, If you were able to bring that average CPU and memory reservation up to 100% -  you would overall be 20% more cost-efficient using that pure EC2-based approach.

For an in-depth look at where I'm pulling this data from, please take a look over here: 

https://aws.amazon.com/blogs/containers/theoretical-cost-optimization-by-amazon-ecs-launch-type-fargate-vs-ec2/

In this article, we can see Amazon has done all the hard work in providing data for the cost side of this equation. This article specifically talks about containers in the serverless environment, but the data is still very relevant for all serverless operations.

So to summarize the cost side of things, if you have a workload that can support long-running operations, that fully utilizes the CPU and Memory of the underlying instances - A servered deployment is probably the best course of action cost wise. If you can not guarantee that will be the case, then serverless is pretty attractive.

When you start to create your own architecture that features serverless as a main component, you will find that there are already a few paradigms that seem to fit quite well. Specifically, I want to go over event-driven architectures and microservice-based architectures.

This type of architecture is defined by the production, detection, and consumption of events. When an event is produced, the system will detect the new event, consume that event, and then do something about it. We can define an event as ‘when something changes in a significant way’. In regard to the AWS cloud, an event might be something as simple as uploading a picture into an s3 bucket. 

There are a number of ways to detect when an event happens within AWS. Some services come prebaked with event handling systems. For our current example of uploading that picture into s3, s3 has the ability to fire an event notification which can be processed by AWS lambda. 

When lambda receives the event, you could run a serverless function that takes the image and creates new smaller thumbnail images and places those into different buckets. This in turn could also fire event notifications and could cause more things to happen downstream.

These types of systems are not limited to simple picture resizing and thumbnail creation. You could create an entire e-commerce site using just event base logic and systems; these systems could all be serverless as well.

One of the most important parts of learning to become a good architect is making sure your components are as decoupled as possible. That way each piece of your application can scale and shrink as required, without overburdening the entire solution. 

Microservices allow us to pull apart and decouple our monolithic applications and create small sub applications or services out of it. These microservices can be built with more traditional compute options, but I find that they lend themselves quite well to the world of serverless.  

By making sure the compute aspect of these microservices are serverless in nature, an already inherently good scaling solution, we are doubling down on resolving the scalability issue that many applications may face.

Another great aspect of serverless microservices is that by breaking apart our applications into smaller team lead groups, we also allow for parallel development and greater ownership of these bite-sized application elements.

With all of the possible serverless options out there, a total of 12 in all, there is almost always a way to create a microservice in a serverless way.