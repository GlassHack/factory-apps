.class final Lcom/google/android/gms/org/conscrypt/s;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;

.field private final b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;)V
    .locals 1

    .prologue
    .line 704
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/s;->a:Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 702
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/s;->b:Ljava/lang/Object;

    .line 705
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/s;->b:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public final write(I)V
    .locals 3

    .prologue
    .line 713
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 714
    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 715
    invoke-virtual {p0, v0}, Lcom/google/android/gms/org/conscrypt/s;->write([B)V

    .line 716
    return-void
.end method

.method public final write([BII)V
    .locals 9

    .prologue
    .line 724
    invoke-static {}, La/a/a;->a()La/a/b;

    move-result-object v0

    invoke-interface {v0}, La/a/b;->a()V

    .line 725
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/s;->a:Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->access$000(Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;)V

    .line 726
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/google/android/gms/org/conscrypt/util/Arrays;->checkOffsetAndCount(III)V

    .line 727
    if-nez p3, :cond_0

    .line 742
    :goto_0
    return-void

    .line 731
    :cond_0
    iget-object v8, p0, Lcom/google/android/gms/org/conscrypt/s;->b:Ljava/lang/Object;

    monitor-enter v8

    .line 732
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/s;->a:Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->access$100(Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 733
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/s;->a:Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->access$200(Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 734
    new-instance v0, Ljava/net/SocketException;

    const-string v2, "socket is closed"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 738
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 742
    :catchall_1
    move-exception v0

    monitor-exit v8

    throw v0

    .line 738
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 740
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/s;->a:Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->access$300(Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/s;->a:Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;

    invoke-static {v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->access$400(Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;)Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/s;->a:Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;

    iget-object v4, p0, Lcom/google/android/gms/org/conscrypt/s;->a:Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;

    invoke-static {v4}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->access$500(Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;)I

    move-result v7

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_write(JLjava/io/FileDescriptor;Lcom/google/android/gms/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)V

    .line 742
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method
