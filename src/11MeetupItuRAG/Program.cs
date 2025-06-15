// Install the .NET library via NuGet: dotnet add package Azure.AI.OpenAI --prerelease
using _11MeetupItu;
using Microsoft.Extensions.Configuration;

var configuration = new ConfigurationBuilder()
            .SetBasePath(Directory.GetCurrentDirectory())
            .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)
            .Build();

// Mapeia as configurações para a classe ChatOptions
var chatOptions = configuration.GetSection("ChatOptions").Get<ChatServiceOptions>();

var service = new ChatService(chatOptions);

Console.Clear();
Console.WriteLine("Digite sua pergunta: ");
var question = Console.ReadLine();

   await service.ChatSimple(question);

Console.WriteLine("Press any key to ...");
Console.ReadKey();

service.ChatRag(question);