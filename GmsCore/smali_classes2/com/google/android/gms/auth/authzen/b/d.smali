.class public final Lcom/google/android/gms/auth/authzen/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/auth/authzen/b/d;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/auth/authzen/keyservice/g;

.field private final d:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/gms/auth/authzen/b/d;->b:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/google/android/gms/auth/authzen/keyservice/g;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/authzen/keyservice/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/authzen/b/d;->c:Lcom/google/android/gms/auth/authzen/keyservice/g;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/authzen/b/d;->d:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public static declared-synchronized a()Lcom/google/android/gms/auth/authzen/b/d;
    .locals 3

    .prologue
    .line 58
    const-class v1, Lcom/google/android/gms/auth/authzen/b/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/authzen/b/d;->a:Lcom/google/android/gms/auth/authzen/b/d;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/google/android/gms/auth/authzen/b/d;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/authzen/b/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/auth/authzen/b/d;->a:Lcom/google/android/gms/auth/authzen/b/d;

    .line 61
    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/authzen/b/d;->a:Lcom/google/android/gms/auth/authzen/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/google/android/gms/auth/authzen/b/e;Landroid/accounts/Account;Ljava/security/KeyPair;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    sget-object v0, Lcom/google/android/gms/auth/authzen/b/e;->a:Lcom/google/android/gms/auth/authzen/b/e;

    if-ne p1, v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/b/d;->c:Lcom/google/android/gms/auth/authzen/keyservice/g;

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/auth/authzen/keyservice/g;->b:Lcom/google/android/gms/auth/authzen/keyservice/j;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/authzen/keyservice/j;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    const-string v3, "AuthZen"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Too many encryption keys for the same account: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/authzen/keyservice/b;

    .line 154
    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/auth/authzen/keyservice/b;->a:Lcom/google/android/gms/auth/authzen/keyservice/c;

    iget-wide v4, v0, Lcom/google/android/gms/auth/authzen/keyservice/c;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    move v0, v1

    .line 177
    :goto_1
    return v0

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :cond_2
    const-string v0, "AuthZen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No encryption key found or existing keys are expired for account "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_3
    new-instance v0, Lcom/google/android/gms/auth/authzen/b/a;

    iget-object v3, p0, Lcom/google/android/gms/auth/authzen/b/d;->b:Landroid/content/Context;

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/auth/authzen/b/d;->c:Lcom/google/android/gms/auth/authzen/keyservice/g;

    invoke-direct {v0, v3, v4, p3, v5}, Lcom/google/android/gms/auth/authzen/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/security/KeyPair;Lcom/google/android/gms/auth/authzen/keyservice/g;)V

    .line 170
    :try_start_0
    const-string v3, "AuthZen"

    const-string v4, "Starting Enrollment..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v0}, Lcom/google/android/gms/auth/authzen/b/a;->a()Lcom/google/android/gms/auth/authzen/keyservice/b;

    move-result-object v0

    .line 172
    const-string v3, "AuthZen"

    const-string v4, "Enrollment successful!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v3, "AuthZen"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Key: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/authzen/keyservice/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/gms/auth/authzen/b/b; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 174
    goto :goto_1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    const-string v1, "AuthZen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to do enrollment for account: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    .line 177
    goto :goto_1
.end method

