.class public Lcom/google/android/gms/clearcut/service/ClearcutLoggerService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/playlog/b/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/clearcut/service/ClearcutLoggerService;)Lcom/google/android/gms/playlog/b/f;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/clearcut/service/ClearcutLoggerService;->a:Lcom/google/android/gms/playlog/b/f;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 58
    const-string v0, "com.google.android.gms.clearcut.service.START"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcom/google/android/gms/clearcut/service/d;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gms/clearcut/service/d;-><init>(Lcom/google/android/gms/clearcut/service/ClearcutLoggerService;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/clearcut/service/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 47
    invoke-static {}, Lcom/google/android/gms/playlog/b/f;->a()Lcom/google/android/gms/playlog/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/service/ClearcutLoggerService;->a:Lcom/google/android/gms/playlog/b/f;

    .line 48
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gms/clearcut/service/ClearcutLoggerService;->a:Lcom/google/android/gms/playlog/b/f;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/b/f;->close()V

    .line 53
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 54
    return-void
.end method
