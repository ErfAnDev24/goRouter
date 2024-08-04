function clearBrowserHistory(redirectUrl) {
  // جایگزین کردن وضعیت فعلی با وضعیت جدید
  history.replaceState(null, document.title, location.pathname);
  // پاک کردن تاریخچه جلو
  window.onpopstate = function (event) {
    // هدایت به یک صفحه خاص
    window.location.href = redirectUrl;
  };
}
