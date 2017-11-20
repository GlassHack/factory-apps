.class public final Lcom/google/android/gms/playlog/service/PlayLogBrokerService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/google/android/gms/playlog/b/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/playlog/service/PlayLogBrokerService;->a:Z

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/playlog/service/PlayLogBrokerService;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/android/gms/playlog/service/PlayLogBrokerService;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/playlog/service/PlayLogBrokerService;)Lcom/google/android/gms/playlog/b/f;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/playlog/service/PlayLogBrokerService;->b:Lcom/google/android/gms/playlog/b/f;

    return-object v0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 63
    const-string v0, "com.google.android.gms.playlog.service.START"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    sget-object v0, Lcom/google/android/gms/playlog/a/b;->f:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lcom/google/android/gms/playlog/service/b;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gms/playlog/service/b;-><init>(Lcom/google/android/gms/playlog/service/PlayLogBrokerService;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/service/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 67
    :cond_0
    new-instance v0, Lcom/google/android/gms/playlog/service/a/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/playlog/service/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/service/a/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lcom/google/android/gsf/e;->a(Landroid/content/Context;)V

    .line 48
    invoke-static {p0}, Lcom/google/android/gms/common/a/b;->a(Landroid/content/Context;)V

    .line 50
    sget-object v0, Lcom/google/android/gms/playlog/a/c;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/playlog/service/PlayLogBrokerService;->a:Z

    .line 51
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 52
    invoke-static {}, Lcom/google/android/gms/playlog/b/f;->a()Lcom/google/android/gms/playlog/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/playlog/service/PlayLogBrokerService;->b:Lcom/google/android/gms/playlog/b/f;

    .line 53
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/playlog/service/PlayLogBrokerService;->b:Lcom/google/android/gms/playlog/b/f;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/b/f;->close()V

    .line 58
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 59
    return-void
.end method
