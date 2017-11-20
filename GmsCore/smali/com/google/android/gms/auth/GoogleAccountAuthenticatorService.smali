.class public Lcom/google/android/gms/auth/GoogleAccountAuthenticatorService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/google/android/gms/auth/g/d;->a()Landroid/content/Intent;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/google/android/gms/auth/a/c;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/a/c;->a(Landroid/content/Intent;)Z

    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lcom/google/android/gms/auth/p;->a()Lcom/google/android/gms/auth/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/p;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 46
    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/gsf/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/gsf/g;-><init>(Landroid/app/Service;)V

    .line 47
    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/gsf/g;->a(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
