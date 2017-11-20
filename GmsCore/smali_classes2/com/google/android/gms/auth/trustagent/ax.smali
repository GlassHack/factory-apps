.class final Lcom/google/android/gms/auth/trustagent/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/aw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/aw;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/ax;->a:Lcom/google/android/gms/auth/trustagent/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 368
    if-nez p2, :cond_1

    .line 369
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/ax;->a:Lcom/google/android/gms/auth/trustagent/aw;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/trustagent/aw;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/auth/trustagent/BluetoothDeviceSelectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    const-string v1, "bluetooth_addresses_to_exclude"

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/ax;->a:Lcom/google/android/gms/auth/trustagent/aw;

    iget-object v2, v2, Lcom/google/android/gms/auth/trustagent/aw;->a:Lcom/google/android/gms/auth/trustagent/at;

    invoke-static {v2}, Lcom/google/android/gms/auth/trustagent/at;->a(Lcom/google/android/gms/auth/trustagent/at;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/ax;->a:Lcom/google/android/gms/auth/trustagent/aw;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/trustagent/aw;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 376
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/ax;->a:Lcom/google/android/gms/auth/trustagent/aw;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/trustagent/aw;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/auth/trustagent/NfcDeviceSelectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/ax;->a:Lcom/google/android/gms/auth/trustagent/aw;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/trustagent/aw;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
