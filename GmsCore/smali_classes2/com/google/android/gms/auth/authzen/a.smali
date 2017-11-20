.class public final Lcom/google/android/gms/auth/authzen/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private final b:Lcom/google/android/gms/auth/authzen/transaction/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/authzen/a;->a:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/authzen/transaction/f;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/authzen/transaction/f;

    iput-object v0, p0, Lcom/google/android/gms/auth/authzen/a;->b:Lcom/google/android/gms/auth/authzen/transaction/f;

    .line 78
    return-void
.end method

.method private static a()J
    .locals 6

    .prologue
    .line 230
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 231
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    .line 232
    const-wide/32 v2, 0x3dcc500

    const-wide v4, 0x4184997000000000L    # 4.32E7

    mul-double/2addr v0, v4

    double-to-long v0, v0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static a(Landroid/content/Context;J)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v2, v0, p1

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.auth.authzen.CHECK_REGISTRATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 221
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 222
    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 223
    return-void
.end method

.method private static a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 173
    const-string v0, "com.google.android.gms.auth.category.ACCOUNT_ADDED"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "added"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    invoke-static {}, Lcom/google/android/gms/auth/authzen/b/d;->a()Lcom/google/android/gms/auth/authzen/b/d;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/auth/authzen/b/e;->b:Lcom/google/android/gms/auth/authzen/b/e;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/auth/authzen/b/d;->a(Lcom/google/android/gms/auth/authzen/b/e;Ljava/lang/String;)Z

    goto :goto_0

    .line 180
    :cond_0
    const-string v0, "com.google.android.gms.auth.category.ACCOUNT_MUTATED"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    const-string v0, "mutated"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    invoke-static {}, Lcom/google/android/gms/auth/authzen/b/d;->a()Lcom/google/android/gms/auth/authzen/b/d;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/auth/authzen/b/e;->b:Lcom/google/android/gms/auth/authzen/b/e;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/auth/authzen/b/d;->a(Lcom/google/android/gms/auth/authzen/b/e;Ljava/lang/String;)Z

    goto :goto_1

    .line 193
    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 214
    :goto_0
    return v0

    .line 207
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/util/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 210
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 214
    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v1, 0x1

    .line 82
    sget-object v0, Lcom/google/android/gms/auth/authzen/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 84
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v2, "P"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 86
    const-string v0, "P"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "P"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "AuthZen"

    const-string v1, "Received an empty gcm message"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/android/gms/auth/authzen/a;->a()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/auth/authzen/a;->a(Landroid/content/Context;J)V

    .line 107
    sget-object v0, Lcom/google/android/gms/auth/authzen/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 108
    return-void

    .line 86
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/google/android/gms/common/util/g;->b(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid base64 encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/google/protobuf/a/e; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AuthZen"

    const-string v2, "Couldn\'t parse proto"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/auth/authzen/a;->a()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/auth/authzen/a;->a(Landroid/content/Context;J)V

    .line 107
    sget-object v1, Lcom/google/android/gms/auth/authzen/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 86
    :cond_3
    if-nez v0, :cond_4

    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_3
    .catch Lcom/google/protobuf/a/e; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "AuthZen"

    const-string v2, "Crypto key problem"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_4
    :try_start_5
    invoke-static {v0}, Lcom/google/m/b/a/e/p;->a([B)Lcom/google/m/b/a/e/p;

    move-result-object v2

    invoke-static {v2}, Lcom/google/m/b/a/e/i;->a(Lcom/google/m/b/a/e/p;)Lcom/google/m/b/a/e/n;

    move-result-object v2

    iget-object v2, v2, Lcom/google/m/b/a/e/n;->f:Lcom/google/protobuf/a/a;

    invoke-virtual {v2}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v2

    if-eqz v2, :cond_5

    array-length v3, v2

    if-nez v3, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing key handle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Lcom/google/protobuf/a/e; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_2
    move-exception v0

    :try_start_6
    const-string v1, "AuthZen"

    const-string v2, "Crypto signature problem"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :cond_6
    :try_start_7
    new-instance v3, Lcom/google/android/gms/auth/authzen/keyservice/g;

    invoke-direct {v3, p1}, Lcom/google/android/gms/auth/authzen/keyservice/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/google/android/gms/auth/authzen/keyservice/g;->a([B)Lcom/google/android/gms/auth/authzen/keyservice/b;

    move-result-object v3

    if-nez v3, :cond_7

    const-string v0, "AuthZen"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "No encryption key found for given handle: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Lcom/google/protobuf/a/e; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_7
    :try_start_9
    iget-object v4, v3, Lcom/google/android/gms/auth/authzen/keyservice/b;->a:Lcom/google/android/gms/auth/authzen/keyservice/c;

    iget-object v4, v4, Lcom/google/android/gms/auth/authzen/keyservice/c;->a:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/google/android/gms/auth/authzen/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v0, "AuthZen"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Account does not exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/google/android/gms/auth/authzen/keyservice/b;->a:Lcom/google/android/gms/auth/authzen/keyservice/c;

    iget-object v2, v2, Lcom/google/android/gms/auth/authzen/keyservice/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Lcom/google/protobuf/a/e; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :catch_4
    move-exception v0

    :try_start_a
    const-string v1, "AuthZen"

    const-string v2, "Error during decoding"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    :cond_8
    :try_start_b
    iget-object v4, v3, Lcom/google/android/gms/auth/authzen/keyservice/b;->a:Lcom/google/android/gms/auth/authzen/keyservice/c;

    iget-object v4, v4, Lcom/google/android/gms/auth/authzen/keyservice/c;->b:Ljavax/crypto/SecretKey;

    invoke-static {v0, v4}, Lcom/google/m/b/a/d/s;->a([BLjavax/crypto/SecretKey;)Lcom/google/m/b/a/d/t;

    move-result-object v0

    sget-object v4, Lcom/google/m/b/a/d/u;->c:Lcom/google/m/b/a/d/u;

    iget-object v5, v0, Lcom/google/m/b/a/d/t;->a:Lcom/google/m/b/a/d/u;

    if-ne v4, v5, :cond_1b

    iget-object v4, p0, Lcom/google/android/gms/auth/authzen/a;->b:Lcom/google/android/gms/auth/authzen/transaction/f;

    iget-object v3, v3, Lcom/google/android/gms/auth/authzen/keyservice/b;->a:Lcom/google/android/gms/auth/authzen/keyservice/c;

    iget-object v3, v3, Lcom/google/android/gms/auth/authzen/keyservice/c;->a:Ljava/lang/String;
    :try_end_b
    .catch Lcom/google/protobuf/a/e; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    iget-object v0, v0, Lcom/google/m/b/a/d/t;->b:[B

    invoke-static {v0}, Lcom/google/m/b/a/a/p;->a([B)Lcom/google/m/b/a/a/p;
    :try_end_c
    .catch Lcom/google/protobuf/a/e; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v4

    :try_start_d
    invoke-static {p1, v4, v3, v2}, Lcom/google/android/gms/auth/authzen/transaction/f;->a(Landroid/content/Context;Lcom/google/m/b/a/a/p;Ljava/lang/String;[B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, v4, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget-wide v8, v0, Lcom/google/m/b/a/a/o;->a:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_9

    const-string v0, "AuthZen"

    const-string v5, "Authzen prompt was supposed to be expired based on device clock"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AuthZen"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "expiry="

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", now="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Lcom/google/protobuf/a/e; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_9
    :try_start_e
    iget-object v0, v4, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget v0, v0, Lcom/google/m/b/a/a/o;->b:I

    if-ne v0, v11, :cond_b

    invoke-static {v4}, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->a(Lcom/google/m/b/a/a/p;)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/auth/d/c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/d/c;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/auth/d/c;->e:I

    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/c;->a()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The request proto for ACCOUNT_RECOVERY was malformed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_e .. :try_end_e} :catch_5
    .catch Lcom/google/protobuf/a/e; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :catch_5
    move-exception v0

    :try_start_f
    new-instance v1, Lcom/google/android/gms/auth/d/c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/auth/d/c;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    iput v5, v1, Lcom/google/android/gms/auth/d/c;->e:I

    invoke-virtual {v1}, Lcom/google/android/gms/auth/d/c;->a()V

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthZen"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/m/b/a/a/q;

    invoke-direct {v0}, Lcom/google/m/b/a/a/q;-><init>()V

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lcom/google/m/b/a/a/q;->a(I)Lcom/google/m/b/a/a/q;

    move-result-object v0

    new-instance v1, Lcom/google/m/b/a/a/n;

    invoke-direct {v1}, Lcom/google/m/b/a/a/n;-><init>()V

    invoke-virtual {v1, v4}, Lcom/google/m/b/a/a/n;->a(Lcom/google/m/b/a/a/p;)Lcom/google/m/b/a/a/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/m/b/a/a/n;->a(Lcom/google/m/b/a/a/q;)Lcom/google/m/b/a/a/n;

    move-result-object v0

    new-instance v1, Lcom/google/m/b/a/d/t;

    sget-object v4, Lcom/google/m/b/a/d/u;->d:Lcom/google/m/b/a/d/u;

    invoke-virtual {v0}, Lcom/google/m/b/a/a/n;->g()[B

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/google/m/b/a/d/t;-><init>(Lcom/google/m/b/a/d/u;[B)V

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/auth/authzen/transaction/TransactionReplyService;->a(Ljava/lang/String;[BLcom/google/m/b/a/d/t;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :catch_6
    move-exception v0

    const-string v0, "AuthZen"

    const-string v1, "Received a malformed TxRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/auth/d/c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/d/c;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/auth/d/c;->e:I

    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/c;->a()V
    :try_end_f
    .catch Lcom/google/protobuf/a/e; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_0

    :cond_a
    :try_start_10
    invoke-static {v4, v3, v2}, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->b(Lcom/google/m/b/a/a/p;Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/google/android/gms/auth/authzen/transaction/h;->a(Landroid/content/Context;Lcom/google/m/b/a/a/p;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_b
    if-ne v0, v1, :cond_1a

    iget-object v0, v4, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget-boolean v0, v0, Lcom/google/m/b/a/a/o;->c:Z

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/auth/d/c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/d/c;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/auth/d/c;->e:I

    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/c;->a()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The request proto for GENERIC_APPROVAL was malformed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, v4, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget-object v0, v0, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    iget v5, v0, Lcom/google/m/b/a/a/e;->b:I

    iget-object v0, v4, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget-object v0, v0, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    iget v6, v0, Lcom/google/m/b/a/a/e;->d:I

    if-ne v6, v11, :cond_d

    sget-object v0, Lcom/google/android/gms/auth/b/a;->l:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    if-nez v0, :cond_11

    const-string v0, "AuthZen"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "The usecase specified by the incoming request has been disabled by gservices flags: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "The usecase sent by request is not supported: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-ne v6, v12, :cond_e

    sget-object v0, Lcom/google/android/gms/auth/b/a;->m:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_e
    const/4 v0, 0x4

    if-ne v6, v0, :cond_f

    sget-object v0, Lcom/google/android/gms/auth/b/a;->n:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_f
    const/4 v0, 0x5

    if-ne v6, v0, :cond_10

    sget-object v0, Lcom/google/android/gms/auth/b/a;->o:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_10
    sget-object v0, Lcom/google/android/gms/auth/b/a;->p:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_11
    packed-switch v6, :pswitch_data_0

    invoke-static {v4}, Lcom/google/android/gms/auth/authzen/transaction/b/e;->a(Lcom/google/m/b/a/a/p;)Z

    move-result v0

    :goto_2
    if-nez v0, :cond_12

    const-string v0, "AuthZen"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "The usecase specified by the incoming request is not valid: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "The usecase sent by request is not supported: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_2

    :pswitch_1
    move v0, v1

    goto :goto_2

    :cond_12
    if-ne v5, v1, :cond_14

    invoke-static {v4}, Lcom/google/android/gms/auth/authzen/transaction/workflows/BasicConfirmationWorkflow;->a(Lcom/google/m/b/a/a/p;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Lcom/google/android/gms/auth/d/c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/d/c;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/auth/d/c;->e:I

    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/c;->a()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The request proto for BASIC_CONFIRMATION was malformed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-static {v4, v3, v2}, Lcom/google/android/gms/auth/authzen/transaction/workflows/BasicConfirmationWorkflow;->b(Lcom/google/m/b/a/a/p;Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/google/android/gms/auth/authzen/transaction/h;->a(Landroid/content/Context;Lcom/google/m/b/a/a/p;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_14
    if-ne v5, v11, :cond_16

    invoke-static {v4}, Lcom/google/android/gms/auth/authzen/transaction/workflows/DoubleConfirmationWorkflow;->a(Lcom/google/m/b/a/a/p;)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Lcom/google/android/gms/auth/d/c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/d/c;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/auth/d/c;->e:I

    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/c;->a()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The request proto for DOUBLE_CONFIRMATION was malformed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-static {v4, v3, v2}, Lcom/google/android/gms/auth/authzen/transaction/workflows/DoubleConfirmationWorkflow;->b(Lcom/google/m/b/a/a/p;Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/google/android/gms/auth/authzen/transaction/h;->a(Landroid/content/Context;Lcom/google/m/b/a/a/p;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_16
    if-ne v5, v12, :cond_18

    invoke-static {v4}, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->a(Lcom/google/m/b/a/a/p;)Z

    move-result v0

    if-nez v0, :cond_17

    new-instance v0, Lcom/google/android/gms/auth/d/c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/d/c;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/auth/d/c;->e:I

    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/c;->a()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The request proto for PIN_CONFIRMATION was malformed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    invoke-static {v4, v3, v2}, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->b(Lcom/google/m/b/a/a/p;Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/google/android/gms/auth/authzen/transaction/h;->a(Landroid/content/Context;Lcom/google/m/b/a/a/p;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_18
    if-nez v5, :cond_19

    new-instance v0, Lcom/google/android/gms/auth/d/c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/d/c;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/auth/d/c;->e:I

    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/c;->a()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The request proto for NO_WORKFLOW_HINT was malformed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-instance v0, Lcom/google/android/gms/auth/d/c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/d/c;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/auth/d/c;->e:I

    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/c;->a()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Unknown workflow. Transaction not handled for workflow: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v1, Lcom/google/android/gms/auth/d/c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/auth/d/c;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    iput v5, v1, Lcom/google/android/gms/auth/d/c;->e:I

    invoke-virtual {v1}, Lcom/google/android/gms/auth/d/c;->a()V

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown workflow. Transaction not handled for prompt type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_10
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Lcom/google/protobuf/a/e; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_1b
    :try_start_11
    sget-object v1, Lcom/google/m/b/a/d/u;->g:Lcom/google/m/b/a/d/u;

    iget-object v4, v0, Lcom/google/m/b/a/d/t;->a:Lcom/google/m/b/a/d/u;

    if-ne v1, v4, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/a;->b:Lcom/google/android/gms/auth/authzen/transaction/f;

    iget-object v0, v3, Lcom/google/android/gms/auth/authzen/keyservice/b;->a:Lcom/google/android/gms/auth/authzen/keyservice/c;

    iget-object v0, v0, Lcom/google/android/gms/auth/authzen/keyservice/c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/auth/authzen/transaction/f;->a(Landroid/content/Context;Lcom/google/m/b/a/a/p;Ljava/lang/String;[B)V

    goto/16 :goto_0

    :cond_1c
    sget-object v1, Lcom/google/m/b/a/d/u;->i:Lcom/google/m/b/a/d/u;

    iget-object v2, v0, Lcom/google/m/b/a/d/t;->a:Lcom/google/m/b/a/d/u;

    if-ne v1, v2, :cond_1d

    iget-object v1, v3, Lcom/google/android/gms/auth/authzen/keyservice/b;->a:Lcom/google/android/gms/auth/authzen/keyservice/c;

    iget-object v1, v1, Lcom/google/android/gms/auth/authzen/keyservice/c;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/m/b/a/d/t;->b:[B

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/auth/be/proximity/registration/v1/a/a;->a(Landroid/content/Context;Ljava/lang/String;[B)V

    goto/16 :goto_0

    :cond_1d
    sget-object v1, Lcom/google/m/b/a/d/u;->m:Lcom/google/m/b/a/d/u;

    iget-object v2, v0, Lcom/google/m/b/a/d/t;->a:Lcom/google/m/b/a/d/u;

    if-ne v1, v2, :cond_1e

    iget-object v1, v3, Lcom/google/android/gms/auth/authzen/keyservice/b;->a:Lcom/google/android/gms/auth/authzen/keyservice/c;

    iget-object v1, v1, Lcom/google/android/gms/auth/authzen/keyservice/c;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/m/b/a/d/t;->b:[B

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a(Landroid/content/Context;Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_1e
    const-string v1, "AuthZen"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected payload type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/m/b/a/d/t;->a:Lcom/google/m/b/a/d/u;

    invoke-virtual {v0}, Lcom/google/m/b/a/d/u;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Lcom/google/protobuf/a/e; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_0

    .line 87
    :cond_1f
    :try_start_12
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "com.google.android.gms.GMS_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "com.google.android.gms.auth.authzen.CHECK_REGISTRATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 90
    :cond_20
    invoke-static {}, Lcom/google/android/gms/auth/authzen/b/d;->a()Lcom/google/android/gms/auth/authzen/b/d;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/authzen/b/e;->a:Lcom/google/android/gms/auth/authzen/b/e;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/authzen/b/d;->a(Lcom/google/android/gms/auth/authzen/b/e;)V

    goto/16 :goto_0

    .line 91
    :cond_21
    const-string v1, "com.google.android.gms.auth.GOOGLE_ACCOUNT_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 93
    invoke-static {p2}, Lcom/google/android/gms/auth/authzen/a;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 94
    :cond_22
    const-string v1, "com.google.android.gms.auth.authzen.REGISTER_NOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "com.google.android.gms.gcm.REGISTERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 96
    :cond_23
    invoke-static {}, Lcom/google/android/gms/auth/authzen/b/d;->a()Lcom/google/android/gms/auth/authzen/b/d;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/authzen/b/e;->b:Lcom/google/android/gms/auth/authzen/b/e;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/authzen/b/d;->a(Lcom/google/android/gms/auth/authzen/b/e;)V

    goto/16 :goto_0

    .line 97
    :cond_24
    const-string v1, "com.google.android.gms.auth.authzen.TEST_UI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 98
    sget-object v0, Lcom/google/android/gms/auth/b/a;->R:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/auth/authzen/transaction/i;

    invoke-direct {v0}, Lcom/google/android/gms/auth/authzen/transaction/i;-><init>()V

    const-string v0, "account"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result-object v0

    :try_start_13
    const-string v1, "tx_request"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/m/b/a/a/p;->a([B)Lcom/google/m/b/a/a/p;
    :try_end_13
    .catch Lcom/google/protobuf/a/e; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result-object v1

    :try_start_14
    iget-object v2, v1, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget v2, v2, Lcom/google/m/b/a/a/o;->b:I

    packed-switch v2, :pswitch_data_1

    const-string v0, "AuthZen"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown prompt type: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const-string v1, "AuthZen"

    const-string v2, "Invalid tx request"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :pswitch_2
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/auth/authzen/transaction/workflows/AccountRecoveryWorkflow;->b(Lcom/google/m/b/a/a/p;Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/auth/authzen/transaction/h;->a(Landroid/content/Context;Lcom/google/m/b/a/a/p;Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, v1, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget-object v2, v2, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    iget v2, v2, Lcom/google/m/b/a/a/e;->b:I

    packed-switch v2, :pswitch_data_2

    const-string v0, "AuthZen"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown workflow: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_4
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/auth/authzen/transaction/workflows/BasicConfirmationWorkflow;->b(Lcom/google/m/b/a/a/p;Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    :goto_3
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/auth/authzen/transaction/h;->a(Landroid/content/Context;Lcom/google/m/b/a/a/p;Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_5
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/auth/authzen/transaction/workflows/DoubleConfirmationWorkflow;->b(Lcom/google/m/b/a/a/p;Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    goto :goto_3

    :pswitch_6
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->b(Lcom/google/m/b/a/a/p;Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    goto :goto_3

    .line 100
    :cond_25
    const-string v1, "AuthZen"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown action: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 98
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