.method private static a(Ljava/security/KeyPair;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 183
    :try_start_0
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    instance-of v2, v1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v2, :cond_0

    sget-object v1, Lcom/google/m/b/a/e/c;->b:Lcom/google/m/b/a/e/c;

    .line 184
    :goto_0
    invoke-static {}, Lcom/google/m/b/a/d/j;->a()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/google/m/b/a/e/c;->c:Lcom/google/m/b/a/e/c;

    if-ne v1, v2, :cond_2

    .line 195
    :goto_1
    return v0

    .line 183
    :cond_0
    instance-of v1, v1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/m/b/a/e/c;->c:Lcom/google/m/b/a/e/c;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Unsupported key type"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    const-string v2, "AuthZen"

    const-string v3, "Signing Key found to be invalid"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 195
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/authzen/b/e;)V
    .locals 6

    .prologue
    .line 65
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/b/d;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 66
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/auth/authzen/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const-string v0, "AuthZen"

    const-string v2, "Authzen is disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    monitor-exit v1

    .line 105
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/b/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/util/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 75
    :cond_1
    :try_start_1
    const-string v0, "AuthZen"

    const-string v2, "Fetching signing key..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/b/d;->c:Lcom/google/android/gms/auth/authzen/keyservice/g;

    const-string v2, "device_key"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/authzen/keyservice/g;->a(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v2

    .line 77
    if-nez v2, :cond_2

    .line 78
    const-string v0, "AuthZen"

    const-string v2, "Unable to get signing key. Stopping authzen registeration."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/auth/authzen/keyservice/h; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 81
    :cond_2
    :try_start_3
    invoke-static {v2}, Lcom/google/android/gms/auth/authzen/b/d;->a(Ljava/security/KeyPair;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 82
    const-string v0, "AuthZen"

    const-string v2, "SigningKey found depricated. Wiping all keys..."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/b/d;->c:Lcom/google/android/gms/auth/authzen/keyservice/g;

    iget-object v2, v0, Lcom/google/android/gms/auth/authzen/keyservice/g;->b:Lcom/google/android/gms/auth/authzen/keyservice/j;

    const-string v3, "AuthZen"

    const-string v4, "Deleting all SigningKeys"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "signingkeys"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/authzen/keyservice/j;->d(Ljava/lang/String;)I

    move-result v2

    const-string v3, "AuthZen"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "AuthZen"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Count of SigningKeys deleted: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, v0, Lcom/google/android/gms/auth/authzen/keyservice/g;->b:Lcom/google/android/gms/auth/authzen/keyservice/j;

    const-string v2, "AuthZen"

    const-string v3, "Deleting all Encryption Keys"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "encryptionkeys"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/authzen/keyservice/j;->d(Ljava/lang/String;)I

    move-result v0

    const-string v2, "AuthZen"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "AuthZen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Count of Encryption keys deleted: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/gms/auth/authzen/keyservice/h; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    :cond_4
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 86
    :cond_5
    :try_start_5
    const-string v0, "AuthZen"

    const-string v3, "Signing key fetched successfuly!"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/b/d;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/auth/authzen/b/d;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/util/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 90
    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/gms/auth/authzen/b/d;->a(Lcom/google/android/gms/auth/authzen/b/e;Landroid/accounts/Account;Ljava/security/KeyPair;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/google/android/gms/auth/authzen/keyservice/h; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    :try_start_6
    const-string v2, "AuthZen"

    const-string v3, "Error while fetching key."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    :cond_6
    :goto_2
    monitor-exit v1

    goto/16 :goto_0

    .line 94
    :catch_1
    move-exception v0

    .line 95
    const-string v2, "AuthZen"

    const-string v3, "Error while creating key."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 96
    :catch_2
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/NoSuchAlgorithmException;

    if-eqz v2, :cond_7

    .line 100
    const-string v2, "AuthZen"

    const-string v3, "Error getting algorithm."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 102
    :cond_7
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public final a(Lcom/google/android/gms/auth/authzen/b/e;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 109
    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/b/d;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 110
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/auth/authzen/a/a;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const-string v1, "AuthZen"

    const-string v3, "Authzen is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    monitor-exit v2

    .line 142
    :goto_0
    return v0

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/b/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/util/a;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    monitor-exit v2

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 118
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/b/d;->b:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/google/android/gms/common/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 119
    const-string v1, "AuthZen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot initiate enrollment because account does not exist: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :cond_2
    :try_start_2
    const-string v1, "AuthZen"

    const-string v3, "Fetching signing key..."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/b/d;->c:Lcom/google/android/gms/auth/authzen/keyservice/g;

    const-string v3, "device_key"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/auth/authzen/keyservice/g;->a(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v1

    .line 127
    if-nez v1, :cond_3

    .line 128
    const-string v1, "AuthZen"

    const-string v3, "Unable to get signing key. Stopping authzen registeration."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/gms/auth/authzen/keyservice/h; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 131
    :cond_3
    :try_start_4
    const-string v3, "AuthZen"

    const-string v4, "Signing key fetched successfuly!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v3, Landroid/accounts/Account;

    const-string v4, "com.google"

    invoke-direct {v3, p2, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, p1, v3, v1}, Lcom/google/android/gms/auth/authzen/b/d;->a(Lcom/google/android/gms/auth/authzen/b/e;Landroid/accounts/Account;Ljava/security/KeyPair;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/android/gms/auth/authzen/keyservice/h; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    :try_start_5
    monitor-exit v2

    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    :goto_1
    const-string v3, "AuthZen"

    const-string v4, "Error while creating key."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    monitor-exit v2

    goto :goto_0

    .line 137
    :catch_1
    move-exception v1

    .line 138
    invoke-virtual {v1}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/security/NoSuchAlgorithmException;

    if-eqz v3, :cond_4

    .line 141
    const-string v3, "AuthZen"

    const-string v4, "Error getting algorithm."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    monitor-exit v2

    goto :goto_0

    .line 144
    :cond_4
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 134
    :catch_2
    move-exception v1

    goto :goto_1
.end method
