.class public final Lcom/google/android/gms/auth/trustagent/bj;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/bb;

.field private final b:Landroid/preference/Preference;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/trustagent/bb;Landroid/preference/Preference;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/bj;->a:Lcom/google/android/gms/auth/trustagent/bb;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 241
    iput-object p2, p0, Lcom/google/android/gms/auth/trustagent/bj;->b:Landroid/preference/Preference;

    .line 242
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/bj;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/bj;->b:Landroid/preference/Preference;

    return-object v0
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 246
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/bj;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 247
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/bj;->b:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/bj;->b:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 249
    const v1, 0x7f1001bf

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/trustagent/bj;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/auth/trustagent/bk;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/trustagent/bk;-><init>(Lcom/google/android/gms/auth/trustagent/bj;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 258
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/bj;->a:Lcom/google/android/gms/auth/trustagent/bb;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/trustagent/bb;->a()Lcom/google/android/gms/auth/trustagent/ak;

    move-result-object v1

    .line 259
    const v2, 0x7f1001be

    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/trustagent/bj;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/auth/trustagent/bl;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/auth/trustagent/bl;-><init>(Lcom/google/android/gms/auth/trustagent/bj;Lcom/google/android/gms/auth/trustagent/ak;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 273
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
