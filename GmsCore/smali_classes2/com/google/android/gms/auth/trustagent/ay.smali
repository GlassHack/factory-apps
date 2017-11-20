.class public final Lcom/google/android/gms/auth/trustagent/ay;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/at;

.field private final b:Landroid/preference/Preference;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/trustagent/at;Landroid/preference/Preference;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/ay;->a:Lcom/google/android/gms/auth/trustagent/at;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 418
    iput-object p2, p0, Lcom/google/android/gms/auth/trustagent/ay;->b:Landroid/preference/Preference;

    .line 419
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/ay;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ay;->b:Landroid/preference/Preference;

    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 423
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 425
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/ay;->setRetainInstance(Z)V

    .line 426
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 430
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/ay;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 431
    const v1, 0x7f1001b7

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/trustagent/ay;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 432
    const v1, 0x7f1001b5

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/trustagent/ay;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/auth/trustagent/az;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/trustagent/az;-><init>(Lcom/google/android/gms/auth/trustagent/ay;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 451
    const v1, 0x7f1001b3

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/trustagent/ay;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/auth/trustagent/ba;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/trustagent/ba;-><init>(Lcom/google/android/gms/auth/trustagent/ay;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 458
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
