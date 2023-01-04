using System;
using NUnit.Framework;
using Xamarin.UITest;

namespace UITestSample.Test
{
	public abstract class UITest
	{
        protected IApp app;

        [SetUp]
		public void SetUp()
		{
			app = ConfigureApp
				.Android
				.PreferIdeSettings()
				.StartApp();
		}
	}
}

