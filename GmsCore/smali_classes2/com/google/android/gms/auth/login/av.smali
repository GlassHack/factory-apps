.class public abstract Lcom/google/android/gms/auth/login/av;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/gms/auth/firstparty/dataservice/u;

.field private final f:Z

.field private final g:Z

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/login/av;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/login/av;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gms/auth/login/av;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <init> tokenRequest cannot be null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/av;->b:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    .line 55
    iput-object p3, p0, Lcom/google/android/gms/auth/login/av;->d:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/google/android/gms/auth/login/av;->c:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/u;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/login/av;->e:Lcom/google/android/gms/auth/firstparty/dataservice/u;

    .line 58
    iput-boolean p5, p0, Lcom/google/android/gms/auth/login/av;->f:Z

    .line 59
    iput-boolean p6, p0, Lcom/google/android/gms/auth/login/av;->g:Z

    .line 60
    iput-boolean p7, p0, Lcom/google/android/gms/auth/login/av;->h:Z

    .line 61
    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 1

    .prologue
    .line 34
    const-string v0, "token_response"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    return-object v0
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/auth/login/av;->b:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->n()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/auth/login/av;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/login/av;->d:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 71
    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/auth/login/av;->b:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/auth/login/av;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/android/gms/auth/login/av;->g:Z

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->a(Z)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/auth/login/av;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v0

    .line 76
    iget-object v3, p0, Lcom/google/android/gms/auth/login/av;->b:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->f()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 78
    new-instance v3, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    invoke-direct {v3}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/auth/login/av;->b:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    invoke-virtual {v4}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->n()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/auth/login/av;->b:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->o()Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/android/gms/auth/login/av;->f:Z

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->c(Z)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    move-result-object v0

    .line 83
    iget-object v3, p0, Lcom/google/android/gms/auth/login/av;->e:Lcom/google/android/gms/auth/firstparty/dataservice/u;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    .line 97
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/auth/login/av;->b:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    .line 100
    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 101
    iget-object v3, p0, Lcom/google/android/gms/auth/login/av;->b:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    .line 106
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    sget-object v3, Lcom/google/android/gms/auth/a/h;->b:Lcom/google/android/gms/auth/a/h;

    iget-object v3, v3, Lcom/google/android/gms/auth/a/h;->e:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v4

    if-ne v3, v4, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/google/android/gms/auth/login/av;->h:Z

    if-nez v3, :cond_3

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/auth/login/av;->e:Lcom/google/android/gms/auth/firstparty/dataservice/u;

    iget-object v3, p0, Lcom/google/android/gms/auth/login/av;->b:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    .line 111
    iget-object v3, p0, Lcom/google/android/gms/auth/login/av;->b:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    .line 113
    :cond_3
    const-string v1, "token_response"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 114
    return-object v2

    .line 85
    :cond_4
    iget-boolean v3, p0, Lcom/google/android/gms/auth/login/av;->h:Z

    if-eqz v3, :cond_5

    .line 86
    iget-object v3, p0, Lcom/google/android/gms/auth/login/av;->e:Lcom/google/android/gms/auth/firstparty/dataservice/u;

    new-instance v4, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;

    invoke-direct {v4}, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/auth/login/av;->b:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    invoke-virtual {v4}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->o()Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/auth/login/av;->e:Lcom/google/android/gms/auth/firstparty/dataservice/u;

    new-instance v4, Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;

    invoke-direct {v4}, Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/auth/login/av;->b:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    invoke-virtual {v4}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->o()Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/login/av;->a([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
