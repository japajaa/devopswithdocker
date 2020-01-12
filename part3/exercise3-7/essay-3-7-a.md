# Why and when to use Kubernetes

Using Kubernetes is useful when you have lots of containers to orchestrate. This kind of situation could occur, for example, if your application has an architecture of micro services. Kubernetes works best with stateless services that can be started and stopped whenever automation finds it suitable. Things get a little bit more complicated if application has stateful services.

In a situation mentioned above, using Kubernetes can save you a lot of time by managing the setup automatically. Kubernetes automatically manages the pods according to the specified rules. Those pods that fail health checks are dropped and new ones are created to replace them. Doing this kind of tasks manually would take much effort, if the amount of services to manage starts to grow.

Kubernetes can also do load-balancing and dynamically scale the number of pods, if there is need for that. This prevents bottlenecks and allows better use of the available resources. You do not need to reserve extra capacity for all the services at all the time but have some extra capacity for the whole setup and scale up those parts of the application that have stress.

When deploying new services or updating the old ones, Kubernetes offers possibilities for zero-downtime deployments and canary deployment to see if new versions work as expected. If things start to fail, there are automatic rollbacks. These features will save downtime while deploying and reduce the risk for catastrophic failures related to misfortunate deployments.
