.class public abstract Lcom/google/android/gms/wearable/ac;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/f;
.implements Lcom/google/android/gms/wearable/p;
.implements Lcom/google/android/gms/wearable/v;


# instance fields
.field private volatile a:I

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Handler;

.field private d:Landroid/os/IBinder;

.field private e:Ljava/lang/Object;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wearable/ac;->a:I

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/ac;->e:Ljava/lang/Object;

    .line 140
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wearable/ac;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/wearable/ac;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/wearable/ac;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v0, p0, Lcom/google/android/gms/wearable/ac;->a:I

    if-eq v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/ac;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.google.android.gms"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/k;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v3, "com.google.android.gms"

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/ac;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    move v0, v1

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_3

    iput v2, p0, Lcom/google/android/gms/wearable/ac;->a:I

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not GooglePlayServices"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic c(Lcom/google/android/gms/wearable/ac;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/wearable/ac;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/wearable/ac;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/ac;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/google/android/gms/wearable/ac;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/wearable/ac;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/wearable/i;)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public a(Lcom/google/android/gms/wearable/r;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public a(Lcom/google/android/gms/wearable/s;)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public b(Lcom/google/android/gms/wearable/s;)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 91
    const-string v0, "com.google.android.gms.wearable.BIND_LISTENER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/wearable/ac;->d:Landroid/os/IBinder;

    .line 94
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 69
    const-string v0, "WearableLS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "WearableLS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/ac;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/ac;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/ac;->b:Ljava/lang/String;

    .line 74
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WearableListenerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 76
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/ac;->c:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcom/google/android/gms/wearable/ad;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wearable/ad;-><init>(Lcom/google/android/gms/wearable/ac;B)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/ac;->d:Landroid/os/IBinder;

    .line 78
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 82
    iget-object v1, p0, Lcom/google/android/gms/wearable/ac;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/wearable/ac;->f:Z

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/wearable/ac;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 85
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 87
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
