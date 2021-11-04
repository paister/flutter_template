This is a template for a single feature

The folder structure is explained below, largely based on the DDD layers.

Note that the Application layer does not exist as a folder. 
In this approach, the Application layer is implemented as ViewPresenter/ViewModels. 
Here by using the BloC library. 

Dependencies:
There are no cross dependencies.
The layers are only dependent on one further inner layer. 
The presentation layer and the infrastructure layer depend only on interfaces of the domain layer. 