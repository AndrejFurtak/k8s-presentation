using Calculator.Api.Models.Calculator;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace Calculator.Api.Controllers
{
    [ApiController]
    [Route("api/v1/calculator")]
    public class CalculatorController 
        : ControllerBase
    {
        private readonly ILogger _logger;

        public CalculatorController(
            ILogger<CalculatorController> logger)
        {
            _logger = logger;
        }

        [HttpGet("add")]
        public ActionResult<AddResponse> Add(
            [FromQuery] AddRequest model)
        {
            _logger.LogDebug($"{nameof(CalculatorController)}.{nameof(CalculatorController.Add)} called.");

            return Ok(new AddResponse
            {
                Result = model.A + model.B
            });
        }

        [HttpGet("subtract")]
        public ActionResult<SubtractResponse> Subtract(
            [FromQuery] SubtractRequest model)
        {
            _logger.LogDebug($"{nameof(CalculatorController)}.{nameof(CalculatorController.Subtract)} called.");

            return Ok(new SubtractResponse
            {
                Result = model.A - model.B
            });
        }
    }
}
