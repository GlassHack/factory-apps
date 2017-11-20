.class final Lcom/google/android/gms/recovery/e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

.field private final b:Ljava/lang/String;

.field private c:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/recovery/AccountRecoveryActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 510
    iput-object p2, p0, Lcom/google/android/gms/recovery/e;->b:Ljava/lang/String;

    .line 511
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 504
    const-string v0, ""

    iget-object v1, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-static {v1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EMAIL_ONLY"

    iget-object v2, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-static {v2}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->e(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-static {v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-static {v1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->f(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/Country;

    iget-object v0, v0, Lcom/google/android/gms/auth/Country;->c:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-static {v1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->g(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iget-object v4, p0, Lcom/google/android/gms/recovery/e;->b:Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/auth/a/c;

    iget-object v6, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-direct {v5, v6}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/google/android/gms/recovery/e;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/auth/a/c;->a(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v5, v2, v2}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/google/android/gms/auth/firstparty/dataservice/h;

    invoke-direct {v7}, Lcom/google/android/gms/auth/firstparty/dataservice/h;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-static {v2}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->j(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/auth/firstparty/dataservice/h;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-static {v2}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->i(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/auth/firstparty/dataservice/h;->b:Ljava/lang/String;

    iput-object v0, v7, Lcom/google/android/gms/auth/firstparty/dataservice/h;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-static {v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->h(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Z

    move-result v0

    iput-boolean v0, v7, Lcom/google/android/gms/auth/firstparty/dataservice/h;->e:Z

    iput-object v1, v7, Lcom/google/android/gms/auth/firstparty/dataservice/h;->c:Ljava/lang/String;

    iput-object v3, v7, Lcom/google/android/gms/auth/firstparty/dataservice/h;->f:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;

    const/4 v1, 0x0

    iget-object v2, v7, Lcom/google/android/gms/auth/firstparty/dataservice/h;->a:Ljava/lang/String;

    iget-object v3, v7, Lcom/google/android/gms/auth/firstparty/dataservice/h;->b:Ljava/lang/String;

    iget-object v4, v7, Lcom/google/android/gms/auth/firstparty/dataservice/h;->c:Ljava/lang/String;

    iget-object v5, v7, Lcom/google/android/gms/auth/firstparty/dataservice/h;->d:Ljava/lang/String;

    iget-boolean v6, v7, Lcom/google/android/gms/auth/firstparty/dataservice/h;->e:Z

    iget-object v7, v7, Lcom/google/android/gms/auth/firstparty/dataservice/h;->f:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/auth/firstparty/shared/AppDescription;)V

    new-instance v1, Lcom/google/android/gms/auth/firstparty/dataservice/u;

    iget-object v2, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/u;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 504
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/recovery/e;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->setResult(I)V

    iget-object v0, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "BadPhone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-static {v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->g(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    const v2, 0x7f1002c7

    invoke-virtual {v1, v2}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-static {v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->k(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)V

    goto :goto_0

    :cond_1
    const-string v0, "BadEmail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-static {v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->i(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    const v2, 0x7f1003f7

    invoke-virtual {v1, v2}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-static {v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->l(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)V

    goto :goto_0

    :cond_2
    const-string v0, "EmailSameAsPrimary"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    const v1, 0x7f1003f8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-static {v1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->i(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-static {v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->l(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)V

    goto :goto_0

    :cond_3
    const-string v0, "BadCountry"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    const v2, 0x7f10021e

    invoke-virtual {v1, v2}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    const v2, 0x7f1003f1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method protected final onPreExecute()V
    .locals 4

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    iget-object v1, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-virtual {v1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100121

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/recovery/e;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-virtual {v2}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100162

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/recovery/e;->c:Landroid/app/ProgressDialog;

    .line 522
    iget-object v0, p0, Lcom/google/android/gms/recovery/e;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 523
    return-void
.end method
