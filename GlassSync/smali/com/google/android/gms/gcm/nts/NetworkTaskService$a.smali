.class Lcom/google/android/gms/gcm/nts/NetworkTaskService$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/gcm/nts/NetworkTaskService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final Fy:Lcom/google/android/gms/gcm/nts/a;

.field final synthetic Fz:Lcom/google/android/gms/gcm/nts/NetworkTaskService;

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/nts/NetworkTaskService;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/gcm/nts/NetworkTaskService$a;->Fz:Lcom/google/android/gms/gcm/nts/NetworkTaskService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/gcm/nts/NetworkTaskService$a;->mTag:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/gcm/nts/a$a;->Y(Landroid/os/IBinder;)Lcom/google/android/gms/gcm/nts/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/nts/NetworkTaskService$a;->Fy:Lcom/google/android/gms/gcm/nts/a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/NetworkTaskService$a;->Fz:Lcom/google/android/gms/gcm/nts/NetworkTaskService;

    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/NetworkTaskService$a;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/nts/NetworkTaskService;->onRunTask(Ljava/lang/String;)I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/NetworkTaskService$a;->Fy:Lcom/google/android/gms/gcm/nts/a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/gcm/nts/a;->cq(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/NetworkTaskService$a;->Fz:Lcom/google/android/gms/gcm/nts/NetworkTaskService;

    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/NetworkTaskService$a;->mTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/gcm/nts/NetworkTaskService;->a(Lcom/google/android/gms/gcm/nts/NetworkTaskService;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "GcmTaskService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reporting result of operation to scheduler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/gcm/nts/NetworkTaskService$a;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/NetworkTaskService$a;->Fz:Lcom/google/android/gms/gcm/nts/NetworkTaskService;

    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/NetworkTaskService$a;->mTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/gcm/nts/NetworkTaskService;->a(Lcom/google/android/gms/gcm/nts/NetworkTaskService;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/NetworkTaskService$a;->Fz:Lcom/google/android/gms/gcm/nts/NetworkTaskService;

    iget-object v2, p0, Lcom/google/android/gms/gcm/nts/NetworkTaskService$a;->mTag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/gcm/nts/NetworkTaskService;->a(Lcom/google/android/gms/gcm/nts/NetworkTaskService;Ljava/lang/String;)V

    throw v0
.end method
