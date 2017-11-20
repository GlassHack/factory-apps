.class public Lcom/google/android/gms/fitness/sync/FitnessSyncAdapterService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/fitness/sync/c;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/fitness/sync/FitnessSyncAdapterService;->a:Lcom/google/android/gms/fitness/sync/c;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/sync/FitnessSyncAdapterService;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/google/android/gms/fitness/sync/c;
    .locals 2

    .prologue
    .line 20
    sget-object v1, Lcom/google/android/gms/fitness/sync/FitnessSyncAdapterService;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/google/android/gms/fitness/sync/FitnessSyncAdapterService;->a:Lcom/google/android/gms/fitness/sync/c;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/google/android/gms/fitness/sync/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/sync/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/fitness/sync/FitnessSyncAdapterService;->a:Lcom/google/android/gms/fitness/sync/c;

    .line 24
    :cond_0
    sget-object v0, Lcom/google/android/gms/fitness/sync/FitnessSyncAdapterService;->a:Lcom/google/android/gms/fitness/sync/c;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 36
    const-string v0, "bind fitness syncadapterService"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/sync/FitnessSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/sync/FitnessSyncAdapterService;->a(Landroid/content/Context;)Lcom/google/android/gms/fitness/sync/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sync/c;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "create fitness syncadapterService"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/sync/FitnessSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/sync/FitnessSyncAdapterService;->a(Landroid/content/Context;)Lcom/google/android/gms/fitness/sync/c;

    .line 32
    return-void
.end method
