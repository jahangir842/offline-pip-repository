**Setting Up an Offline PIP Repository on Ubuntu**

### Prerequisites

1. **Install VirtualBox:**

   First, update your system and install VirtualBox using the following commands:

   ```bash
   sudo apt-get update
   sudo apt-get install virtualbox
   ```

2. **Set Up Virtual Machines:**

   - Create virtual machines on VirtualBox to act as clients.
   - Install Miniconda on both machines. You can find the Miniconda installation guide [here](https://docs.anaconda.com/free/miniconda/index.html).

### Step 1: Install Miniconda

   - Visit the link provided above to download Miniconda.
   - From the terminal, download and install Miniconda by following the on-screen instructions:
     - Accept the license agreement.
     - Choose the installation location (press Enter to accept the default).
     - Type 'yes' to initialize Miniconda.

### Step 2: Verify Installation of Miniconda and PIP

   - Open a new terminal or command prompt and run the following commands to verify the installation:

   ```bash
   conda --version
   pip --version
   ```

   This will display the installed versions of Miniconda and PIP.

### Setting Up the Offline PIP Repository

1. **Create a Directory for Python Packages:**

   - Navigate to your project directory:

   ```bash
   cd /path/to/your/project
   ```

   - Create a directory for the packages and create a `requirements.txt` file:

   ```bash
   mkdir packages
   cd packages
   nano requirements.txt
   ```

2. **Specify Required Python Packages:**

   - Add the names of the required packages (e.g., numpy, flask) to the `requirements.txt` file. For example:

   ```
   pandas
   numpy
   flask
   ```

3. **Download Python Packages:**

   - Download the specified packages using the following command:

   ```bash
   pip download --no-binary :all: -r requirements.txt
   ```

   - Verify the downloaded packages:

   ```bash
   ls
   ```

### Making the PIP Repository Available Offline

1. **Connect to the Required Network:**

   - Ensure the client machine is connected to the required network.

### Installing Python Packages on the Client End

1. **Update PIP:**

   - Ensure you have the latest version of pip by running:

   ```bash
   pip install --upgrade pip
   ```

2. **Use the Correct Python Interpreter:**

   - For Python 3, use `pip3` instead of `pip`.

3. **Install Packages from the Offline Repository:**

   - Create a new `requirements.txt` file on the client machine.
   - Run the following command to install the packages from the offline repository:

   ```bash
   sudo pip install --no-index --find-links=/home/adminit/packages -r requirements.txt
   ```
