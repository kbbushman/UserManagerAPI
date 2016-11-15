require "rails_helper"

describe "User API Tests" do #suite

	it "Get /users should return 200" do #spec
		get "/users"

		expect(response).to have_http_status(200) #assertion
	end

	it "Post /users should return 201" do
		post "/users", params: {
			user: {
				first_name: "Foo",
				last_name: "Bar",
				user_name: "foobar",
				email: "foobar@gmail.com"
			}
		}

		expect(response).to have_http_status(201)
	end

	it "Post /users missing an attribute should return 400" do
		post "/users", params: {
			user: {
				first_name: "Foo",
				last_name: "Bar",
				user_name: "foobar"
			}
		}

		expect(response).to have_http_status(400)
	end

	it "GET /users/:id should return 200" do
		user = User.create(first_name: "Test", last_name: "Tester", user_name: "test", email: "test@test.com")

		get "users/#{user.id}/edit"

		expect(response).to have_http_status(200)
	end

	it "PUT /users/:id should return 204" do

		user = User.create(first_name: "Test", last_name: "Tester", user_name: "test", email: "test@test.com")

		put "/users/#{user.id}", params: {
			user: {
				first_name: "Testy"
			}
		}

		expect(response).to have_http_status(204)
	end

	it "DELETE /users/:id should return 200" do
		user = User.create(first_name: "Test", last_name: "Tester", user_name: "test", email: "test@test.com")

		delete "users/#{user.id}"

		expect(response).to have_http_status(200)
	end

end
