.class final Lcom/google/android/gms/auth/authzen/keyservice/a;
.super Lcom/google/android/gms/auth/authzen/keyservice/e;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/authzen/keyservice/AuthZenSecretProviderService;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/auth/authzen/keyservice/AuthZenSecretProviderService;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/gms/auth/authzen/keyservice/a;->a:Lcom/google/android/gms/auth/authzen/keyservice/AuthZenSecretProviderService;

    invoke-direct {p0}, Lcom/google/android/gms/auth/authzen/keyservice/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/authzen/keyservice/AuthZenSecretProviderService;B)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/authzen/keyservice/a;-><init>(Lcom/google/android/gms/auth/authzen/keyservice/AuthZenSecretProviderService;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 70
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/auth/authzen/b/d;->a()Lcom/google/android/gms/auth/authzen/b/d;

    move-result-object v1

    .line 71
    sget-object v2, Lcom/google/android/gms/auth/authzen/b/e;->a:Lcom/google/android/gms/auth/authzen/b/e;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/auth/authzen/b/d;->a(Lcom/google/android/gms/auth/authzen/b/e;Ljava/lang/String;)Z

    .line 72
    new-instance v1, Lcom/google/android/gms/auth/authzen/keyservice/g;

    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/keyservice/a;->a:Lcom/google/android/gms/auth/authzen/keyservice/AuthZenSecretProviderService;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/authzen/keyservice/g;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {v1, p1}, Lcom/google/android/gms/auth/authzen/keyservice/g;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/authzen/keyservice/b;

    move-result-object v1

    .line 74
    if-nez v1, :cond_0

    .line 75
    const-string v1, "AuthZenSecretProviderService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get key for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    return v0

    .line 78
    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/auth/authzen/keyservice/b;->a:Lcom/google/android/gms/auth/authzen/keyservice/c;

    iget-object v2, v2, Lcom/google/android/gms/auth/authzen/keyservice/c;->b:Ljavax/crypto/SecretKey;

    .line 79
    invoke-static {v2}, Lcom/google/android/gms/auth/authzen/keyservice/AuthZenSecretProviderService;->a(Ljavax/crypto/SecretKey;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    .line 80
    if-nez v2, :cond_1

    .line 81
    const-string v1, "AuthZenSecretProviderService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to derive secret for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    const-string v2, "AuthZenSecretProviderService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected exception for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 84
    :cond_1
    :try_start_1
    const-string v3, "otp_secret"

    invoke-virtual {v2}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 85
    const-string v2, "creation_time_millis"

    iget-object v1, v1, Lcom/google/android/gms/auth/authzen/keyservice/b;->a:Lcom/google/android/gms/auth/authzen/keyservice/c;

    iget-wide v4, v1, Lcom/google/android/gms/auth/authzen/keyservice/c;->c:J

    invoke-virtual {p2, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    const/4 v0, 0x1

    goto :goto_0
.end method
