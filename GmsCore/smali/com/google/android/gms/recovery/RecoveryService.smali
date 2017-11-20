.class public Lcom/google/android/gms/recovery/RecoveryService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/recovery/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gms/recovery/RecoveryService;->a:Lcom/google/android/gms/recovery/f;

    invoke-virtual {v0}, Lcom/google/android/gms/recovery/f;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/google/android/gms/recovery/f;

    invoke-direct {v0, p0}, Lcom/google/android/gms/recovery/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/recovery/RecoveryService;->a:Lcom/google/android/gms/recovery/f;

    .line 50
    return-void
.end method
