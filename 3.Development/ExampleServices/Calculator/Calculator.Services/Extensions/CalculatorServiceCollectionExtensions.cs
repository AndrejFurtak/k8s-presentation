namespace Microsoft.Extensions.DependencyInjection
{
    public static class CalculatorServiceCollectionExtensions
    {
        public static IServiceCollection AddCalculator(
            this IServiceCollection services)
        {
            services.AddScoped<Calculator.Services.ICalculator, Calculator.Services.Calculator>();

            return services;
        }
    }
}
