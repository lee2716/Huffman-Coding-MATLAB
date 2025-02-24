# Digital Source Coding and Signal Processing

This repository contains MATLAB implementations related to **digital source coding** and **signal processing**, focusing on **Huffman coding** and related topics studied in the course.

## Course Topics Covered:

### 1. Information Sources and Their Measures
- Definition and properties of **information sources**
- **Entropy calculation** for discrete sources
- **Source coding theorem** and its implications

### 2. Huffman Coding (Source Coding)
- **Huffman coding algorithm** for efficient lossless compression
- First-order, second-order, and third-order **expanded source coding**
- Calculation of:
  - **Entropy (H)**
  - **Average code length (L_avg)**
  - **Coding efficiency (η)**

### 3. Channel Capacity and Coding
- **Shannon's theorem** on channel capacity
- **Error correction coding** techniques
- Comparison of **coded vs. uncoded transmission**

### 4. Modulation Techniques
- **Amplitude Shift Keying (ASK)**
- **Quadrature Amplitude Modulation (QAM)**
- **Pulse Amplitude Modulation (PAM)**
- **Modulation efficiency** and signal constellation analysis

### 5. Filtering in Digital Communications
- **Finite Impulse Response (FIR) filters**
- **Low-pass and band-pass filter design**
- **Noise filtering** and signal enhancement

## Implementation in MATLAB:
This repository includes a MATLAB script implementing **Huffman source coding**, which:
1. **Takes a probability distribution** of a discrete source as input.
2. **Generates Huffman codes** for first, second, and third-order expanded sources.
3. **Calculates entropy, average code length, and coding efficiency**.
4. **Displays the generated codewords** and performance metrics.

## Dependencies:
- MATLAB (R2020a or later recommended)
- Signal Processing Toolbox
- Communication System Toolbox

## License:
This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.
