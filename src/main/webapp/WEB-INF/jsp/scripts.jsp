<!-- jQuery Version 1.11.0 -->
<script src="${pageContext.request.contextPath}/sb-admin/js/jquery-1.11.0.js"></script>

<!-- jsMasked -->
<script src="${pageContext.request.contextPath}/sb-admin/js/jquery.maskedinput.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/sb-admin/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="${pageContext.request.contextPath}/sb-admin/js/plugins/metisMenu/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="${pageContext.request.contextPath}/sb-admin/js/sb-admin-2.js"></script>

<!-- DataTables JavaScript -->
<script src="${pageContext.request.contextPath}/sb-admin/js/plugins/dataTables/jquery.dataTables.js"></script>
<script src="${pageContext.request.contextPath}/sb-admin/js/plugins/dataTables/dataTables.bootstrap.js"></script>


<!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script>
    $(document).ready(function () {
        $('#dataTables-example').dataTable();
    });
</script>

<script>
    jQuery("#cpf").mask("999.999.999-99");
    jQuery("#email").mask("")
</script>

<script type="text/javascript">
    $(document).ready(function () {
        $("#pedido").submit(function () {
            var email = $("#email").val();
            if (email != "")
            {
                var filtro = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
                if (filtro.test(email))
                {
                    alert("Este endereço de email é válido!");
                    return true;
                } else {
                    alert("Este endereço de email não é válido!");
                    return false;
                }
            } else {
                alert('Digite um email!');
                return false;
            }
        });
    });
</script>
