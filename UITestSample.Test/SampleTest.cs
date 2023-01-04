using System;
using NUnit.Framework;

namespace UITestSample.Test
{
	[TestFixture]
	public class SampleTest : UITest
	{
		[Test]
		public void FirstScreenShouldShowWelcomeText()
		{
			app.WaitForElement("Welcome to the Sample App!");
		}
	}
}

