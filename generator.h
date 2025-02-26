#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <algorithm>

#include <fstream>
#include <string>
#include <clocale>
#include <codecvt>

using namespace std;

const int maxN = 10'000;

struct node {
    wchar_t symbol;
    int cnt;

    node* l = nullptr;
    node* r = nullptr;
};

void dfs(node* v, const wstring& code, map<wchar_t, wstring>& table) {
    if (v->symbol != '$') {
        wcout << v->symbol << L" " << code << "\n";
        table[v->symbol] = code;
        return;
    }

    dfs(v->l, code + L"0", table);
    dfs(v->r, code + L"1", table);
}


void bfs(node* root, wstring& result) {
    vector<node*> que = {root};
    for (int i = 0; i < que.size(); ++i) {
        if (que[i] == nullptr) {
            result += '`';
        } else {
            result += que[i]->symbol;
            que.push_back(que[i]->l);
            que.push_back(que[i]->r);
        }
    }
}

wstring generate(const wstring& text) {
    vector<node*> vertexes;
    vector<int> symbols(maxN);

    for (wchar_t c : text) {
        ++symbols[c];
    }

    for (int i = 0; i < maxN; ++i) {
        if (!symbols[i]) continue;
        node* v = new node;
        v->symbol = (wchar_t) i;
        v->cnt = symbols[i];

        vertexes.push_back(v);
        for (size_t j = vertexes.size() - 1; j > 0; --j) {
            if (vertexes[j]->cnt > vertexes[j - 1]->cnt) swap(vertexes[j], vertexes[j - 1]);
        }
    }

    while (vertexes.size() != 1) {
        node* left = vertexes.back();
        vertexes.pop_back();
        node* right = vertexes.back();
        vertexes.pop_back();

        node* parent = new node;
        parent->cnt = left->cnt + right->cnt;
        parent->symbol = '$';
        parent->l = left;
        parent->r = right;

        vertexes.push_back(parent);
        for (size_t j = vertexes.size() - 1; j > 0; --j) {
            if (vertexes[j]->cnt > vertexes[j - 1]->cnt) swap(vertexes[j], vertexes[j - 1]);
        }
    }

    node* root = vertexes[0];

    map<wchar_t, wstring> table;
    dfs(root, L"", table);
    if (root->symbol != '$') {
        wcout << "0\n";
        table[root->symbol] = L"0";
    }

    wstring result;
    bfs(root, result);
    wcout << result << L"\n";
    return result;
}