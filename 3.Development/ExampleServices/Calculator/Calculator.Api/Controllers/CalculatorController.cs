using Calculator.Api.Models.Calculator;
using Calculator.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace Calculator.Api.Controllers
{
    [ApiController]
    [Route("api/v1/calculator")]
    public class CalculatorController 
        : ControllerBase
    {
        private readonly ICalculator _calculator;
        private readonly ILogger _logger;

        public CalculatorController(
            ICalculator calculator,
            ILogger<CalculatorController> logger)
        {
            _calculator = calculator;
            _logger = logger;
        }

        [HttpGet("add")]
        public ActionResult<AddResponse> Add(
            [FromQuery] AddRequest model)
        {
            _logger.LogDebug($"{nameof(CalculatorController)}.{nameof(CalculatorController.Add)} called.");

            return Ok(new AddResponse
            {
                Result = _calculator.Add(model.A, model.B)
            });
        }

        [HttpGet("subtract")]
        public ActionResult<SubtractResponse> Subtract(
            [FromQuery] SubtractRequest model)
        {
            _logger.LogDebug($"{nameof(CalculatorController)}.{nameof(CalculatorController.Subtract)} called.");

            return Ok(new SubtractResponse
            {
                Result = _calculator.Subtract(model.A, model.B)
            });
        }
    }
}
