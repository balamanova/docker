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
<ul>
<br>1.    Choose a project topic
<p>“Kindergarden” system for accountants and nurses</p>
<br>2.    Logically split your project into small-gained components with well-defined boundaries of responsibility (at least 4 microservices).
<br>3.    Briefly define responsibilities of each component. Identify and describe basic API methods.
    <li>  /staff -  to manage data about staff member. It will have features like adding, deleting, granting role to staff members, also add, delete and update children data.
    </li><li>   /registry – for accountants and for parent to create application to create new registry, to update status of registry, overally control process about registry
    </li><li>   /children - for managing data about children, kindergarden and groups in kindergarden, microservice to manage children attendance, attach documents about missing days, 
    </li><li>   /kindergarden – to manage kinder garden data
   <br> 4.    Describe how these microservices communicate with each other (illustrate in diagram if needed).
       <br> /staff 
        </li><li>  to create and add staff member we have we need list of kindergardens
       <br> /registry
        </li><li>    to create new registry, we have to retrieve list of kindergardens with microservice /kindergarden
        </li><li>    after list of group depending on kindergarden /kindergardern/group
        </li><li>   after children /children
      <br>  /children 
        </li><li>   to create new children, we have to retrieve list of kindergardens with microservice /kindergarden
        </li><li>   when retrieve for every nurse we have to check from /staff/role rolw of staff worker and retrieve list of childrens to check the attendance and attach needed documents in case when children didn’t come to kindergarden</li>
        </ul>
    

