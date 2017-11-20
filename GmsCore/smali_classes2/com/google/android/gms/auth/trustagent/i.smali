.class public final Lcom/google/android/gms/auth/trustagent/i;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/trustagent/f;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/i;->a:Lcom/google/android/gms/auth/trustagent/f;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/i;->setRetainInstance(Z)V

    .line 112
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/i;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    const v1, 0x7f10019f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 118
    const v1, 0x7f10019d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 119
    const v1, 0x7f10019e

    new-instance v2, Lcom/google/android/gms/auth/trustagent/j;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/trustagent/j;-><init>(Lcom/google/android/gms/auth/trustagent/i;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    const v1, 0x7f10019c

    new-instance v2, Lcom/google/android/gms/auth/trustagent/k;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/trustagent/k;-><init>(Lcom/google/android/gms/auth/trustagent/i;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
