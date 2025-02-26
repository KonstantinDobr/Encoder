#include <iostream>
#include "encoder.h"

using namespace std;

int main() {
    wstring text;
    wcin >> text;

    wstring s = generate(text);
    get_tree_by_wstring(s);

    wstring to_encode;
    wcin >> to_encode;
    wstring encoded = encode(to_encode);
    wcout << encoded << "\n";

    wstring decoded = decode(encoded);
    wcout << decoded << "\n";
}
