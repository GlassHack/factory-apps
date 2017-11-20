.class public Lcom/google/android/gms/auth/authzen/transaction/TransactionReplyService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    const-string v0, "TransactionReplyService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static a(Ljava/lang/String;[BLcom/google/m/b/a/d/t;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 68
    iget-object v0, p2, Lcom/google/m/b/a/d/t;->a:Lcom/google/m/b/a/d/u;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/auth/authzen/transaction/TransactionReplyService;->a(Ljava/lang/String;[BLcom/google/m/b/a/d/u;)Landroid/content/Intent;

    move-result-object v0

    .line 69
    const-string v1, "message"

    iget-object v2, p2, Lcom/google/m/b/a/d/t;->b:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 70
    return-object v0
.end method

.method private static a(Ljava/lang/String;[BLcom/google/m/b/a/d/u;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 93
    invoke-static {p0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/auth/authzen/transaction/TransactionReplyService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    const-string v1, "account"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v1, "keyHandle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 97
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 98
    return-object v0
.end method

.method public static a(Ljava/lang/String;[BLcom/google/protobuf/a/a;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 83
    sget-object v0, Lcom/google/m/b/a/d/u;->e:Lcom/google/m/b/a/d/u;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/auth/authzen/transaction/TransactionReplyService;->a(Ljava/lang/String;[BLcom/google/m/b/a/d/u;)Landroid/content/Intent;

    move-result-object v0

    .line 84
    if-eqz p2, :cond_0

    .line 86
    const-string v1, "txId"

    invoke-virtual {p2}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 88
    :cond_0
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 255
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "oauth2:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/auth/authzen/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/auth/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    const-string v1, "AuthZen"

    const-string v2, "Error getting auth token"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 259
    :catch_1
    move-exception v0

    .line 260
    const-string v1, "AuthZen"

    const-string v2, "Error getting auth token"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private a(Lcom/google/m/b/a/d/t;[B)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 269
    new-instance v1, Lcom/google/android/gms/auth/authzen/keyservice/g;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/authzen/keyservice/g;-><init>(Landroid/content/Context;)V

    .line 270
    invoke-virtual {v1, p2}, Lcom/google/android/gms/auth/authzen/keyservice/g;->a([B)Lcom/google/android/gms/auth/authzen/keyservice/b;

    move-result-object v2

    .line 271
    if-nez v2, :cond_0

    .line 272
    const-string v1, "AuthZen"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No encryption key found for given handle: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_0
    return-object v0

    .line 276
    :cond_0
    :try_start_0
    const-string v3, "device_key"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/auth/authzen/keyservice/g;->a(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v1

    .line 277
    if-nez v1, :cond_1

    .line 278
    const-string v1, "AuthZen"

    const-string v2, "Unable to get signing key. Cannot send authzen reply."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/auth/authzen/keyservice/h; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 284
    :catch_0
    move-exception v1

    .line 285
    const-string v2, "AuthZen"

    const-string v3, "Error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 281
    :cond_1
    :try_start_1
    iget-object v2, v2, Lcom/google/android/gms/auth/authzen/keyservice/b;->a:Lcom/google/android/gms/auth/authzen/keyservice/c;

    iget-object v2, v2, Lcom/google/android/gms/auth/authzen/keyservice/c;->b:Ljavax/crypto/SecretKey;

    invoke-static {p1, v1, v2}, Lcom/google/m/b/a/d/s;->a(Lcom/google/m/b/a/d/t;Ljava/security/KeyPair;Ljavax/crypto/SecretKey;)[B

    move-result-object v1

    .line 283
    invoke-static {v1}, Lcom/google/android/gms/common/util/g;->c([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/gms/auth/authzen/keyservice/h; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    goto :goto_0

    .line 286
    :catch_1
    move-exception v1

    .line 287
    const-string v2, "AuthZen"

    const-string v3, "Error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 288
    :catch_2
    move-exception v1

    .line 289
    const-string v2, "AuthZen"

    const-string v3, "Error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 290
    :catch_3
    move-exception v1

    .line 291
    const-string v2, "AuthZen"

    const-string v3, "Error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(ILjava/lang/Exception;)V
    .locals 2

    .prologue
    .line 208
    new-instance v0, Lcom/google/android/gms/auth/d/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/d/c;-><init>(Landroid/content/Context;)V

    .line 209
    const/4 v1, 0x3

    iput v1, v0, Lcom/google/android/gms/auth/d/c;->e:I

    .line 210
    iput p1, v0, Lcom/google/android/gms/auth/d/c;->j:I

    .line 211
    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/c;->a()V

    .line 212
    const-string v0, "AuthZen"

    const-string v1, "Error"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/google/android/gms/common/server/ClientContext;Lcom/google/m/b/a/d/u;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 169
    new-instance v7, Lcom/google/android/gms/auth/gencode/authzen/server/api/a;

    new-instance v0, Lcom/google/android/gms/common/server/g;

    invoke-static {}, Lcom/google/android/gms/auth/authzen/a/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cryptauth/v1/"

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/gms/common/server/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v7, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/a;-><init>(Lcom/google/android/gms/common/server/g;)V

    .line 171
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    int-to-long v0, v6

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 172
    if-eqz v6, :cond_0

    .line 173
    const-string v0, "AuthZen"

    const-string v1, "attempting send operation again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/authzen/transaction/g;->a:[I

    invoke-virtual {p3}, Lcom/google/m/b/a/d/u;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_1
    const-string v0, "AuthZen"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sent HTTP message of type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_1
    :goto_2
    return-void

    .line 176
    :pswitch_0
    new-instance v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/af;

    invoke-direct {v1}, Lcom/google/android/gms/auth/gencode/authzen/server/api/af;-><init>()V

    iput-object p4, v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/af;->a:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/af;->b:Ljava/util/Set;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ReplyTxRequestEntity;

    iget-object v2, v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/af;->b:Ljava/util/Set;

    iget-object v1, v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/af;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/auth/gencode/authzen/server/api/ReplyTxRequestEntity;-><init>(Ljava/util/Set;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ReplyTxRequestEntity;

    const-string v1, "authzen/replytx"

    iget-object v2, v7, Lcom/google/android/gms/auth/gencode/authzen/server/api/a;->a:Lcom/google/android/gms/common/server/g;

    invoke-virtual {v2, p2, v1, v0}, Lcom/google/android/gms/common/server/g;->a(Lcom/google/android/gms/common/server/ClientContext;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/d/aa; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    invoke-direct {p0, v6, v0}, Lcom/google/android/gms/auth/authzen/transaction/TransactionReplyService;->a(ILjava/lang/Exception;)V

    .line 185
    :goto_3
    const-wide/16 v0, 0x1f4

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 171
    :goto_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 176
    :pswitch_1
    :try_start_2
    new-instance v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ar;

    invoke-direct {v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/ar;-><init>()V

    iput-object p4, v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ar;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ar;->b:Ljava/util/Set;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/google/android/gms/auth/gencode/authzen/server/api/SyncTxRequestEntity;

    iget-object v1, v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ar;->b:Ljava/util/Set;

    iget-object v0, v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ar;->a:Ljava/lang/String;

    invoke-direct {v4, v1, v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/SyncTxRequestEntity;-><init>(Ljava/util/Set;Ljava/lang/String;)V

    check-cast v4, Lcom/google/android/gms/auth/gencode/authzen/server/api/SyncTxRequestEntity;

    const-string v3, "authzen/synctx"

    iget-object v0, v7, Lcom/google/android/gms/auth/gencode/authzen/server/api/a;->a:Lcom/google/android/gms/common/server/g;

    const/4 v2, 0x1

    const-class v5, Lcom/google/android/gms/auth/gencode/authzen/server/api/SyncTxResponseEntity;

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/server/g;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse;
    :try_end_2
    .catch Lcom/google/android/gms/auth/q; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/d/aa; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 180
    :catch_1
    move-exception v0

    .line 181
    invoke-direct {p0, v6, v0}, Lcom/google/android/gms/auth/authzen/transaction/TransactionReplyService;->a(ILjava/lang/Exception;)V

    goto :goto_3

    .line 187
    :cond_2
    int-to-long v0, v6

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/m/b/a/d/u;->d:Lcom/google/m/b/a/d/u;

    if-ne p3, v0, :cond_1

    .line 188
    const v0, 0x7f10005d

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_4

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 12

    .prologue
    const/4 v2, 0x1

    .line 107
    const-string v0, "AuthZen"

    const-string v1, "Sending authzen message..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/TransactionReplyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 110
    const-class v1, Lcom/google/android/gms/auth/authzen/transaction/TransactionReplyService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 112
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 114
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-virtual {v2, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 115
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v3

    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/d/u;

    invoke-static {v3, v1}, Lcom/google/android/gms/auth/authzen/transaction/TransactionReplyService;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v5, Lcom/google/android/gms/common/server/ClientContext;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v1, v1, v7}, Lcom/google/android/gms/common/server/ClientContext;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/auth/authzen/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/google/android/gms/common/server/ClientContext;->a(Ljava/lang/String;)V

    const-string v1, "auth_token"

    invoke-virtual {v5, v1, v4}, Lcom/google/android/gms/common/server/ClientContext;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "message"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/m/b/a/d/u;->e:Lcom/google/m/b/a/d/u;

    if-ne v0, v1, :cond_4

    new-instance v6, Lcom/google/android/gms/auth/authzen/b/c;

    invoke-direct {v6, v3}, Lcom/google/android/gms/auth/authzen/b/c;-><init>(Landroid/content/Context;)V

    iget-object v1, v6, Lcom/google/android/gms/auth/authzen/b/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/google/android/gms/auth/authzen/b/c;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v7

    new-instance v8, Lcom/google/m/b/a/a/d;

    invoke-direct {v8}, Lcom/google/m/b/a/a/d;-><init>()V

    iget-object v1, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/google/m/b/a/a/d;->b(Ljava/lang/String;)Lcom/google/m/b/a/a/d;

    move-result-object v8

    iget-object v1, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v10, v1

    invoke-virtual {v8, v10, v11}, Lcom/google/m/b/a/a/d;->a(J)Lcom/google/m/b/a/a/d;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/gms/auth/authzen/b/c;->a()Z

    move-result v7

    invoke-virtual {v1, v7}, Lcom/google/m/b/a/a/d;->a(Z)Lcom/google/m/b/a/a/d;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/auth/authzen/b/c;->b()Z

    move-result v7

    invoke-virtual {v1, v7}, Lcom/google/m/b/a/a/d;->d(Z)Lcom/google/m/b/a/a/d;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/auth/authzen/b/c;->c()Z

    move-result v7

    invoke-virtual {v1, v7}, Lcom/google/m/b/a/a/d;->e(Z)Lcom/google/m/b/a/a/d;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/auth/authzen/b/c;->d()Z

    move-result v7

    invoke-virtual {v1, v7}, Lcom/google/m/b/a/a/d;->b(Z)Lcom/google/m/b/a/a/d;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/gms/auth/authzen/b/c;->e()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/m/b/a/a/d;->c(Z)Lcom/google/m/b/a/a/d;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/m/b/a/a/d;->a(Ljava/lang/String;)Lcom/google/m/b/a/a/d;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/m/b/a/a/d;->c(Ljava/lang/String;)Lcom/google/m/b/a/a/d;

    new-instance v6, Lcom/google/m/b/a/a/r;

    invoke-direct {v6}, Lcom/google/m/b/a/a/r;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/google/m/b/a/a/r;->a(J)Lcom/google/m/b/a/a/r;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/m/b/a/a/r;->a(Lcom/google/m/b/a/a/d;)Lcom/google/m/b/a/a/r;

    move-result-object v1

    const-string v6, "txId"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "txId"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/m/b/a/a/r;->a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/a/r;

    :cond_0
    invoke-virtual {v1}, Lcom/google/m/b/a/a/r;->g()[B

    move-result-object v1

    :cond_1
    new-instance v6, Lcom/google/m/b/a/d/t;

    invoke-direct {v6, v0, v1}, Lcom/google/m/b/a/d/t;-><init>(Lcom/google/m/b/a/d/u;[B)V

    const-string v1, "keyHandle"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/google/android/gms/auth/authzen/transaction/TransactionReplyService;->a(Lcom/google/m/b/a/d/t;[B)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/gms/auth/authzen/a/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/m/b/a/d/u;->e:Lcom/google/m/b/a/d/u;

    if-ne v0, v1, :cond_2

    const-string v1, "AuthZen"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Sending GCM upstream message of type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/google/android/gms/auth/authzen/transaction/e;

    const-string v7, "TRS"

    invoke-direct {v1, v3, v7}, Lcom/google/android/gms/auth/authzen/transaction/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Lcom/google/m/b/a/d/u;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v4, v6}, Lcom/google/android/gms/auth/authzen/transaction/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    invoke-static {v1}, Lcom/google/android/gms/auth/authzen/a/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v3, v5, v0, v6}, Lcom/google/android/gms/auth/authzen/transaction/TransactionReplyService;->a(Landroid/content/Context;Lcom/google/android/gms/common/server/ClientContext;Lcom/google/m/b/a/d/u;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 118
    return-void

    .line 115
    :cond_4
    :try_start_3
    const-string v1, "AuthZen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cannot build message for payload type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 115
    :catch_0
    move-exception v1

    const/4 v4, -0x1

    :try_start_4
    invoke-direct {p0, v4, v1}, Lcom/google/android/gms/auth/authzen/transaction/TransactionReplyService;->a(ILjava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
