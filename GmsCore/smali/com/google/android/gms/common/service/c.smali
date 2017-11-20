.class public abstract Lcom/google/android/gms/common/service/c;
.super Landroid/app/IntentService;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/google/android/gms/common/service/d;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/service/d;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/google/android/gms/common/service/c;->b:Ljava/lang/String;

    .line 52
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/service/d;

    iput-object v0, p0, Lcom/google/android/gms/common/service/c;->a:Lcom/google/android/gms/common/service/d;

    .line 53
    return-void
.end method

.method private static a(Lcom/google/android/gms/common/service/b;Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .prologue
    .line 79
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/common/service/b;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/common/service/c;->a:Lcom/google/android/gms/common/service/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/service/d;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/service/b;

    .line 58
    if-eqz v0, :cond_0

    .line 60
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/common/service/b;->a()V
    :try_end_0
    .catch Lcom/google/android/gms/common/service/h; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v1

    .line 62
    iget-object v2, p0, Lcom/google/android/gms/common/service/c;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/common/service/h;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/common/service/h;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/service/c;->a(Lcom/google/android/gms/common/service/b;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 67
    :catch_1
    move-exception v1

    .line 68
    iget-object v2, p0, Lcom/google/android/gms/common/service/c;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 72
    invoke-static {v0, v1}, Lcom/google/android/gms/common/service/c;->a(Lcom/google/android/gms/common/service/b;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 73
    :catch_2
    move-exception v0

    goto :goto_0
.end method
