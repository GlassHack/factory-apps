.class public final Lcom/google/android/gms/auth/trustagent/bh;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/bb;

.field private final b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/trustagent/bb;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/bh;->a:Lcom/google/android/gms/auth/trustagent/bb;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 217
    iput-object p2, p0, Lcom/google/android/gms/auth/trustagent/bh;->b:[Ljava/lang/String;

    .line 218
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/bh;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/bh;->b:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 222
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/bh;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    const v1, 0x7f1001c0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/trustagent/bh;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/bh;->b:[Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/auth/trustagent/bi;

    invoke-direct {v3, p0}, Lcom/google/android/gms/auth/trustagent/bi;-><init>(Lcom/google/android/gms/auth/trustagent/bh;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
