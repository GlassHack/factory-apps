.class final Lcom/google/android/gms/auth/ad;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/TokenActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/TokenActivity;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/android/gms/auth/ad;->a:Lcom/google/android/gms/auth/TokenActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 223
    new-instance v2, Lcom/google/android/gms/auth/e;

    iget-object v0, p0, Lcom/google/android/gms/auth/ad;->a:Lcom/google/android/gms/auth/TokenActivity;

    invoke-direct {v2, v0}, Lcom/google/android/gms/auth/e;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/ad;->a:Lcom/google/android/gms/auth/TokenActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/TokenActivity;->a(Lcom/google/android/gms/auth/TokenActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    iget-object v3, p0, Lcom/google/android/gms/auth/ad;->a:Lcom/google/android/gms/auth/TokenActivity;

    invoke-static {v3}, Lcom/google/android/gms/auth/TokenActivity;->a(Lcom/google/android/gms/auth/TokenActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v1, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;

    invoke-direct {v1}, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/auth/ad;->a:Lcom/google/android/gms/auth/TokenActivity;

    invoke-static {v3}, Lcom/google/android/gms/auth/TokenActivity;->e(Lcom/google/android/gms/auth/TokenActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/auth/ad;->a:Lcom/google/android/gms/auth/TokenActivity;

    invoke-static {v3}, Lcom/google/android/gms/auth/TokenActivity;->d(Lcom/google/android/gms/auth/TokenActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/auth/ad;->a:Lcom/google/android/gms/auth/TokenActivity;

    invoke-static {v3}, Lcom/google/android/gms/auth/TokenActivity;->c(Lcom/google/android/gms/auth/TokenActivity;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/ad;->a:Lcom/google/android/gms/auth/TokenActivity;

    invoke-static {v1}, Lcom/google/android/gms/auth/TokenActivity;->c(Lcom/google/android/gms/auth/TokenActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "suppressProgressScreen"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->a(Z)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/ad;->a:Lcom/google/android/gms/auth/TokenActivity;

    invoke-static {v1}, Lcom/google/android/gms/auth/TokenActivity;->b(Lcom/google/android/gms/auth/TokenActivity;)Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/e;->a(Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 223
    check-cast p1, Landroid/app/PendingIntent;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "GLSActivity"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/android/gms/auth/TokenActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Initiating user recovery workflow (%s)[account; %s, service: %s, callingApp: %s]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/auth/ad;->a:Lcom/google/android/gms/auth/TokenActivity;

    invoke-static {v2}, Lcom/google/android/gms/auth/TokenActivity;->f(Lcom/google/android/gms/auth/TokenActivity;)Lcom/google/android/gms/auth/a/c;

    invoke-static {p1}, Lcom/google/android/gms/auth/a/c;->b(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/auth/ad;->a:Lcom/google/android/gms/auth/TokenActivity;

    invoke-static {v3}, Lcom/google/android/gms/auth/TokenActivity;->e(Lcom/google/android/gms/auth/TokenActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/google/android/gms/auth/ad;->a:Lcom/google/android/gms/auth/TokenActivity;

    invoke-static {v2}, Lcom/google/android/gms/auth/TokenActivity;->d(Lcom/google/android/gms/auth/TokenActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/auth/ad;->a:Lcom/google/android/gms/auth/TokenActivity;

    invoke-static {v3}, Lcom/google/android/gms/auth/TokenActivity;->b(Lcom/google/android/gms/auth/TokenActivity;)Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLSActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/ad;->a:Lcom/google/android/gms/auth/TokenActivity;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/auth/TokenActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/android/gms/auth/TokenActivity;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Unable to initiate auth delegate workflow!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
