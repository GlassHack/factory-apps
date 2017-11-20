.class final Lcom/google/android/gms/recovery/d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

.field private final b:Landroid/os/Bundle;

.field private c:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/recovery/AccountRecoveryActivity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 593
    iput-object p1, p0, Lcom/google/android/gms/recovery/d;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 594
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/android/gms/recovery/d;->b:Landroid/os/Bundle;

    .line 595
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/recovery/AccountRecoveryActivity;Landroid/os/Bundle;B)V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/recovery/d;-><init>(Lcom/google/android/gms/recovery/AccountRecoveryActivity;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/android/gms/recovery/d;->b:Landroid/os/Bundle;

    const-string v1, "Email"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/auth/a/c;

    iget-object v2, p0, Lcom/google/android/gms/recovery/d;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/android/gms/recovery/d;->b:Landroid/os/Bundle;

    sget-object v3, Lcom/google/android/gms/auth/r;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/a/c;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-direct {v4, v2, v1, v3, v3}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;

    const/4 v2, 0x1

    const-string v3, "activity"

    invoke-direct {v1, v0, v2, v4, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;-><init>(Ljava/lang/String;ZLcom/google/android/gms/auth/firstparty/shared/AppDescription;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/u;

    iget-object v2, p0, Lcom/google/android/gms/recovery/d;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/u;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 588
    check-cast p1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

    iget-object v0, p0, Lcom/google/android/gms/recovery/d;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "BadAuthentication"

    iget-object v1, p1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/recovery/d;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->setResult(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/recovery/d;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->finish()V

    :goto_1
    return-void

    :cond_0
    const-string v0, "BadRequest"

    iget-object v1, p1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/recovery/d;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->setResult(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/recovery/d;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->setResult(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->b:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

    iget-boolean v0, v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->e:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/recovery/d;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->setResult(I)V

    iget-object v0, p0, Lcom/google/android/gms/recovery/d;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->finish()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/recovery/d;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    iget-object v1, p1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->a(Lcom/google/android/gms/recovery/AccountRecoveryActivity;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/recovery/d;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    iget-object v0, p0, Lcom/google/android/gms/recovery/d;->b:Landroid/os/Bundle;

    invoke-static {v0, p1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->a(Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;)V

    iget-object v0, p0, Lcom/google/android/gms/recovery/d;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    iget-object v1, p0, Lcom/google/android/gms/recovery/d;->b:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->a(Lcom/google/android/gms/recovery/AccountRecoveryActivity;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method protected final onPreExecute()V
    .locals 4

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/android/gms/recovery/d;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    iget-object v1, p0, Lcom/google/android/gms/recovery/d;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-virtual {v1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100121

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/recovery/d;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-virtual {v2}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100161

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/recovery/d;->c:Landroid/app/ProgressDialog;

    .line 606
    iget-object v0, p0, Lcom/google/android/gms/recovery/d;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 607
    return-void
.end method
