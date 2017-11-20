.class public Lcom/google/android/gms/auth/trustagent/ConfirmUserCredentialAndStartActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/auth/trustagent/ConfirmUserCredentialAndStartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    const-string v1, "google.gmscore.auth.confirm_user_credentials.INTENT_TO_START"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 33
    if-eqz p2, :cond_0

    .line 34
    const-string v1, "google.gmscore.auth.confirm_user_credentials.TITLE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 70
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 71
    const-string v0, "Coffee - ConfirmUserCredentialAndStartActivity"

    const-string v1, "User authenticated, starting intent."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ConfirmUserCredentialAndStartActivity;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/ConfirmUserCredentialAndStartActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/ConfirmUserCredentialAndStartActivity;->finish()V

    .line 77
    return-void

    .line 74
    :cond_0
    const-string v0, "Coffee - ConfirmUserCredentialAndStartActivity"

    const-string v1, "User failed to authenticate."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/ConfirmUserCredentialAndStartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "google.gmscore.auth.confirm_user_credentials.INTENT_TO_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/ConfirmUserCredentialAndStartActivity;->a:Landroid/content/Intent;

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ConfirmUserCredentialAndStartActivity;->a:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 48
    const-string v0, "Coffee - ConfirmUserCredentialAndStartActivity"

    const-string v1, "No intent to start specified in activity, exiting."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/ConfirmUserCredentialAndStartActivity;->finish()V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/ConfirmUserCredentialAndStartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "google.gmscore.auth.confirm_user_credentials.TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/ConfirmUserCredentialAndStartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "google.gmscore.auth.confirm_user_credentials.DETAILS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.CONFIRM_DEVICE_CREDENTIAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    const-string v3, "android.app.extra.TITLE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v0, "android.app.extra.DESCRIPTION"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/auth/trustagent/ConfirmUserCredentialAndStartActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    const-string v0, "Coffee - ConfirmUserCredentialAndStartActivity"

    const-string v1, "Activity to check user credential not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/ConfirmUserCredentialAndStartActivity;->finish()V

    goto :goto_0
.end method
