
**VIPER (View Interactor Presenter Entity Router)** is an architecture that helps us solve the well known common *Massive View Controller* problem in iOS apps. After implementation to its full extent, it achieves distributed reponsibilites between modules, which also yields testability. That's another problem with Apple's Model View Controller architecture is poor testability.

Let's quickly discuss basics:

* **View**:  Contains no business logic. View logic lives here and as per the request from Presenter, It should delegate user interaction actions to the Presenter. 

* **Interactor**: As per the request from Presenter, Interactor is responsible for fetching the data from APIs regardless of where the data is coming from. Can contain business logic as well. Interactor is not always needed unless if you are peforming any concurent tasks. 

* **Presenter**: Think of a bridge between Interactor and view. 

* **Entity**: Takes care of modeling the data. Let's not put business logic here, limit it to only modeling the data.

* **Router**: It handles the navigation responsibility. It's recognized as wireframes as well, since it will handle the routing navigation between other wireframes. 


Let's also quickly discuss how the communication (logic) happens between these files:

![](/Images/interfaceComs.jpg "iOS VIPER Interface/Protocols")

* *View* communicates with *Presenter* via a *PresenterInterface* protocol
* *Presenter* communicates with *ViewController* via a *ViewInterface* protocol
* *Presenter* communicates with *Interactor* via a *InteractorInterface* protocol
* *Presenter* communicates with *Wireframe* via a *WireframeInterface* protocol  => (Wireframe/Router)

As you may have noticed, the communication between all the components are done via protocols to enrure it meets the responsibilties of each. Wireframe communicates directly with the Presenter since it instantiates the Presenter, Interactor and View and connects the three via dependency injection.

Looking at references between components:

* *Presenter* has a **strong** reference to *Interactor*
* *Presenter* has a **strong** reference to *Wireframe*
* *Presenter* has a **unowned** reference to *ViewController*
* *ViewController* has a **strong** reference to *Presenter*


One of the headache Viper architecture brings, is having to write a lot of boilerplate code. As developers, we do not like to write repetitive code. So I have created a Viper Template that is easy to use and integrate. This template will help us create all different classes that any Viper module would require. 

### How to install?

Clone the repository. Navigate to the directory and execute below command in terminal:
>  make install_viper_template

Yup. That easy!! :)

### How to use?

After running the above stated command in terminal, you can open your Xcode project, go to file menu, select New -> File -> ( command N for shortcut), scroll down all the way to the bottom and you will see the Viper Module Template. Please select the template and name it as your wish, you can also choose to implement storyboard for your module if you like. 


### How to uninstall?

Navigate to the directory and execute below command in terminal:
>  make uninstall_viper_template


Haha :D Yup. That's easy too!!


## Links for architecture help

* https://medium.com/ios-os-x-development/ios-architecture-patterns-ecba4c38de52
* https://www.objc.io/issues/13-architecture/viper/
