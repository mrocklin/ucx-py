cdef extern from "myucp.h":
    void *dummy_fxn(void *, int)
    void ucp_py_worker_progress()
    int init_ucp(char *, int, server_accept_cb_func, void *, int)
    int fin_ucp()
    char* get_peer_hostname()
    char* get_own_hostname()
    int create_ep(char*, int)
    ucp_ep_h* get_ep(char *, int)
    int put_ep(ucp_ep_h *)
    int wait_for_connection()
    int setup_ep_ucp()
    int destroy_ep_ucp()
    data_buf* allocate_host_buffer(int)
    data_buf* allocate_cuda_buffer(int)
    int set_device(int)
    int set_host_buffer(data_buf*, int, int)
    int set_cuda_buffer(data_buf*, int, int)
    int check_host_buffer(data_buf*, int, int)
    int check_cuda_buffer(data_buf*, int, int)
    int free_host_buffer(data_buf*)
    int free_cuda_buffer(data_buf*)
    ucx_context* ucp_py_ep_send(ucp_ep_h*, data_buf*, int)
    ucx_context* send_nb_ucp(data_buf*, int)
    ucx_context* recv_nb_ucp(data_buf*, int)
    ucx_context* send_nb_ucp_bytes(void*, int)
    ucx_context* send_nb_ucp_ep_bytes(ucp_ep_h*, void*, int)
    ucx_context* recv_nb_ucp_bytes(void*, int)
    int ucp_py_ep_post_probe()
    int wait_for_probe_success()
    int query_for_probe_success()
    int wait_request_ucp(ucx_context*)
    int query_request_ucp(ucx_context*)
    int barrier_sock()
