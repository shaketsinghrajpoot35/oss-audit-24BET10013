# OSS Audit Project — Shell Scripts
## Open-Source Software Course (OSS NGMC)
### Chosen Software: Python | License: PSF License

---

## 📁 Files in This Folder

| File | Description |
|------|-------------|
| `script1.sh` | System Identity Report |
| `script2.sh` | Package Inspector |
| `script3.sh` | Python Environment Inspector |
| `script4.sh` | Log File Analyzer |
| `script5.sh` | Open Source Manifesto Generator |
| `README.md` | This file |

---

## ⚙️ SETUP — Before Running Scripts

### Step 1: Open Ubuntu Terminal (WSL2 or native Linux)

### Step 2: Make all scripts executable
```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

### Step 3: Edit your personal details in each script
Open each script and replace:
- `[YOUR NAME]` → Apna naam likho
- `[YOUR REG NO]` → Apna registration number likho

```bash
nano script1.sh
# Replace [YOUR NAME] and [YOUR REG NO], then Ctrl+X → Y → Enter to save
```
Repeat for all 5 scripts.

---

## ▶️ HOW TO RUN EACH SCRIPT

### Script 1 — System Identity Report
```bash
./script1.sh
```
**What it does:** Apka system info dikhata hai — OS, kernel, username, Python path, version.
**Take screenshot of output.**

---

### Script 2 — Package Inspector
```bash
./script2.sh
```
**What it does:** Check karta hai kaunse packages installed hain (python3, pip, git, etc.)
**Take screenshot of output.**

---

### Script 3 — Python Environment Inspector
```bash
./script3.sh
```
**What it does:** Python binary, pip version, installed packages aur key directories dikhata hai.
**Take screenshot of output.**

---

### Script 4 — Log File Analyzer
```bash
./script4.sh
```
**What it does:** `/var/log/dpkg.log` mein "python" keyword search karta hai, matches count karta hai.
**Note:** Sudo ki zaroorat nahi. If permission error aaye:
```bash
sudo ./script4.sh
```
**Take screenshot of output.**

---

### Script 5 — Open Source Manifesto Generator (Interactive)
```bash
./script5.sh
```
**What it does:** 3 questions poochta hai, phir ek personalised manifesto file banata hai.
**When prompted:**
1. Enter karo ek open-source tool ka naam (e.g., `Python`)
2. Enter karo freedom ka ek word (e.g., `choice`)
3. Enter karo kuch jo tum banake share karoge (e.g., `a learning app`)

**Output file:** `manifesto_[yourusername].txt` current folder mein save hogi.
**Take 2 screenshots:** one of the questions, one of the manifesto output.

---

## 📸 Screenshots Checklist

| # | What to Screenshot | Script |
|---|-------------------|--------|
| Figure 1 | sudo apt install python3 + python3 --version + which python3 | Manual command |
| Figure 2 | Script 1 full output | script1.sh |
| Figure 3 | Script 2 full output | script2.sh |
| Figure 4 | Script 3 full output | script3.sh |
| Figure 5 | Script 4 full output (log matches + summary) | script4.sh |
| Figure 6 | Script 5 — questions being answered | script5.sh |
| Figure 7 | Script 5 — full manifesto output | script5.sh |

---

## 🔧 Troubleshooting

| Problem | Solution |
|---------|----------|
| `Permission denied` | Run `chmod +x scriptX.sh` |
| `python3: command not found` | Run `sudo apt install python3 -y` |
| `pip3: command not found` | Run `sudo apt install python3-pip -y` |
| Script 4 log not found | Run `sudo ./script4.sh` |
| WSL not installed | Enable WSL2 from Windows features, install Ubuntu from Microsoft Store |

---

## 📝 Important Note

Before submitting your report, replace all placeholder text:
- `[YOUR NAME]` → Your actual name
- `[YOUR REG NO]` → Your registration number  
- `[YOUR SLOT]` → Your slot (e.g., B22)

---

*OSS Audit Project | Open-Source Software Course (OSS NGMC)*
