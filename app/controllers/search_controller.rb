class SearchController < ApplicationController

  def search
    @name = params["search"]["name"]
    @model = params["search"]["model"]
    @test = params["search"]["test"]
    if @model == 1.to_s
      if @test == 1.to_s
        @users = User.where('name LIKE ?', @name)

      elsif @test == 2.to_s
        @users = User.where('name LIKE ?', @name+'%')
      elsif @test == 3.to_s
        @users = User.where('name LIKE ?', '%'+@name)
      else
        @users = User.where('name LIKE ?', '%'+@name+'%')
      end
    end
    if @model == 2.to_s
      if @test == 1.to_s
        @books = Book.where('title LIKE ?', @name)
      elsif @test == 2.to_s
        @books = Book.where('title LIKE ?', @name+'%')
      elsif @test == 3.to_s
        @books = Book.where('title LIKE ?', '%'+@name)
      else
        @books = Book.where('title LIKE ?', '%'+@name+'%')
      end
    end
  end
end