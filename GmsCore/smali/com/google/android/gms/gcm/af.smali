.class final Lcom/google/android/gms/gcm/af;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/gcm/ae;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/gcm/aj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/ae;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/gms/gcm/af;->a:Lcom/google/android/gms/gcm/ae;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/google/android/gms/gcm/af;->b:Ljava/lang/String;

    .line 125
    invoke-static {p3}, Lcom/google/android/gms/gcm/ak;->a(Landroid/os/IBinder;)Lcom/google/android/gms/gcm/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/af;->c:Lcom/google/android/gms/gcm/aj;

    .line 126
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/gms/gcm/af;->a:Lcom/google/android/gms/gcm/ae;

    new-instance v1, Lcom/google/android/gms/gcm/be;

    iget-object v2, p0, Lcom/google/android/gms/gcm/af;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/gcm/be;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/ae;->a(Lcom/google/android/gms/gcm/be;)I

    move-result v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/gcm/af;->c:Lcom/google/android/gms/gcm/aj;

    invoke-interface {v1, v0}, Lcom/google/android/gms/gcm/aj;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/gcm/af;->a:Lcom/google/android/gms/gcm/ae;

    iget-object v1, p0, Lcom/google/android/gms/gcm/af;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/gcm/ae;->a(Lcom/google/android/gms/gcm/ae;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "GcmTaskService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error reporting result of operation to scheduler for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/gcm/af;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/gcm/af;->a:Lcom/google/android/gms/gcm/ae;

    iget-object v1, p0, Lcom/google/android/gms/gcm/af;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/gcm/ae;->a(Lcom/google/android/gms/gcm/ae;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/gcm/af;->a:Lcom/google/android/gms/gcm/ae;

    iget-object v2, p0, Lcom/google/android/gms/gcm/af;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/gcm/ae;->a(Lcom/google/android/gms/gcm/ae;Ljava/lang/String;)V

    throw v0
.end method
