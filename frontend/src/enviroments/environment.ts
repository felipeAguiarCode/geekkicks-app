const scheme = 'http://';
const host = 'localhost';
const port = ':5000';
const path = '/api/';

const baseUrl = scheme + host + port + path;

export const environment = {
  production: false,
  appName: 'geek-kicks',
  defaultLanguage: 'en',
  apiBaseUrl: baseUrl,
};
