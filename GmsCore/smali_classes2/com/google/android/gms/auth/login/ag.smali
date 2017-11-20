.class final Lcom/google/android/gms/auth/login/ag;
.super Lcom/google/android/gms/auth/login/av;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/login/LoginActivity;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/login/LoginActivity;Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 1

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/gms/auth/login/ag;->a:Lcom/google/android/gms/auth/login/LoginActivity;

    .line 103
    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/auth/login/av;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 110
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/google/android/gms/auth/login/ag;->b:I

    .line 111
    return-void
.end method


# virtual methods
.method protected final synthetic onCancelled(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ag;->a:Lcom/google/android/gms/auth/login/LoginActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/login/LoginActivity;->a(Lcom/google/android/gms/auth/login/LoginActivity;)Lcom/google/android/gms/auth/login/ag;

    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 92
    check-cast p1, Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/av;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "token_response"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GLSActivity"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/auth/login/ag;->a:Lcom/google/android/gms/auth/login/LoginActivity;

    iget-object v3, v3, Lcom/google/android/gms/auth/login/LoginActivity;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " #onPostExecute(Intent) - status = %s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GLSActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "token_response"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/auth/login/ag;->a:Lcom/google/android/gms/auth/login/LoginActivity;

    iget v2, p0, Lcom/google/android/gms/auth/login/ag;->b:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/auth/login/LoginActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/ag;->a:Lcom/google/android/gms/auth/login/LoginActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/login/LoginActivity;->a(Lcom/google/android/gms/auth/login/LoginActivity;)Lcom/google/android/gms/auth/login/ag;

    return-void
.end method
