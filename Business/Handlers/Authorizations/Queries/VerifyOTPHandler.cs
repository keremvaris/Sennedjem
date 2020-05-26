using Business.Services.Authentication;
using Core.Utilities.Results;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Authorizations.Queries
{

    public class VerifyOTPHandler : IRequestHandler<VerifyOTPCommand, IDataResult<SFwToken>>
    {
        private readonly IAuthenticationCoordinator coordinator;

        public VerifyOTPHandler(IAuthenticationCoordinator coordinator)
        {
            this.coordinator = coordinator;
        }

        /// <summary>
        /// User Login Handler sınıfıdır. Aspectler bu metodun üzerinde kullanılır.
        /// Bir kullanıcının sisteme login olmasını sağlar geriye browser local storageda saklanan bir token döner 
        /// </summary>
        /// <param name="request"></param>
        /// <param name="cancellationToken"></param>
        /// <returns></returns>
        // [LogAspect(typeof(FileLogger))]
        public async Task<IDataResult<SFwToken>> Handle(VerifyOTPCommand request, CancellationToken cancellationToken)
        {
            // Uygun providerı al ve login ol.
            var provider = coordinator.SelectProvider(request.Provider);
            return await provider.Verify(request);
        }
    }
}
