using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business
{
	public class ConfigurationManager
	{
		public ApplicationMode Mode { get; private set; }

		public ConfigurationManager(IConfiguration configuration, IHostEnvironment env)
		{
			// Enumlarda bildiğimiz bir moda parse edilemiyorsa hata çıkar.
			Mode = (ApplicationMode)Enum.Parse(typeof(ApplicationMode), env.EnvironmentName);
		}
	}

	public enum ApplicationMode
	{
		Development,
		Profiling,
		Staging,
		Production,
	}

}
