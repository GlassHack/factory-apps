.class public final Lcom/google/android/gms/auth/login/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/ah;-><init>(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    .line 54
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/auth/login/LoginActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 248
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/google/android/gms/auth/login/ah;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "request_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    return-object p0
.end method

.method public final a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/login/ah;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "options"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 134
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/login/ah;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "calling_app_description"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 98
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;)Lcom/google/android/gms/auth/login/ah;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "facl"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;)Lcom/google/android/gms/auth/login/ah;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "pacl"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 143
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/login/ah;
    .locals 2

    .prologue
    .line 169
    invoke-static {p1}, Lcom/google/android/gms/auth/a/h;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/h;->a(Landroid/os/Bundle;)V

    .line 170
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-object p0
.end method

.method public final a(Ljava/util/ArrayList;)Lcom/google/android/gms/auth/login/ah;
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "allowed_domains"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 211
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/auth/login/ah;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "suppress_progress_screen"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/auth/login/ah;
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "is_browser_only"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-object p0
.end method

.method public final b(Z)Lcom/google/android/gms/auth/login/ah;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "is_setup_wizard"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    return-object p0
.end method

.method public final c()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "calling_app_description"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-object p0
.end method

.method public final c(Z)Lcom/google/android/gms/auth/login/ah;
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "allow_credit_card"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 229
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "service"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-object p0
.end method

.method public final d()Z
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "suppress_progress_screen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "service"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "pacl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    return-object v0
.end method

.method public final h()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "grant_credential_response_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public final i()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 178
    iget-object v1, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v2, "request_type"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final j()I
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "request_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final k()Lcom/google/android/gms/auth/login/ah;
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "is_minute_maid"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 202
    return-object p0
.end method

.method public final l()Z
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ah;->a:Landroid/os/Bundle;

    const-string v1, "is_minute_maid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
