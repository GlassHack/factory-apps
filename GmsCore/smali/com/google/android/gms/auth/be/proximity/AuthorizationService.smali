.class public Lcom/google/android/gms/auth/be/proximity/AuthorizationService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 147
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 253
    new-instance v0, Lcom/google/android/gms/auth/a/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    .line 254
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 255
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/c;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "AuthorizationService is only usable by first party apps."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    new-instance v1, Lcom/google/android/gms/auth/be/proximity/e;

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/be/proximity/e;-><init>(Lcom/google/android/gms/auth/a/c;)V

    return-object v1
.end method
