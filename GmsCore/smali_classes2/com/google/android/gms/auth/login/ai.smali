.class final Lcom/google/android/gms/auth/login/ai;
.super Lcom/google/android/gms/auth/login/av;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/login/LoginActivityTask;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/login/LoginActivityTask;Landroid/content/Context;Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 8

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/android/gms/auth/login/ai;->a:Lcom/google/android/gms/auth/login/LoginActivityTask;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/auth/login/av;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/av;->a([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v1

    .line 217
    const-string v0, "token_response"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 218
    sget-object v2, Lcom/google/android/gms/auth/a/h;->b:Lcom/google/android/gms/auth/a/h;

    iget-object v2, v2, Lcom/google/android/gms/auth/a/h;->e:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v0

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/login/ai;->a:Lcom/google/android/gms/auth/login/LoginActivityTask;

    invoke-static {v0}, Lcom/google/android/gms/auth/login/LoginActivityTask;->a(Lcom/google/android/gms/auth/login/LoginActivityTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string v0, "GLSActivity"

    const-string v2, "Fetching market offers"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v0, Lcom/google/android/gms/auth/login/a/b;

    iget-object v2, p0, Lcom/google/android/gms/auth/login/ai;->a:Lcom/google/android/gms/auth/login/LoginActivityTask;

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/login/a/b;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/android/gms/auth/login/ai;->a:Lcom/google/android/gms/auth/login/LoginActivityTask;

    invoke-static {v2}, Lcom/google/android/gms/auth/login/LoginActivityTask;->b(Lcom/google/android/gms/auth/login/LoginActivityTask;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/a/b;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 224
    :cond_0
    return-object v1
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/login/ai;->a([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 213
    check-cast p1, Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/av;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "token_response"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-nez v0, :cond_0

    const-string v0, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/auth/login/ai;->a:Lcom/google/android/gms/auth/login/LoginActivityTask;

    iget-object v3, v3, Lcom/google/android/gms/auth/login/LoginActivityTask;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " #onPostExecute(Intent) - No TokenResponse!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p1, v1}, Lcom/google/android/gms/auth/login/a/b;->a(Landroid/os/Bundle;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/ai;->a:Lcom/google/android/gms/auth/login/LoginActivityTask;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/auth/login/LoginActivityTask;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/ai;->a:Lcom/google/android/gms/auth/login/LoginActivityTask;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/LoginActivityTask;->finish()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/auth/login/ai;->a:Lcom/google/android/gms/auth/login/LoginActivityTask;

    iget-object v3, v3, Lcom/google/android/gms/auth/login/LoginActivityTask;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " #onPostExecute(Intent) - status is null!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "GLSActivity"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/auth/login/ai;->a:Lcom/google/android/gms/auth/login/LoginActivityTask;

    iget-object v4, v4, Lcom/google/android/gms/auth/login/LoginActivityTask;->x:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " #onPostExecute(Intent) - status = %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GLSActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v2, "token_response"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method
