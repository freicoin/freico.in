function detect_os() {
  var os_list = ['Win','Mac','Linux'];
  var os = 'Unknown';
  for (var i=0; i<os_list.length; i++) {
    if (navigator.platform.indexOf(os_list[i])!=-1)
      os = os_list[i];
  }
  return os;
};

function show_download() {
  os = detect_os();
  var dl_list = document.getElementById('download-list');
  if (dl_list) {
    if (dl_list.hasChildNodes()) {
      var children = dl_list.childNodes;
      for (var i=0; i<children.length; i++) {
        if (children[i].nodeName == 'LI') {
          if (children[i].id == os)
            children[i].style.display = 'block';
          else
            children[i].style.display = 'none';
        }
      }
    }
  }
};

