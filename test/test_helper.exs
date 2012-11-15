Dynamo.under_test(DynamoUploadfileDemo)
ExUnit.start

# Enable reloading in each ExUnit process
ExUnit.after_spawn fn ->
  Dynamo.Reloader.enable
end
