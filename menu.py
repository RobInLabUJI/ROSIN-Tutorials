from IPython.display import HTML

def basic():
    return HTML("""
    <h2>Basic Concepts</h2>
    <ul>
    <li><a id="nodes_link"  href="http://localhost:1234/lab/workspaces/nodes">Nodes</a></li>
    <li><a id="topics_link" href="http://localhost:1234/lab/workspaces/nodes/tree/Topics/Understanding_Topics.ipynb">Topics</a></li>
    <li><a id="servs_link"  href="http://localhost:1234/lab/workspaces/nodes/tree/Services/Understanding_Services.ipynb">Services</a></li>
    <li><a id="params_link" href="http://localhost:1234/lab/workspaces/nodes/tree/Parameters/Using_rosparam.ipynb">Parameters</a></li>
    </ul>
    <script>
    var ip = location.hostname;
    var port = location.port;
    var href;
    var idArray = ["nodes_link","topics_link","servs_link","params_link"];
    var arrayLength = idArray.length;
    for (var i = 0; i < arrayLength; i++) {
        href = document.getElementById(idArray[i]).href;
        document.getElementById(idArray[i]).href = href.replace('localhost',ip).replace('1234',port);
    }
    </script>
    """)