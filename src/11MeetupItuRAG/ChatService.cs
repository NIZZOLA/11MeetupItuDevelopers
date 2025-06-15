using Azure.AI.OpenAI.Chat;
using Azure.AI.OpenAI;
using OpenAI.Chat;
using System.ClientModel;

namespace _11MeetupItu;
public class ChatService
{
    private ChatServiceOptions _options;
    private readonly string _systemInput = "Você é um assistente de IA que ajuda as pessoas a encontrar informações.";
    public ChatService(ChatServiceOptions options)
    {
            _options = options ?? throw new ArgumentNullException(nameof(options));
    }
    public void ChatRag(string userQuestion)
    {
        
#pragma warning disable AOAI001
        
        var azureClient = new AzureOpenAIClient(new Uri(_options.OpenAiEndpointUrl), new ApiKeyCredential(_options.OpenAiApiKey));

        ChatClient chatClient = azureClient.GetChatClient(_options.OpenAiDeploymentName);
        Console.WriteLine("Calling OpenAI Service");
        ChatCompletionOptions options = new();
        options.AddDataSource(new AzureSearchChatDataSource()
        {
            Endpoint = new Uri(_options.AISearchEndpoint),
            IndexName = _options.AISearchIndex,
            Authentication = DataSourceAuthentication.FromApiKey(_options.AISearchKey),
        });

        ChatCompletion completion = chatClient.CompleteChat(
             [
                 new SystemChatMessage(_systemInput),
                 new UserChatMessage(userQuestion),
            ],
        options);

        var chatResponse = completion.Content.Last().Text;

        Console.WriteLine(chatResponse);
        Console.WriteLine("Press an key to continue with RAG enabled...");
        Console.ReadKey();

        ChatMessageContext onYourDataContext = completion.GetMessageContext();
        Console.WriteLine("INTENT AND CITATIONS FROM ON YOUR DATA CONTEXT:");
        if (onYourDataContext?.Intent is not null)
        {
            Console.WriteLine($"Intent: {onYourDataContext.Intent}");
        }
        Console.WriteLine("Press an key to continue with RAG enabled...");
        Console.ReadKey();
        Console.WriteLine("Citations from ON YOUR DATA CONTEXT:");
        foreach (ChatCitation citation in onYourDataContext?.Citations ?? [])
        {
            Console.WriteLine($"Citation: {citation.Content}");
        }
    }

    public async Task ChatSimple(string question)
    {
        var client = new AzureOpenAIClient(new Uri(_options.OpenAiEndpointUrl), new ApiKeyCredential(_options.OpenAiApiKey));
        var chatClient = client.GetChatClient(_options.OpenAiDeploymentName);
        var messages = new List<ChatMessage>();
        messages.Add(new SystemChatMessage(_systemInput));
        messages.Add(new UserChatMessage(question));
        Console.WriteLine("Calling OpenAI Service");
        var response = await chatClient.CompleteChatAsync(messages, new ChatCompletionOptions()
        {
            Temperature = (float)0.7,
            FrequencyPenalty = (float)0,
            PresencePenalty = (float)0,
        });
        var chatResponse = response.Value.Content.Last().Text;

        Console.WriteLine(chatResponse);

    }
}
