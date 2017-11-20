.class public final Lcom/google/android/gms/auth/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/accounts/Account;

.field public final b:Landroid/accounts/AccountManager;

.field public final c:Lcom/google/android/gms/auth/a/c;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/accounts/Account;Landroid/accounts/AccountManager;Lcom/google/android/gms/auth/a/c;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/google/android/gms/auth/a/d;->b:Landroid/accounts/AccountManager;

    .line 83
    iput-object p1, p0, Lcom/google/android/gms/auth/a/d;->a:Landroid/accounts/Account;

    .line 84
    iput-object p3, p0, Lcom/google/android/gms/auth/a/d;->c:Lcom/google/android/gms/auth/a/c;

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/auth/a/d;->b:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gms/auth/a/d;->a:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/a/d;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/auth/a/d;->b:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gms/auth/a/d;->a:Landroid/accounts/Account;

    const-string v2, "oauthAccessToken"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-gt v1, v2, :cond_3

    iput-object v0, p0, Lcom/google/android/gms/auth/a/d;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/auth/a/d;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/a/d;->b:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/gms/auth/a/d;->a:Landroid/accounts/Account;

    invoke-virtual {v1, v2, v0}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    :cond_0
    iput-object v5, p0, Lcom/google/android/gms/auth/a/d;->e:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/a/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/auth/a/d;->e:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/auth/a/d;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/a/d;->d:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/gms/auth/a/d;->e:Ljava/lang/String;

    .line 87
    :cond_2
    return-void

    .line 86
    :cond_3
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/auth/a/d;->b:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/gms/auth/a/d;->a:Landroid/accounts/Account;

    const-string v3, "oauthAccessToken"

    const-string v4, "1"

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/a/d;->b:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/gms/auth/a/d;->a:Landroid/accounts/Account;

    invoke-virtual {v1, v2, v0}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/a/d;->d:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/gms/auth/a/d;->e:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/auth/a/d;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/a/d;->d:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/gms/auth/a/d;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/a/d;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v3

    .line 58
    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    .line 60
    invoke-static {v3, p1}, Lcom/google/android/gms/common/util/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 61
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, v0

    .line 66
    :goto_0
    if-nez v2, :cond_1

    .line 67
    const-string v0, "GLSUser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t find a google account named: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 71
    :goto_1
    return-object v0

    .line 70
    :cond_1
    new-instance v1, Lcom/google/android/gms/auth/a/c;

    invoke-direct {v1, v3}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v0, Lcom/google/android/gms/auth/a/d;

    invoke-direct {v0, v2, v4, v1}, Lcom/google/android/gms/auth/a/d;-><init>(Landroid/accounts/Account;Landroid/accounts/AccountManager;Lcom/google/android/gms/auth/a/c;)V

    goto :goto_1

    :cond_2
    move-object v2, v1

    goto :goto_0
.end method

.method public static a(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/gms/auth/a/d;->b:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gms/auth/a/d;->a:Landroid/accounts/Account;

    const-string v2, "oauthAccessToken"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
