R and Python
=

Will include some Python code.

<b>Installing Zips</b>

Some zips will fail when typing <code>require</code> because another package will be required to be installed.  This can be found under "Imports" with text highlighted in blue to indicate what needs to exist.  Usually the error, "there is no package" will indicate this problem.

<b>To Connect To SQL Server</b>

1.  Download the RODBC package from this link: http://cran.r-project.org/web/packages/RODBC/index.html

2.  In the RGui, click on "Packages" from the menu and from there select "Install package(s) from local zip files ..."

3.  Locate and select the downloaded zip file.

4.  From there, use the following code:

  <code>require(RODBC)</code>
