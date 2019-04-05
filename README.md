# Getting started

The Releans SDK enables developers to use Releans Services in their code. You can get started in minutes.

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build releans_api.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install releans_api-1.1.0.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=Releans%20API-Ruby&workspaceName=Releans%20API-Ruby&projectName=releans_api&gemName=releans_api&gemVer=1.1.0)

## How to Use

The following section explains how to use the ReleansApi Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=Releans%20API-Ruby&workspaceName=ReleansApi&projectName=releans_api&gemName=releans_api&gemVer=1.1.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=Releans%20API-Ruby&workspaceName=ReleansApi&projectName=releans_api&gemName=releans_api&gemVer=1.1.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=Releans%20API-Ruby&workspaceName=ReleansApi&projectName=releans_api&gemName=releans_api&gemVer=1.1.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the ReleansApi gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'releans_api', '~> 1.1.0' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=Releans%20API-Ruby&workspaceName=ReleansApi&projectName=releans_api&gemName=releans_api&gemVer=1.1.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=Releans%20API-Ruby&workspaceName=ReleansApi&projectName=releans_api&gemName=releans_api&gemVer=1.1.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=Releans%20API-Ruby&workspaceName=ReleansApi&projectName=releans_api&gemName=releans_api&gemVer=1.1.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=Releans%20API-Ruby&workspaceName=ReleansApi&projectName=releans_api&gemName=releans_api&gemVer=1.1.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=Releans%20API-Ruby&workspaceName=ReleansApi&projectName=releans_api&gemName=releans_api&gemVer=1.1.0)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| o_auth_access_token | OAuth 2.0 Access Token |



API client can be initialized as following.

```ruby
# Configuration parameters and credentials
o_auth_access_token = 'o_auth_access_token' # OAuth 2.0 Access Token

client = ReleansApi::ReleansApiClient.new(
  o_auth_access_token: o_auth_access_token
)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=Releans%20API-Ruby&workspaceName=ReleansApi&projectName=releans_api&gemName=releans_api&gemVer=1.1.0&initLine=client%2520%253D%2520ReleansApiClient.new%2528%2527o_auth_access_token%2527%2529)



# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [MessageController](#message_controller)
* [SenderController](#sender_controller)
* [BalanceController](#balance_controller)

## <a name="message_controller"></a>![Class: ](https://apidocs.io/img/class.png ".MessageController") MessageController

### Get singleton instance

The singleton instance of the ``` MessageController ``` class can be accessed from the API Client.

```ruby
message_controller = client.message
```

### <a name="get_all_messages"></a>![Method: ](https://apidocs.io/img/method.png ".MessageController.get_all_messages") get_all_messages

> List all messages sent by the account.


```ruby
def get_all_messages(accept); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accept |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
accept = '*/*'

result = message_controller.get_all_messages(accept)

```


### <a name="get_view_message"></a>![Method: ](https://apidocs.io/img/method.png ".MessageController.get_view_message") get_view_message

> Return the details of the message.


```ruby
def get_view_message(id,
                         accept); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |
| accept |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = 'id'
accept = '*/*'

result = message_controller.get_view_message(id, accept)

```


### <a name="create_send_sms_message"></a>![Method: ](https://apidocs.io/img/method.png ".MessageController.create_send_sms_message") create_send_sms_message

> Send a single message.


```ruby
def create_send_sms_message(accept,
                                sender_id,
                                mobile_number,
                                message); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accept |  ``` Required ```  | TODO: Add a parameter description |
| sender_id |  ``` Required ```  | Sender id to send the message from. |
| mobile_number |  ``` Required ```  | The mobile number supposed to receive the message. |
| message |  ``` Required ```  | Message text. |


#### Example Usage

```ruby
accept = 'Accept'
sender_id = 'senderId'
mobile_number = 'mobileNumber'
message = 'message'

result = message_controller.create_send_sms_message(accept, sender_id, mobile_number, message)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="sender_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SenderController") SenderController

### Get singleton instance

The singleton instance of the ``` SenderController ``` class can be accessed from the API Client.

```ruby
sender_controller = client.sender
```

### <a name="get_sender_name_details"></a>![Method: ](https://apidocs.io/img/method.png ".SenderController.get_sender_name_details") get_sender_name_details

> Return the details of the sender name.


```ruby
def get_sender_name_details(id,
                                accept); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |
| accept |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = 'sender-id'
accept = '*/*'

result = sender_controller.get_sender_name_details(id, accept)

```


### <a name="create_sender_name"></a>![Method: ](https://apidocs.io/img/method.png ".SenderController.create_sender_name") create_sender_name

> Create a new sender id to send messages using it


```ruby
def create_sender_name(accept,
                           content_type,
                           body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accept |  ``` Required ```  | TODO: Add a parameter description |
| content_type |  ``` Required ```  | TODO: Add a parameter description |
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
accept = 'text/plain'
content_type = 'text/plain'
body = 'Your sender name'

result = sender_controller.create_sender_name(accept, content_type, body)

```


### <a name="get_all_senders"></a>![Method: ](https://apidocs.io/img/method.png ".SenderController.get_all_senders") get_all_senders

> List all senders names associated with the account


```ruby
def get_all_senders(accept); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accept |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
accept = '*/*'

result = sender_controller.get_all_senders(accept)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="balance_controller"></a>![Class: ](https://apidocs.io/img/class.png ".BalanceController") BalanceController

### Get singleton instance

The singleton instance of the ``` BalanceController ``` class can be accessed from the API Client.

```ruby
balance_controller = client.balance
```

### <a name="get_balance"></a>![Method: ](https://apidocs.io/img/method.png ".BalanceController.get_balance") get_balance

> Get your available balance


```ruby
def get_balance(accept); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accept |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
accept = 'text/plain'

result = balance_controller.get_balance(accept)

```


[Back to List of Controllers](#list_of_controllers)



