


<nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <a class="navbar-brand" style="color: #7FFF00"  >
  <img src="home.png=" width="30" height="30" class="d-inline-block align-top" alt="">
  Property Finder</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" >

          <% if user_signed_in? %>
              
             
                
                  <button class="btn btn-link" style= "margin-top: -32px;"> <%= link_to( "LogOut", destroy_user_session_path, :method => :delete) %> </button>
                  <button class="btn btn-link" style= "margin-top: -16px;" ><%= link_to "Edit", edit_user_registration_path %> </button>
             

           <% elsif !user_signed_in? %>
                <p class = "sign_in" style= "margin-top: -14px;"> <%= link_to "Login", new_user_session_path %> </p>
              
         <% end %>

         <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" >
          <% if has_role?(:admin) %>
            <%= link_to "Register a new Broker", new_broker_path  %>
          <% end %>
          

        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" >
          
          

        </a>
      </li>

   
    
  </div>
</nav>