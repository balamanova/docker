<h1>Quick Start</h1>
<ul><li>
Download all project micrserives
</li><li>
run on your own machine
</li><li>
create an image
</li><li>
RUN <pre>docker compose up -d</pre>
</li>
And wait
</ul>
1.    Choose a project topic
“Kindergarden” system for accountants and nurses
2.    Logically split your project into small-gained components with well-defined boundaries of responsibility (at least 4 microservices).
3.    Briefly define responsibilities of each component. Identify and describe basic API methods.
    •     /staff -  to manage data about staff member. It will have features like adding, deleting, granting role to staff members, also add, delete and update children data.
    •     /registry – for accountants and for parent to create application to create new registry, to update status of registry, overally control process about registry
    •    /children - for managing data about children, kindergarden and groups in kindergarden, microservice to manage children attendance, attach documents about missing days, 
    •    /kindergarden – to manage kinder garden data
    4.    Describe how these microservices communicate with each other (illustrate in diagram if needed).
        /staff 
        •    to create and add staff member we have we need list of kindergardens
        /registry
        •    to create new registry, we have to retrieve list of kindergardens with microservice /kindergarden
        •    after list of group depending on kindergarden /kindergardern/group
        •    after children /children
        /children 
        •    to create new children, we have to retrieve list of kindergardens with microservice /kindergarden
        •    when retrieve for every nurse we have to check from /staff/role rolw of staff worker and retrieve list of childrens to check the attendance and attach needed documents in case when children didn’t come to kindergarden
    

