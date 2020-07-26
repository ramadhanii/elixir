defmodule LivedataWeb.PostLive.PostComponent do
  use LivedataWeb, :live_component

  def render(assigns) do
    ~L"""
      <div id="post-<%= @post.id %>" class="post">
        <div class="row">
          <div class="column column-90 post-body">
            <b>@<%= @post.username %></b>
            <br/>
            <%= @post.body %>
            <br/>
          </div>
        </div>

        <div class="row">
          <div class="column">
            <i class="far fa-heart">Likes</i> <%= @post.likes_count %>
          </div>
          <div class="column">
            <i class="far fa-heard">Reposts</i> <%= @post.reposts_count %>
          </div>
          <div class="column">
            <%= live_patch "Edit", to: Routes.post_index_path(@socket, :edit, assigns.post) %>
            <%= link "Delete", to: "#", phx_click: "delete", phx_value_id: @post.id, data: [confirm: "Are you sure?"] %>
          </div>
        </div>
      </div>
    """
  end
end
