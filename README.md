# Number Theoretic Transform (NTT) Tutorial

This repository provides comprehensive resources for learning and demonstrating the **Number Theoretic Transform (NTT)**, a key mathematical technique widely used in cryptography, polynomial arithmetic, and signal processing.

## 📁 Repository Structure

`slides/`
Presentation slides (LaTeX Beamer) clearly illustrating the NTT concepts, ideal for talks, seminars, and workshops. The compiled PDF (`slides.pdf`) is provided for easy reference without needing LaTeX installed.

`examples/`
(In development) Python demonstrations and practical implementations of NTT algorithms, particularly focusing on polynomial multiplication applications.

`notes/`
(In development) Detailed mathematical notes and formal explanations in article format using LaTeX.

`books/`
(In development) Interactive learning resources structured as a Sphinx-based website with embedded interactive content and exercises.

`references/`
Centralized BibTeX references file for unified citation management.


## 🚀 Getting Started

To generate or update the materials, use the provided Makefile in the root directory:

```bash
make            # Compile all available resources
make slides     # Only compile the slides (PDF)
make clean      # Remove intermediate build files
```

The latest version of the compiled slides is always available at:

- [📥 Download slides.pdf](./slides.pdf)

## 🌟 Motivation and Goals

The goal of this tutorial is to provide an accessible, clear, and practical introduction to NTT, helping learners quickly grasp the underlying concepts and their practical usage.

We aim to make advanced mathematical concepts approachable, intuitive, and directly applicable through clear explanations and interactive demonstrations.

## 🔗 Related Projects

- **[RingFFT Python Package](https://github.com/RingFFT/RingFFT)**: A Python library offering efficient implementations of FFT-like algorithms, including Cooley-Tukey and Gentleman-Sande, suitable for rapid prototyping and experimentation.



