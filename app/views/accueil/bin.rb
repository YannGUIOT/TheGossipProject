=begin<% @gossips.each do |gossip| %>
    <p> <%= goosip.title %> </br>
    <%= goosip.content %> </p>
<% end %>

<% @user.each_with_index do |user, index| %>
    <li> <%= link_to "#{@user[index],first_name}", "/welcom/#{@user[index].id}" %> </li>
         <% @user[index].gossips.each do |gossip| %>
    <p> <%= link_to "#{gossip.title}", "/gossip/#{gossip.id}" %> </p>
    <% end %>
<% end %>=end