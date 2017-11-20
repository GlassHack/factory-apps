.class public final Lcom/google/android/gms/auth/be/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/be/b/e;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "AuthZenSecretProvider"

    iput-object v0, p0, Lcom/google/android/gms/auth/be/b/a;->a:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/auth/be/b/a;->b:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/auth/be/b/d;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 32
    new-instance v1, Lcom/google/android/gms/common/a;

    invoke-direct {v1}, Lcom/google/android/gms/common/a;-><init>()V

    .line 33
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.auth.otp.OTP_SECRET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object v3, p0, Lcom/google/android/gms/auth/be/b/a;->b:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v1, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 35
    const-string v1, "AuthZenSecretProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to bind service "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    return-object v0

    .line 40
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/a;->a()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/authzen/keyservice/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/auth/authzen/keyservice/d;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 44
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 46
    :try_start_1
    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/auth/authzen/keyservice/d;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    const-string v1, "AuthZenSecretProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to retrieve secret for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    const-string v2, "AuthZenSecretProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to retrieve secret for "

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

    .line 54
    :cond_1
    const-string v0, "otp_secret"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 55
    const-string v0, "creation_time_millis"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 57
    const-string v0, "AuthZenSecretProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got secret for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with creation time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lcom/google/android/gms/auth/be/b/d;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/gms/auth/be/b/d;-><init>(Ljava/lang/String;[BJ)V

    goto :goto_0

    .line 42
    :catch_1
    move-exception v1

    goto :goto_0
.end method
