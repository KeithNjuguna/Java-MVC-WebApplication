1. **Open Eclipse**  
   Ensure Eclipse IDE for Enterprise Java Developers is installed.

2. **Import the Maven Project**  
   - Go to **File** > **Import**.  
   - Select **Existing Maven Projects** under **Maven** and click **Next**.  
   - Click **Browse**, navigate to your project folder, and select it.  
   - Ensure the `pom.xml` file is detected, then click **Finish**.

3. **Resolve Dependencies**  
   - Right-click the project > **Maven** > **Update Project** (`Alt+F5`).  
   - Ensure all dependencies are downloaded correctly.

4. **Configure Tomcat**  
   - Go to **Window** > **Show View** > **Servers**.  
   - Right-click inside the **Servers** tab > **New** > **Server**.  
   - Select **Apache Tomcat** (ensure the correct version is installed).  
   - Set the Tomcat installation directory and click **Finish**.  
   - Right-click the server > **Add and Remove** > Move your project to **Configured**.

5. **Run the Application**  
   - Right-click the project > **Run As** > **Run on Server**.  
   - Select **Tomcat** and click **Finish**.  
   - Open a browser and go to `http://localhost:8080/your-app-name`.

Remember to also create the database and add the appropriate password to mysql database
