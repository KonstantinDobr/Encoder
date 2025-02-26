#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <algorithm>

#include <fstream>
#include <string>
#include <clocale>
#include <codecvt>

#include "generator.h"

using namespace std;

map<wchar_t, wstring> table;
node* root = new node;

map<wchar_t, wstring> get_tree_by_wstring(const wstring& base) {
    root->symbol = base[0];
    vector<node*> qu = {root};

    for (int i = 1, cur = 0; i < base.size(); i += 2, ++cur) {
        qu[cur]->l = new node;
        qu[cur]->l->symbol = base[i];
        if (base[i] == L'§') {
            qu.push_back(qu[cur]->l);
        }

        qu[cur]->r = new node;
        qu[cur]->r->symbol = base[i + 1];
        if (base[i + 1] == L'§') {
            qu.push_back(qu[cur]->r);
        }
    }

    dfs(root, L"", table);
    if (root->symbol != L'§') {
        wcout << L"0\n";
        table[root->symbol] = L"0";
    }
    return table;
}

wstring encode(const wstring& text) {
    wstring result;
    for (wchar_t c : text) result += table[c];
    return result;
}

wstring decode(const wstring& text) {
    wstring result;
    node* cur = root;
    for (int c : text) {
        if (c == L'0') {
            cur = cur->l;
        } else {
            cur = cur->r;
        }

        if (cur->symbol != L'§') {
            result += cur->symbol;
            cur = root;
        }
    }

    return result;
}