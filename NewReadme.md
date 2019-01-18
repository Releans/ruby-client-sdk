# Getting Started with Releans API

The Releans SDK enables developers to use Releans Services in their code. You can get started in minutes.


## How to Build

The generated code depends on a few Ruby gems. The references to these gems are added in the gemspec file. The easiest way to resolve the dependencies, build the gem and install it is through Rake:

1. Install Rake if not already installed: `gem install rake`
  2. Install Bundler if not already installed: `gem install bundler`
  3. From terminal/cmd navigate to the root directory of the SDK.
  4. Invoke: `rake install`

Alternatively, you can build and install the gem manually:

1. From terminal/cmd navigate to the root directory of the SDK.
  2. Run the build command: `gem build releans.gemspec`
  3. Run the install command: `gem install releans-1.0.0.gem`

![Installing Gem](https://apidocs.io/illustration/ruby?workspaceFolder=Releans&gemVer=1.0.0&gemName=releans&step=buildSDK)

## How to Use

The following section explains how to use the releans ruby gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting `File -> Close Project`. Next, click on `Create New Project` to create a new project from scratch.

![Create a new project in RubyMine - Step 1](https://apidocs.io/illustration/ruby?workspaceFolder=Releans&step=createNewProject0)

Next, provide `TestApp` as the project name, choose `Rails Application` as the project type, and click `OK`.

![Create a new Rails Application in RubyMine - Step 2](https://apidocs.io/illustration/ruby?workspaceFolder=Releans&step=createNewProject1)

In the next dialog make sure that the correct Ruby SDK is being used (minimum 2.0.0) and click `OK`.

![Create a new Rails Application in RubyMine - Step 3](https://apidocs.io/illustration/ruby?workspaceFolder=Releans&step=createNewProject2)

### 2. Add reference of the gem

In order to use the Tester gem in the new project we must add a gem reference. Locate the `Gemfile` in the Project Explorer window under the `TestApp` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: `gem 'releans', '~> 1.0.0'`

![Add new reference to the Gemfile](https://apidocs.io/illustration/ruby?workspaceFolder=Releans&gemVer=1.0.0&gemName=releans&step=addReference)

### 3. Adding a new Rails Controller

Once the `TestApp` project is created, a folder named `controllers` will be visible in the *Project Explorer* under the following path: `TestApp > app > controllers`. Right click on this folder and select `New -> Run Rails Generator...`.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?workspaceFolder=Releans&gemVer=1.0.0&gemName=releans&step=addCode0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the `controller` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?workspaceFolder=Releans&step=addCode1)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide `Hello` and include an action named `Index` and click `OK`.

![Add a new Controller](https://apidocs.io/illustration/ruby?workspaceFolder=Releans&gemVer=1.0.0&gemName=releans&step=addCode2)

A new controller class named `HelloController` will be created in a file named `hello_controller.rb` containing a method named `Index`. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?workspaceFolder=Releans&gemName=releans&step=addCode3)


## Initializing

To initialize and authenticate the API client, the following parameters need to be passed.

| Parameter | Type | Description |
|  --- | --- | --- |
| `oAuthAccessToken` | `String` | OAuth 2.0 Access Token |

The API client can be initialized as following.

```ruby
o_auth_access_token = 'OAuthAccessToken'

client = Releans.new(o_auth_access_token: o_auth_access_token)
```


## Authorizing your client

This API uses `OAuth 2 Bearer token`.


## API Reference

### List of APIs

* [BalanceController](#balancecontroller)
* [MessageController](#messagecontroller)
* [SenderController](#sendercontroller)

### `BalanceController`

#### Overview

##### Get singleton instance

The singleton instance of the `BalanceController` class can be accessed from the API Client.

```
balance_controller = client.balance
```

#### `get_balance`

Get your available balance

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_balance
```

##### Response Type

`String`

##### Example Usage

```ruby
result = balance_controller.get_balance()
```

##### Example Response

```
"{\"balance\":100}"
```

### `MessageController`

#### Overview

##### Get singleton instance

The singleton instance of the `MessageController` class can be accessed from the API Client.

```
message_controller = client.message
```

#### `create_send_sms_message`

Send a single message.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def create_send_sms_message(sender_id,
                                mobile_number,
                                message)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `senderId` | `String` | Required | Sender id to send the message from. |
| `mobileNumber` | `String` | Required | The mobile number supposed to receive the message. |
| `message` | `String` | Required | Message text. |

##### Response Type

`String`

##### Example Usage

```ruby
sender_id = 'senderId4'
mobile_number = 'mobileNumber8'
message = 'message0'

result = message_controller.create_send_sms_message(sender_id, mobile_number, message)
```

#### `get_all_messages`

List all messages sent by the account.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_all_messages
```

##### Response Type

`Mixed`

##### Example Usage

```ruby
result = message_controller.get_all_messages()
```

#### `get_price_of_message`

Return cost of sending a message to the number.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_price_of_message(mobile_number)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `mobileNumber` | `String` | Required | Mobile number you want to know the price of sending a message. |

##### Response Type

`String`

##### Example Usage

```ruby
mobile_number = 'mobileNumber8'

result = message_controller.get_price_of_message(mobile_number)
```

#### `get_view_message`

Return the details of the message.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_view_message(id)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Required | Id of the message you need to return its details. |

##### Response Type

`Mixed`

##### Example Usage

```ruby
id = 'id0'

result = message_controller.get_view_message(id)
```

### `SenderController`

#### Overview

##### Get singleton instance

The singleton instance of the `SenderController` class can be accessed from the API Client.

```
sender_controller = client.sender
```

#### `create_sender_name`

Create a new sender id to send messages using it

:information_source: **Note** This endpoint does not require authentication.

```ruby
def create_sender_name(sender_name)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `senderName` | `String` | Required | Name you want to register as Sender Name |

##### Response Type

`String`

##### Example Usage

```ruby
sender_name = 'senderName8'

result = sender_controller.create_sender_name(sender_name)
```

##### Example Response

```
"{\"id\": \"ABCDEF\"}"
```

#### `get_all_senders`

List all senders names associated with the account

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_all_senders
```

##### Response Type

`Mixed`

##### Example Usage

```ruby
result = sender_controller.get_all_senders()
```

##### Example Response

```
[
  {
    "id": "xEYgLPQZOpnel5aKBzyVXvAWJ",
    "senderName": "RELEANS",
    "phoneNumber": "+15105607102",
    "status": 1
  }
]
```

#### `get_sender_name_details`

Return the details of the sender name.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_sender_name_details(id)
```

##### Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Required | The sender id you want its details |

##### Response Type

`Mixed`

##### Example Usage

```ruby
id = 'id0'

result = sender_controller.get_sender_name_details(id)
```