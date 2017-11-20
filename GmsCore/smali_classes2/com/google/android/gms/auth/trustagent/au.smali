.class final Lcom/google/android/gms/auth/trustagent/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/at;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/at;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/au;->a:Lcom/google/android/gms/auth/trustagent/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 143
    sget-object v0, Lcom/google/android/gms/auth/b/a;->L:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/auth/b/a;->M:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lcom/google/android/gms/auth/trustagent/aw;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/au;->a:Lcom/google/android/gms/auth/trustagent/at;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/trustagent/aw;-><init>(Lcom/google/android/gms/auth/trustagent/at;)V

    .line 147
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/au;->a:Lcom/google/android/gms/auth/trustagent/at;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/trustagent/at;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "Coffee - TrustedDevicesFragment"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/trustagent/aw;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 148
    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/b/a;->L:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/au;->a:Lcom/google/android/gms/auth/trustagent/at;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/trustagent/at;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/auth/trustagent/BluetoothDeviceSelectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    const-string v1, "bluetooth_addresses_to_exclude"

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/au;->a:Lcom/google/android/gms/auth/trustagent/at;

    invoke-static {v2}, Lcom/google/android/gms/auth/trustagent/at;->a(Lcom/google/android/gms/auth/trustagent/at;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/au;->a:Lcom/google/android/gms/auth/trustagent/at;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/trustagent/at;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 156
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/au;->a:Lcom/google/android/gms/auth/trustagent/at;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/trustagent/at;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/au;->a:Lcom/google/android/gms/auth/trustagent/at;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/trustagent/at;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
