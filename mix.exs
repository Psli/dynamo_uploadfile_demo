defmodule DynamoUploadfileDemo.Mixfile do
  use Mix.Project

  def project do
    [ app: :dynamo_uploadfile_demo,
      version: "0.0.1",
      compile_path: "ebin/#{Mix.env}",
      prepare_task: "dynamo.start",
      dynamos: [DynamoUploadfileDemo],
      compilers: [:elixir, :dynamo, :app],
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    []
  end

  defp deps do
    [ { :ranch, %r(.*), github: "extend/ranch" },
      { :cowboy, %r(.*), github: "extend/cowboy" },
      { :dynamo, "0.1.0.dev", github: "josevalim/dynamo" } ]
  end
end
