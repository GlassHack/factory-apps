.class public Lcom/google/android/gms/auth/CredentialStateSyncService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/auth/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/CredentialStateSyncService;->a:Ljava/lang/Object;

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/auth/CredentialStateSyncService;->b:Lcom/google/android/gms/auth/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/gms/auth/CredentialStateSyncService;->b:Lcom/google/android/gms/auth/m;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/m;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 18
    sget-object v1, Lcom/google/android/gms/auth/CredentialStateSyncService;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/CredentialStateSyncService;->b:Lcom/google/android/gms/auth/m;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/google/android/gms/auth/m;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/CredentialStateSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/auth/CredentialStateSyncService;->b:Lcom/google/android/gms/auth/m;

    .line 22
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
