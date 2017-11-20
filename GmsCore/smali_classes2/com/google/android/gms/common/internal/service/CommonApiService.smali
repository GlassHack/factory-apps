.class public Lcom/google/android/gms/common/internal/service/CommonApiService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    const-string v1, "com.google.android.gms.common.service.START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Lcom/google/android/gms/common/internal/service/a;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gms/common/internal/service/a;-><init>(Lcom/google/android/gms/common/internal/service/CommonApiService;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/service/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 35
    const-string v0, "CommonApiService"

    const-string v1, "created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method
