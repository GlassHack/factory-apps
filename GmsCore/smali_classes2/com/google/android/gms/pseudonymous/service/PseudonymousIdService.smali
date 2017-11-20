.class public Lcom/google/android/gms/pseudonymous/service/PseudonymousIdService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 37
    const-string v0, "com.google.android.gms.pseudonymous.service.START"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lcom/google/android/gms/pseudonymous/service/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/google/android/gms/pseudonymous/service/e;-><init>(Lcom/google/android/gms/pseudonymous/service/PseudonymousIdService;Landroid/content/Context;B)V

    invoke-virtual {v0}, Lcom/google/android/gms/pseudonymous/service/e;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
