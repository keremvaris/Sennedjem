using Business.Constants;
using Core.Aspects.Autofac.Logging;
using Core.CrossCuttingConcerns.Logging.NLog.Loggers;
using Core.Entities.Concrete;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.OperationClaims.Commands
{
	public class CreateOperationClaimCommand : IRequest<IResult>
	{
		public string ClaimName { get; set; }

		public class CreateOperationClaimCommandHandler : IRequestHandler<CreateOperationClaimCommand, IResult>
		{
			private readonly IOperationClaimDal _operationClaimDal;

			public CreateOperationClaimCommandHandler(IOperationClaimDal operationClaimDal)
			{
				_operationClaimDal = operationClaimDal;
			}

			[LogAspect(typeof(FileLogger))]
			public async Task<IResult> Handle(CreateOperationClaimCommand request, CancellationToken cancellationToken)
			{
				if (IsClaimExists(request.ClaimName))
					return new ErrorResult(Messages.OperationClaimExists);

				var operationClaim = new OperationClaim
				{
					Name = request.ClaimName
				};
				_operationClaimDal.AddAsync(operationClaim).Wait();

				return new SuccessResult(Messages.OperationClaimAdded);
			}
			private bool IsClaimExists(string claimName)
			{
				return _operationClaimDal.Get(x => x.Name == claimName) is null ? false : true;
			}
		}
	}
}
