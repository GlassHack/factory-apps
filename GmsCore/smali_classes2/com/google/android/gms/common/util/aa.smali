.class public final Lcom/google/android/gms/common/util/aa;
.super Landroid/support/v4/app/f;
.source "SourceFile"


# instance fields
.field private aj:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/support/v4/app/f;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/util/aa;->aj:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/gms/common/util/aa;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    const-string v1, "ProgressDialogMessage"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v1, Lcom/google/android/gms/common/util/aa;

    invoke-direct {v1}, Lcom/google/android/gms/common/util/aa;-><init>()V

    .line 129
    iput-boolean v3, v1, Landroid/support/v4/app/f;->c:Z

    iget-object v2, v1, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 130
    :cond_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/util/aa;->e(Landroid/os/Bundle;)V

    .line 131
    return-object v1
.end method


# virtual methods
.method public final a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/android/gms/common/util/aa;->aj:Landroid/content/DialogInterface$OnCancelListener;

    .line 149
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->F:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t retain fragements that are nested in other fragments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->L:Z

    .line 170
    invoke-super {p0, p1}, Landroid/support/v4/app/f;->a(Landroid/os/Bundle;)V

    .line 171
    return-void
.end method

.method public final c()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->r:Landroid/os/Bundle;

    .line 137
    const-string v1, "ProgressDialogMessage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 142
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 143
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 144
    return-object v1
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->L:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 164
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/f;->f()V

    .line 165
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/support/v4/app/f;->onCancel(Landroid/content/DialogInterface;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/gms/common/util/aa;->aj:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/android/gms/common/util/aa;->aj:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 157
    :cond_0
    return-void
.end method
