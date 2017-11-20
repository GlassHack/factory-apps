.class public Lcom/google/android/gms/auth/be/GoogleAccountDataService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/android/gms/auth/be/GoogleAccountDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/a/b;->a(Landroid/content/Context;)V

    .line 351
    new-instance v0, Lcom/google/android/gms/auth/a/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    .line 352
    new-instance v1, Lcom/google/android/gms/auth/be/o;

    new-instance v2, Lcom/google/android/gms/auth/a/k;

    invoke-direct {v2, v0}, Lcom/google/android/gms/auth/a/k;-><init>(Lcom/google/android/gms/auth/a/c;)V

    new-instance v3, Lcom/google/android/gms/auth/be/p;

    invoke-direct {v3, v0}, Lcom/google/android/gms/auth/be/p;-><init>(Lcom/google/android/gms/auth/a/c;)V

    new-instance v4, Lcom/google/android/gms/auth/be/s;

    invoke-static {}, Lcom/google/android/gms/auth/be/h;->a()Lcom/google/android/gms/auth/be/h;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/google/android/gms/auth/be/s;-><init>(Lcom/google/android/gms/auth/a/c;Lcom/google/android/gms/auth/be/h;)V

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/android/gms/auth/be/o;-><init>(Lcom/google/android/gms/auth/be/GoogleAccountDataService;Lcom/google/android/gms/auth/a/k;Lcom/google/android/gms/auth/be/p;Lcom/google/android/gms/auth/be/s;)V

    return-object v1
.end method
