.class public abstract Lcom/google/android/gms/gcm/ae;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Set;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/ae;->a:Ljava/util/Set;

    .line 119
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/gcm/ae;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 57
    iget-object v1, p0, Lcom/google/android/gms/gcm/ae;->a:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/ae;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/gcm/ae;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/gcm/ae;->b:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/ae;->stopSelf(I)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/gcm/be;)I
.end method

.method public a()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 86
    const-string v0, "com.google.android.gms.gcm.ACTION_TASK_READY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    const-string v0, "tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    const-string v0, "callback"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/google/android/gms/gcm/PendingCallback;

    if-nez v2, :cond_2

    .line 93
    :cond_0
    const-string v0, "GcmTaskService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/ae;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Could not process request, invalid callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    :goto_0
    return v4

    .line 97
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/gcm/ae;->a:Ljava/util/Set;

    monitor-enter v2

    .line 98
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/gcm/ae;->a:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    iget v3, p0, Lcom/google/android/gms/gcm/ae;->b:I

    invoke-virtual {p0, v3}, Lcom/google/android/gms/gcm/ae;->stopSelf(I)V

    .line 103
    iput p3, p0, Lcom/google/android/gms/gcm/ae;->b:I

    .line 104
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    new-instance v2, Lcom/google/android/gms/gcm/af;

    check-cast v0, Lcom/google/android/gms/gcm/PendingCallback;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/PendingCallback;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/gcm/af;-><init>(Lcom/google/android/gms/gcm/ae;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v2}, Lcom/google/android/gms/gcm/af;->start()V

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 106
    :cond_3
    const-string v0, "com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/ae;->a()V

    .line 108
    iget-object v1, p0, Lcom/google/android/gms/gcm/ae;->a:Ljava/util/Set;

    monitor-enter v1

    .line 109
    :try_start_1
    iput p3, p0, Lcom/google/android/gms/gcm/ae;->b:I

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/gcm/ae;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 111
    iget v0, p0, Lcom/google/android/gms/gcm/ae;->b:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/ae;->stopSelf(I)V

    .line 113
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
