.class public final Lcom/google/android/gms/auth/trustagent/be;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/bb;

.field private final b:Landroid/preference/Preference;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/trustagent/bb;Landroid/preference/Preference;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/be;->a:Lcom/google/android/gms/auth/trustagent/bb;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 282
    iput-object p2, p0, Lcom/google/android/gms/auth/trustagent/be;->b:Landroid/preference/Preference;

    .line 283
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/be;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/be;->b:Landroid/preference/Preference;

    return-object v0
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 287
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/be;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 288
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/be;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 289
    const v1, 0x7f0300e9

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 290
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 291
    const v0, 0x7f0d0206

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 293
    iget-object v3, p0, Lcom/google/android/gms/auth/trustagent/be;->b:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 294
    const v3, 0x7f0d0207

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 296
    iget-object v3, p0, Lcom/google/android/gms/auth/trustagent/be;->b:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 297
    const v1, 0x7f1001bc

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/trustagent/be;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/auth/trustagent/bf;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/auth/trustagent/bf;-><init>(Lcom/google/android/gms/auth/trustagent/be;Landroid/widget/EditText;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 309
    const v0, 0x7f1001bb

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/be;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/auth/trustagent/bg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/trustagent/bg;-><init>(Lcom/google/android/gms/auth/trustagent/be;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 316
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
