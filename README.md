# Media Scheduler

![C++](https://img.shields.io/badge/C%2B%2B-17/20-blue)
![Build Status](https://img.shields.io/badge/Build-Passing-brightgreen)
![License](https://img.shields.io/badge/License-AS--IS-lightgrey)

**High-performance C++ backend application for recording, scheduling, and reviewing NDI® signals on Windows.**

---

## 🚀 Quick Overview

**Media Scheduler** allows you to:

- Record NDI® signals
- Schedule events for specific NDI sources
- Review recordings with the built-in media player

> **Quick Start:** Download the installer from [GitHub Releases](#) and start scheduling NDI recordings immediately.

### Key Workflow

1. Select the NDI source you want to record
2. Schedule an event for each source
3. Run the scheduled events list
4. NDI sources are recorded automatically
5. Review recordings using the media player

### Built-in Tools

- **AV Monitor** – monitor live NDI streams
- **NDI Test Signal Generator** – simulate NDI signals
- **Video Player** – playback recorded NDI streams (MP4 integration)
- **Performance Dashboard** – monitor **CPU load, memory usage, and available storage**

---

## 🧠 Architecture & Pipeline

Media Scheduler uses the **Facade pattern** to decouple the NDI SDK from the core engine.

![Media Scheduler Pipeline](docs/media_scheduler_pipeline.svg)

**Modules at a glance:**

| Module                   | Description                                                                 |
|---------------------------|-----------------------------------------------------------------------------|
| `Core`                    | NDI abstraction, signal processing engine                                   |
| `Facade`                  | Interface layer to NDI SDK                                                  |
| `Buffer Manager`          | Efficient buffer handling, minimal copies, real-time safe                  |
| `Recorder`                | Disk I/O for NDI signal streams                                             |
| `Playback`                | Playback of recorded streams (MP4 integration)                              |
| `Test Signal Generator`   | Generate synthetic NDI signals                                              |
| `AV Monitor`              | Monitor live NDI sources                                                    |
| `Performance Dashboard`   | Monitor CPU load, memory usage, and available storage                       |

---

## 🛠️ Build & Run (Windows, MinGW)

**Prerequisites:**

- **NDI SDK:** [https://ndi.video/for-developers/ndi-sdk/](https://ndi.video/for-developers/ndi-sdk/)
- Qt 5/6 installed (MinGW version recommended)
- MinGW compiler installed (project is compiled with MinGW for portability)

### Build from source (optional)

```powershell
mkdir build
cd build
cmake .. -G "MinGW Makefiles"
mingw32-make -j
```

Executable will be in the `Release` folder.

### Using the installer (recommended)

- Download the installer from **GitHub Releases**: `Media Scheduler-1.0-beta1-Setup.exe`
- The installer sets up the application and all required NDI runtime files in:

```
C:\Program Files (x86)\Media Scheduler\
```

- Launch via Start Menu shortcut or directly from the installed folder.

> **Tip:** For first-time users, run the app as administrator to avoid permission issues with NDI runtime installation.

---

## 📷 Demo & Documentation

- Installer includes the **full Media Scheduler manual**, accessible directly from the app.
- Manual is a self-contained HTML file (`index.html`) with screenshots and explanatory text.
- No internet connection required to access the manual.

> **Tip:** Check the manual for step-by-step scheduling examples and pipeline explanation.

---

## ⚙️ NDI Integration (Legal Notice)

- Media Scheduler uses **NDI SDK** (Vizrt) via **Facade pattern**, decoupling the proprietary SDK.
- NDI® is a registered trademark of Vizrt NDI AB. [https://ndi.video/](https://ndi.video/)
- Using included DLLs implies acceptance of the **NDI EULA**.
- Only headers and dynamic loading are included in the repo; proprietary binaries are included in the installer uploaded to **GitHub Releases**.

---

## 🧪 Features

- Real-time NDI signal recording & playback
- Event scheduling for NDI sources
- Built-in AV Monitor & Performance Dashboard (**CPU, memory, storage**)
- Dynamic test signal generation
- Low-level memory and buffer management
- Multithreading & concurrency support
- MP4 playback integration

---

## 📌 Highlights for Recruiters

- **Backend & Low-Level Expertise:** Efficient memory management, multithreaded processing
- **Architectural Skills:** Facade pattern for decoupling SDK
- **Performance & Real-Time Systems:** Minimal-copy buffers, low-latency pipeline
- **Modern C++ Practices:** Smart pointers, RAII, modular design, unit tests
- **Full-System Application:** Scheduling, recording, playback, monitoring, test signal generation
- **Professional Documentation:** Manual accessible from the app

> **Quick Insight:** Recruiters can run the installer and see the full pipeline and dashboard in action immediately.

---

## 📄 License

**Media Scheduler:** Provided "AS IS" with **NO WARRANTY**.

NDI® runtime and SDK are provided by **Vizrt**, included according to [NDI SDK License](https://ndi.video/).

---

## 📫 Contact

- LinkedIn: <your-linkedin>
- Email: <your-email>

⭐ Open to collaborations in **high-performance C++ backend, low-level systems