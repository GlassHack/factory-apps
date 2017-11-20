.class public Lcom/google/android/gms/common/service/AccountService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/gms/common/service/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/service/a;-><init>(Lcom/google/android/gms/common/service/AccountService;B)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/service/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
