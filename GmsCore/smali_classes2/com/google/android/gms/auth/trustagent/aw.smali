.class public final Lcom/google/android/gms/auth/trustagent/aw;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/at;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/trustagent/at;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/aw;->a:Lcom/google/android/gms/auth/trustagent/at;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 343
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 347
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/aw;->setRetainInstance(Z)V

    .line 348
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 352
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/aw;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 353
    new-instance v1, Lcom/google/android/gms/auth/trustagent/av;

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/aw;->a:Lcom/google/android/gms/auth/trustagent/at;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/aw;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/auth/trustagent/av;-><init>(Lcom/google/android/gms/auth/trustagent/at;Landroid/content/Context;)V

    .line 355
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 356
    const v2, 0x7f1001af

    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/trustagent/aw;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/trustagent/av;->add(Ljava/lang/Object;)V

    .line 362
    :goto_0
    const v2, 0x7f1001b0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/trustagent/aw;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/trustagent/av;->add(Ljava/lang/Object;)V

    .line 364
    const v2, 0x7f1001b1

    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/trustagent/aw;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/auth/trustagent/ax;

    invoke-direct {v3, p0}, Lcom/google/android/gms/auth/trustagent/ax;-><init>(Lcom/google/android/gms/auth/trustagent/aw;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 383
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 359
    :cond_0
    const v2, 0x7f1001ae

    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/trustagent/aw;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/trustagent/av;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method
