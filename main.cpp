#include <iostream>
#include <sstream>
#include "encoder.h"

using namespace std;

int main() {
    setlocale(LC_ALL, "ru_RU.UTF-8");

    wifstream file("text.txt");
    file.imbue(locale(locale(), new codecvt_utf8<wchar_t>())); // Устанавливаем UTF-8


    wstringstream buffer;
    buffer << file.rdbuf();

    wstring text = buffer.str();

    wstring s = generate(text);
    get_tree_by_wstring(s);

    wstring encoded = encode(text);
    wcout << encoded << "\n";

    wstring decoded = decode(encoded);
    wcout << decoded << "\n";
}
