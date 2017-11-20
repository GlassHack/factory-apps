.class public Lcom/google/android/gms/auth/trustagent/BluetoothDeviceSelectionActivity;
.super Landroid/support/v7/a/d;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v7/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/support/v7/a/d;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/BluetoothDeviceSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/google/android/gms/auth/trustagent/c;

    invoke-direct {v2}, Lcom/google/android/gms/auth/trustagent/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 22
    invoke-super {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/e;->b()Landroid/support/v7/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Z)V

    .line 23
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 33
    :goto_0
    return v0

    .line 29
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/BluetoothDeviceSelectionActivity;->setResult(I)V

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/BluetoothDeviceSelectionActivity;->onBackPressed()V

    .line 31
    const/4 v0, 0x1

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
