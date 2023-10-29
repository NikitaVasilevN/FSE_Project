#include <iostream>
#include <vector>
#include <algorithm>
#include <limits>
#include <string>
#include <fstream>

// Clear the input stream
void clear_cin() {
    std::cin.clear();
    std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
}

// Safe input function for number of integers
bool safe_input(int &n) {
    if (std::cin >> n) {
        clear_cin();  // Clear the buffer after reading the integer.
        return true;
    }
    clear_cin();
    return false;
}

// Safe input function for individual integers
bool safe_input_one_number(int &n) {
    std::string line;
    std::getline(std::cin, line);

    // Check if the line has any spaces or non-integer characters
    size_t spacePos = line.find(' ');
    if (spacePos != std::string::npos) {
        return false;
    }

    try {
        n = std::stoi(line);
        return true;
    } catch (const std::exception&) {
        return false;
    }
}

int gcd(int a, int b) {
    a = std::abs(a);
    b = std::abs(b);
    while (b) {
        a %= b;
        std::swap(a, b);
    }
    return a;
}

int gcd_of_list(const std::vector<int>& numbers) {
    int result = numbers[0];
    for (int num : numbers) {
        result = gcd(result, num);
    }
    return result;
}

int lcm(int a, int b) {
    a = std::abs(a);
    b = std::abs(b);
    return a / gcd(a, b) * b;
}

int lcm_of_list(const std::vector<int>& numbers) {
    int result = numbers[0];
    for (int num : numbers) {
        result = lcm(result, num);
    }
    return result;
}

int find_max(const std::vector<int>& numbers) {
    return *std::max_element(numbers.begin(), numbers.end());
}

int find_min(const std::vector<int>& numbers) {
    return *std::min_element(numbers.begin(), numbers.end());
}

double find_average(const std::vector<int>& numbers) {
    double sum = 0;
    for (int num : numbers) {
        sum += num;
    }
    return sum / numbers.size();
}

double find_median(std::vector<int>& numbers) {
    std::sort(numbers.begin(), numbers.end());
    int n = numbers.size();
    if (n % 2 == 0) {
        return (numbers[n/2 - 1] + numbers[n/2]) / 2.0;
    } else {
        return numbers[n/2];
    }
}

int main() {
    int n;

    while (true) {
        std::cout << "Enter the number of integers: ";
        if (safe_input(n) && n > 0) {
            break;
        }
        std::cout << "Please enter a positive integer for the number of values.\n";
    }

    std::vector<int> numbers(n);
    std::cout << "Enter the numbers:\n";

    for (int i = 0; i < n; ++i) {
        while (true) {
            std::cout << "Enter number " << (i + 1) << ": ";
            int num;
            if (safe_input_one_number(num)) {
                numbers[i] = num;
                break;
            }
            std::cout << "Invalid input. Please enter only one valid integer.\n";
        }
    }

    // Output the results directly to the console instead of a file
    std::cout << "Maximum value: " << find_max(numbers) << std::endl;
    std::cout << "Minimum value: " << find_min(numbers) << std::endl;
    std::cout << "Average: " << find_average(numbers) << std::endl;
    std::cout << "Median: " << find_median(numbers) << std::endl;
    std::cout << "GCD of the list: " << gcd_of_list(numbers) << std::endl;
    std::cout << "LCM of the list: " << lcm_of_list(numbers) << std::endl;

    return 0;
}
