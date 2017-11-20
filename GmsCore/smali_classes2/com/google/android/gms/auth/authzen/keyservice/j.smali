.class public final Lcom/google/android/gms/auth/authzen/keyservice/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/auth/authzen/keyservice/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/google/android/gms/auth/authzen/keyservice/k;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/authzen/keyservice/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/authzen/keyservice/j;->a:Lcom/google/android/gms/auth/authzen/keyservice/k;

    .line 62
    return-void
.end method

.method private static a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 415
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static b([B)J
    .locals 2

    .prologue
    .line 436
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static c(Landroid/database/Cursor;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 419
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/m/b/a/d/j;->a([B)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/authzen/keyservice/c;)Lcom/google/android/gms/auth/authzen/keyservice/b;
    .locals 6

    .prologue
    .line 106
    const-string v0, "AuthZen"

    const-string v1, "Adding new credential"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "AuthZen"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encryption key data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/authzen/keyservice/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p1, Lcom/google/android/gms/auth/authzen/keyservice/c;->b:Ljavax/crypto/SecretKey;

    invoke-static {v0}, Lcom/google/m/b/a/d/j;->a(Ljavax/crypto/SecretKey;)[B

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/keyservice/j;->a:Lcom/google/android/gms/auth/authzen/keyservice/k;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/authzen/keyservice/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 116
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 117
    const-string v3, "account"

    iget-object v4, p1, Lcom/google/android/gms/auth/authzen/keyservice/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v3, "master_key"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 119
    const-string v0, "creation_time"

    iget-wide v4, p1, Lcom/google/android/gms/auth/authzen/keyservice/c;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 120
    const-string v0, "expiration_time"

    iget-wide v4, p1, Lcom/google/android/gms/auth/authzen/keyservice/c;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 122
    const-string v0, "encryptionkeys"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 123
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error while inserting key: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/authzen/keyservice/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v2, Lcom/google/android/gms/auth/authzen/keyservice/l;

    invoke-direct {v2, v0}, Lcom/google/android/gms/auth/authzen/keyservice/l;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 131
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0

    .line 127
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 128
    new-instance v0, Lcom/google/android/gms/auth/authzen/keyservice/b;

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/auth/authzen/keyservice/b;-><init>([BLcom/google/android/gms/auth/authzen/keyservice/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 131
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v0
.end method

.method public final a([B)Lcom/google/android/gms/auth/authzen/keyservice/b;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/keyservice/j;->a:Lcom/google/android/gms/auth/authzen/keyservice/k;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/authzen/keyservice/k;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 198
    const-string v1, "encryptionkeys"

    const-string v3, "key_handle = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/google/android/gms/auth/authzen/keyservice/j;->b([B)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 207
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 208
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 218
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_0
    return-object v2

    .line 210
    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/auth/authzen/keyservice/c;

    const-string v2, "account"

    invoke-static {v8, v2}, Lcom/google/android/gms/auth/authzen/keyservice/j;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "master_key"

    invoke-static {v8, v3}, Lcom/google/android/gms/auth/authzen/keyservice/j;->c(Landroid/database/Cursor;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v3

    const-string v4, "creation_time"

    invoke-static {v8, v4}, Lcom/google/android/gms/auth/authzen/keyservice/j;->b(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "expiration_time"

    invoke-static {v8, v6}, Lcom/google/android/gms/auth/authzen/keyservice/j;->b(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/auth/authzen/keyservice/c;-><init>(Ljava/lang/String;Ljavax/crypto/SecretKey;JJ)V

    .line 215
    new-instance v2, Lcom/google/android/gms/auth/authzen/keyservice/b;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/auth/authzen/keyservice/b;-><init>([BLcom/google/android/gms/auth/authzen/keyservice/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 218
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 218
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/auth/authzen/keyservice/i;)Lcom/google/android/gms/auth/authzen/keyservice/i;
    .locals 6

    .prologue
    .line 70
    const-string v0, "AuthZen"

    const-string v1, "Adding new credential"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p1, Lcom/google/android/gms/auth/authzen/keyservice/i;->b:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lcom/google/m/b/a/d/j;->a(Ljava/security/PublicKey;)[B

    move-result-object v0

    .line 74
    iget-object v1, p1, Lcom/google/android/gms/auth/authzen/keyservice/i;->b:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-static {v1}, Lcom/google/m/b/a/d/j;->a(Ljava/security/PrivateKey;)[B

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/keyservice/j;->a:Lcom/google/android/gms/auth/authzen/keyservice/k;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/authzen/keyservice/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 80
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 81
    const-string v4, "key_handle"

    iget-object v5, p1, Lcom/google/android/gms/auth/authzen/keyservice/i;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v4, "public_key"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 83
    const-string v0, "private_key"

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 84
    const-string v0, "creation_time"

    iget-wide v4, p1, Lcom/google/android/gms/auth/authzen/keyservice/i;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    const-string v0, "expiration_time"

    iget-wide v4, p1, Lcom/google/android/gms/auth/authzen/keyservice/i;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    const-string v0, "signingkeys"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 88
    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error while inserting key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/gms/auth/authzen/keyservice/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/google/android/gms/auth/authzen/keyservice/l;

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/authzen/keyservice/l;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 95
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0

    .line 92
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 95
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 97
    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/auth/authzen/keyservice/i;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/keyservice/j;->a:Lcom/google/android/gms/auth/authzen/keyservice/k;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/authzen/keyservice/k;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 141
    const-string v1, "signingkeys"

    const-string v3, "key_handle = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 150
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 162
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_0
    return-object v2

    .line 153
    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/auth/authzen/keyservice/i;

    const-string v2, "key_handle"

    invoke-static {v8, v2}, Lcom/google/android/gms/auth/authzen/keyservice/j;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/security/KeyPair;

    const-string v4, "public_key"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/m/b/a/d/j;->b([B)Ljava/security/PublicKey;

    move-result-object v4

    const-string v5, "private_key"

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {}, Lcom/google/m/b/a/d/j;->a()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/google/m/b/a/d/j;->a([BZ)Ljava/security/PrivateKey;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    const-string v4, "creation_time"

    invoke-static {v8, v4}, Lcom/google/android/gms/auth/authzen/keyservice/j;->b(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "expiration_time"

    invoke-static {v8, v6}, Lcom/google/android/gms/auth/authzen/keyservice/j;->b(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/auth/authzen/keyservice/i;-><init>(Ljava/lang/String;Ljava/security/KeyPair;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 162
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v2, v1

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 162
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/auth/authzen/keyservice/b;J)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 365
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v2, "AuthZen"

    const-string v3, "Updating keys for account %s created at %d with new expiary: %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/gms/auth/authzen/keyservice/b;->a:Lcom/google/android/gms/auth/authzen/keyservice/c;

    iget-object v5, v5, Lcom/google/android/gms/auth/authzen/keyservice/c;->a:Ljava/lang/String;

    aput-object v5, v4, v0

    iget-object v5, p1, Lcom/google/android/gms/auth/authzen/keyservice/b;->a:Lcom/google/android/gms/auth/authzen/keyservice/c;

    iget-wide v6, v5, Lcom/google/android/gms/auth/authzen/keyservice/c;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 369
    const-string v3, "expiration_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 371
    iget-object v3, p0, Lcom/google/android/gms/auth/authzen/keyservice/j;->a:Lcom/google/android/gms/auth/authzen/keyservice/k;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/authzen/keyservice/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 372
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 375
    :try_start_0
    const-string v4, "encryptionkeys"

    const-string v5, "key_handle = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/authzen/keyservice/b;->a()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/auth/authzen/keyservice/j;->b([B)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 380
    if-le v2, v1, :cond_0

    .line 381
    const-string v1, "AuthZen"

    const-string v4, "Too many rows being updated."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v1, "AuthZen"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "# of rows updated: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v1, "AuthZen"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "EncodingKey: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/authzen/keyservice/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 393
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 395
    :goto_0
    return v0

    .line 386
    :cond_0
    if-gtz v2, :cond_1

    .line 387
    :try_start_1
    const-string v1, "AuthZen"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "No rows found for key: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/authzen/keyservice/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 393
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 390
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 392
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 393
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v0, v1

    .line 395
    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 393
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0
.end method

.method public final b(Ljava/lang/String;)[B
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/keyservice/j;->a:Lcom/google/android/gms/auth/authzen/keyservice/k;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/authzen/keyservice/k;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 173
    const-string v1, "signingkeys"

    const-string v3, "key_handle = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 182
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 183
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 188
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_0
    return-object v2

    .line 185
    :cond_0
    :try_start_1
    const-string v1, "public_key"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 187
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 188
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 188
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
.end method

.method public final c(Ljava/lang/String;)Ljava/util/List;
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/keyservice/j;->a:Lcom/google/android/gms/auth/authzen/keyservice/k;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/authzen/keyservice/k;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 230
    const-string v1, "encryptionkeys"

    const-string v3, "account = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v7, "expiration_time DESC"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 239
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 257
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v0, v1

    :goto_0
    return-object v0

    .line 242
    :cond_0
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 243
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 244
    const-string v1, "key_handle"

    invoke-static {v9, v1}, Lcom/google/android/gms/auth/authzen/keyservice/j;->b(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v10

    .line 245
    new-instance v1, Lcom/google/android/gms/auth/authzen/keyservice/c;

    const-string v2, "account"

    invoke-static {v9, v2}, Lcom/google/android/gms/auth/authzen/keyservice/j;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "master_key"

    invoke-static {v9, v3}, Lcom/google/android/gms/auth/authzen/keyservice/j;->c(Landroid/database/Cursor;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v3

    const-string v4, "creation_time"

    invoke-static {v9, v4}, Lcom/google/android/gms/auth/authzen/keyservice/j;->b(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "expiration_time"

    invoke-static {v9, v6}, Lcom/google/android/gms/auth/authzen/keyservice/j;->b(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/auth/authzen/keyservice/c;-><init>(Ljava/lang/String;Ljavax/crypto/SecretKey;JJ)V

    .line 250
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 251
    new-instance v3, Lcom/google/android/gms/auth/authzen/keyservice/b;

    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/auth/authzen/keyservice/b;-><init>([BLcom/google/android/gms/auth/authzen/keyservice/c;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 256
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 257
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1

    .line 256
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 257
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v0, v8

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/keyservice/j;->a:Lcom/google/android/gms/auth/authzen/keyservice/k;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/authzen/keyservice/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 344
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 347
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 351
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 355
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return v0

    .line 354
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 355
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0
.end method
