import requests

cookies = {
    'chal_auth': 'ur chal auth',
    'PHPSESSID': 'phpsessid',
    'csrf_token_auth_1': 'csrf',
}


headers = {
    'Connection': 'keep-alive',
    'sec-ch-ua': '"Google Chrome";v="95", "Chromium";v="95", ";Not A Brand";v="99"',
    'sec-ch-ua-mobile': '?0',
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',
    'sec-ch-ua-platform': '"Windows"',
    'Accept': '*/*',
    'Sec-Fetch-Site': 'same-origin',
    'Sec-Fetch-Mode': 'cors',
    'Sec-Fetch-Dest': 'empty',
    'Referer': '[LEVEL40]',
    'Accept-Language': 'en-GB,en-US;q=0.9,en;q=0.8',
}


def grok(x,y):
    params = {
        'action': 'grok',
        'x': x,
        'y': y,
    }
    response = requests.get('http://ae27ff.meme.tips/res/turboencabulator/query.php', params=params, cookies=cookies, headers=headers)
    return response.json()['observation']


def munge(x,y):
    params = {
        'action': 'munge',
    }
    response = requests.get('http://ae27ff.meme.tips/res/turboencabulator/query.php', params=params, cookies=cookies, headers=headers)
    return response.text

for i in range(16):
    for j in range(16):

        print(grok(i, j), end=' ')
        grok(0, 0)
    print('\n')
