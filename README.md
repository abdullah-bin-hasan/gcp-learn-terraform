Use the client libraries to access BigQuery using a service account
In this section, you query the BigQuery public datasets from an instance with the help of a service account that has the necessary roles.

Create a service account
First create a new service account from the console.

Go to Navigation menu > IAM & Admin, select Service accounts and click on + Create Service Account.

Fill necessary details with:

Service account name: bigquery-qwiklab
Now click Create and Continue and then add the following roles:
Role: Bigquery > BigQuery Data Viewer and BigQuery > BigQuery User
Your console should resemble the following:

Create service account tabbed page

Click Continue and then click Done.
Create a VM instance
In the console, go to Compute Engine > VM Instances, and click Create Instance.

Create your VM with the following information:

Configuration	Value
Name	bigquery-instance
Region	us-central1
Zone	us-central1-a
Series	E2
Machine Type	e2-medium
Boot Disk	Debian GNU/Linux 11 (bullseye) x86/64
Service account	bigquery-qwiklab
Note: If the `bigquery-qwiklab` service account doesn't appear in the drop-down list, try typing the name into the "Filter" section.
Click Create.
Put the example code on a Compute Engine instance
In the console, go to Compute Engine > VM Instances.
SSH into bigquery-instance by clicking on the SSH button.
Note: While connecting to SSH, you can click on Connect without Identity-Aware Proxy.
In the SSH window, install the necessary dependencies by running the following commands:

sudo apt-get update
Copied!
sudo apt-get install -y git python3-pip
Copied!
pip3 install --upgrade pip
Copied!
pip3 install google-cloud-bigquery
Copied!
pip3 install pyarrow
Copied!
pip3 install pandas
Copied!
pip3 install db-dtypes
Copied!
Now create the Python file: