class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/blogs" do
    blogs = Blog.all
    blogs.to_json
  end

  get "/blogs/:id" do
    blog = Blog.find(params[:id])
    blog.to_json(include: :posts)
  end 

  post 'blogs' do 
    blog = Blog.create(
      title: params[:title],
      description: params[:description]
    )
    blog.to_json
  end 

  patch '/blogs/:id' do
    blog = Blog.find(params[:id])
    blog.update(
      name: params[:name], 
      description: params[:description]
      )
    blog.to_json
  end

  delete '/blogs/:id' do 
    blog = Blog.find(params[:id])
    blog.destroy
    blog.to_json
  end

  get '/posts' do
    posts = Post.all 
    posts.to_json
  end

end
