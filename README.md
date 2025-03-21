## 🚀 About Me
I'm a junior DevOps engineer with some expertise in BackEnd development using Java and Node.js; scripting skills with Python, Bash and JavaScript; besides CI/CD and cloud knowledge of AWS and Azure DevOps tools ...

<p align="center">
<img src="https://c4.wallpaperflare.com/wallpaper/694/164/1000/digital-art-animals-eagle-bird-of-prey-birds-hd-wallpaper-preview.jpg" alt="Logo" width="400" height="230">
</p>

![linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![javascript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
![nodejs](https://img.shields.io/badge/Node.js-43853D?style=for-the-badge&logo=node.js&logoColor=white)
![mysql](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)
![jenkins](https://img.shields.io/badge/Jenkins-D24939?style=for-the-badge&logo=Jenkins&logoColor=white)
![aws](https://img.shields.io/badge/Amazon_AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)
![azuredevops](https://img.shields.io/badge/Azure_DevOps-0078D7?style=for-the-badge&logo=azure-devops&logoColor=white)

## 🔗 Portfolio
[![portfolio](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/RecursiveDeveloper)
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/jhoan-jesus-ortiz-sandoval-a66152198/)

# Simple monitoring app

Set up your own local monitoring app running node.js server to register and gather metrics with prometheus and visualize them in grafana; using vagrant as your virtual environment manager.

![image](https://raw.githubusercontent.com/RecursiveDeveloper/static-media-content/refs/heads/main/Simple_monitoring_app.png)

## Tech Stack 

- **Client:** ---
- **Server:** Nodejs
- **Database:** ---
- **Cloud provider:** ---
- **Tools:** Vagrant, Prometheus, Grafana, Docker

## Installation

1. Install VirtualBox as your virtual machine provider [Install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. Install Vagrant according to your operating system [Install Vagrant
](https://developer.hashicorp.com/vagrant/downloads)

## Deployment

To deploy this project run

```bash
  vagrant up
```

If prometheus container fails during execution, ssh into vagrant and delete prometheus /data/chunks_head/ folder
```bash
  sudo rm -rf /opt/config/monitoring/prometheus_data/data/chunks_head/
```

For more informations about vagrant commands check [vagrant-cheat-sheet](https://gist.github.com/wpscholar/a49594e2e2b918f4d0c4)

## Authors

- [@RecursiveDeveloper](https://github.com/RecursiveDeveloper)


## License

[MIT](https://choosealicense.com/licenses/mit/)
