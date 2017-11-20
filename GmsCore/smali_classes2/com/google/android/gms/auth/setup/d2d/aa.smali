.class final Lcom/google/android/gms/auth/setup/d2d/aa;
.super Lcom/google/android/gms/auth/setup/d2d/a/e;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/m/b/a/d/h;

.field final synthetic b:Lcom/google/android/gms/auth/setup/d2d/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/setup/d2d/z;Landroid/bluetooth/BluetoothAdapter;Ljava/util/UUID;Ljava/lang/String;Lcom/google/m/b/a/d/h;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/aa;->b:Lcom/google/android/gms/auth/setup/d2d/z;

    iput-object p5, p0, Lcom/google/android/gms/auth/setup/d2d/aa;->a:Lcom/google/m/b/a/d/h;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/auth/setup/d2d/a/e;-><init>(Landroid/bluetooth/BluetoothAdapter;Ljava/util/UUID;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/aa;->b:Lcom/google/android/gms/auth/setup/d2d/z;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/setup/d2d/z;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "D2D.TargetInitiationFragment"

    const-string v1, "Bluetooth connection failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/aa;->b:Lcom/google/android/gms/auth/setup/d2d/z;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/setup/d2d/z;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/aa;->b:Lcom/google/android/gms/auth/setup/d2d/z;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/aa;->b:Lcom/google/android/gms/auth/setup/d2d/z;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/z;->a(Lcom/google/android/gms/auth/setup/d2d/z;)Lcom/google/android/gms/auth/setup/d2d/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/aa;->b:Lcom/google/android/gms/auth/setup/d2d/z;

    const v2, 0x7f10007e

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/setup/d2d/z;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/setup/d2d/ab;->a(Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/auth/setup/d2d/a/b;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/aa;->b:Lcom/google/android/gms/auth/setup/d2d/z;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/setup/d2d/z;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "D2D.TargetInitiationFragment"

    const-string v1, "Bluetooth connection created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/aa;->b:Lcom/google/android/gms/auth/setup/d2d/z;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/setup/d2d/z;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/aa;->b:Lcom/google/android/gms/auth/setup/d2d/z;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/aa;->b:Lcom/google/android/gms/auth/setup/d2d/z;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/z;->a(Lcom/google/android/gms/auth/setup/d2d/z;)Lcom/google/android/gms/auth/setup/d2d/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/aa;->a:Lcom/google/m/b/a/d/h;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/auth/setup/d2d/ab;->a(Lcom/google/android/gms/auth/setup/d2d/a/b;Lcom/google/m/b/a/d/h;)V

    .line 114
    :cond_0
    return-void
.end method
