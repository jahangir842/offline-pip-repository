## Setting Up an Offline PIP Repository on Ubuntu

---

### Step 1: Installation of PIP

   - Install PIP through [Miniconda](https://docs.anaconda.com/free/miniconda/index.html).
   - You can also install on linux with following command:

```
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm ~/miniconda3/miniconda.sh
```

   - Verify Installation of pip

   ```bash
   pip --version
   ```

---

### Step 2: Downloading Python Packages

To download and install Python packages specified in a `requirements.txt` file using `pip` on Ubuntu, follow these steps:

#### Prepare the `requirements.txt` File

1. **Navigate to Your Project Directory:**
   Open a terminal and change to the directory containing your `requirements.txt` file using the `cd` command. Execute the following commands:
   ```bash
   mkdir packages
   cd packages
   nano requirements.txt
   ```

2. **Add Package Names:**
   Write the names of the packages you want to download in the `requirements.txt` file. For example:
   ```
   pandas
   numpy
   flask
   requests
   joblib
   pluggy
   six
   tomli
   pyparsing
   pytz
   tzdata
   packaging
   wheel
   ```

#### Method 1: Download the Packages with Requirement File

Run the following command to download the specified packages:
```bash
pip download --no-binary :all: -r requirements.txt
```

#### Method 2: Download a Single Package

Run the following command to download the specified package e.g requests:
```bash
pip download --no-binary :all: -r requests
```


#### Setting Up the Server with Local Network

   - Connect the PC to the Local Network.
   - Configure the IP address accordingly.
   - Start a Simple HTTP Server with following command.

   ```bash
   python -m http.server 8000 --bind 192.168.1.102
   ```

---

## Step 3: Installing Python Packages on the Client Side via pip

#### Prerequisites:
- Ensure `pip` is installed.

#### Verify pip Installation

To check if pip is installed on Ubuntu, run:
```bash
pip --version
```

#### Update pip if needed

Make sure you have the latest version of pip by running:
```bash
pip install --upgrade pip
```

#### Check Python Version

You can verify your Python installation with:
```bash
python --version
```

### Installation Options

**Option 1: Install Libraries Directly**

Open a terminal and run the following command to install a specific library, such as `pandas`:
```bash
pip install --no-index --find-links=http://192.168.1.100:8000 --trusted-host 192.168.1.100 pandas
```

**Option 2: Install from `requirements.txt`**

Create a new `requirements.txt` file and list the libraries you need. Then run:
```bash
pip install --no-index --find-links=http://192.168.1.102:8000 --trusted-host 192.168.1.102 -r requirements.txt
```

### Successfully Installed Libraries

After completing the installation, you should see the following libraries installed successfully:
- requests
- joblib
- pluggy
- six
- tomli
- pyparsing
- pytz
- tzdata
- packaging
- wheel

--- 
