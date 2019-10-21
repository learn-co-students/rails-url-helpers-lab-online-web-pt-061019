# index page (hardcoded)

<div>
  <% @students.each do |student| %>
    <div><%= student.first_name + " " + student.last_name %></div>
  <% end %>
</div>

# Student is active
if @student.active
This student is currently active.
else
This student is currently inactive
end