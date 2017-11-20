.class public Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/trustagent/ae;
.implements Lcom/google/android/gms/auth/trustagent/w;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private a:Landroid/os/PowerManager$WakeLock;

.field private b:Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

.field private c:Lcom/google/android/gms/auth/trustagent/trustlet/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static c(Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;)Lcom/google/android/gms/auth/trustagent/t;
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lcom/google/android/gms/auth/trustagent/t;

    invoke-direct {v0}, Lcom/google/android/gms/auth/trustagent/t;-><init>()V

    .line 124
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 125
    const-string v2, "PAIRED_TAG"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/trustagent/t;->setArguments(Landroid/os/Bundle;)V

    .line 127
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;)V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 95
    const-string v1, "SELECTED_NFC_DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->finish()V

    .line 98
    return-void
.end method

.method public final b(Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    if-eqz p1, :cond_0

    .line 103
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->b:Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->c:Lcom/google/android/gms/auth/trustagent/trustlet/x;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/x;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_1

    .line 106
    const v1, 0x7f10013c

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 117
    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->setResult(I)V

    .line 118
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->finish()V

    .line 120
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->c(Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;)Lcom/google/android/gms/auth/trustagent/t;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x1020002

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 39
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/x;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/trustagent/trustlet/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->c:Lcom/google/android/gms/auth/trustagent/trustlet/x;

    .line 40
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->b:Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->b:Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    if-nez v0, :cond_1

    .line 44
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/auth/trustagent/x;

    invoke-direct {v1}, Lcom/google/android/gms/auth/trustagent/x;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 53
    :goto_1
    return-void

    .line 40
    :cond_0
    const-string v0, "PAIRED_TAG"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->b:Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->c(Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;)Lcom/google/android/gms/auth/trustagent/t;

    move-result-object v0

    .line 49
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 70
    :goto_0
    return v0

    .line 66
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->setResult(I)V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->finish()V

    .line 68
    const/4 v0, 0x1

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 80
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 86
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 87
    const/4 v1, 0x1

    const-string v2, "Coffee - NfcDeviceSelectionActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->a:Landroid/os/PowerManager$WakeLock;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 90
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->b:Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "PAIRED_TAG"

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;->b:Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 60
    :cond_0
    return-void
.end method
