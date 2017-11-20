.class public final Lcom/google/android/gms/auth/be/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/be/b/b;


# static fields
.field private static final a:[B

.field private static final b:[B


# instance fields
.field private final c:Lcom/google/android/gms/auth/be/b/g;

.field private final d:Lcom/google/android/gms/common/util/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/auth/be/b/f;->a:[B

    .line 49
    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/auth/be/b/f;->b:[B

    return-void

    .line 45
    nop

    :array_0
    .array-data 1
        0x47t
        0x6ft
        0x6ft
        0x67t
        0x6ct
        0x65t
        0x4ft
        0x66t
        0x66t
        0x6ct
        0x69t
        0x6et
        0x65t
        0x4ft
        0x54t
        0x50t
    .end array-data

    .line 49
    :array_1
    .array-data 1
        0x54t
        0x48t
        0x4ft
        0x54t
        0x50t
        0x2dt
        0x43t
        0x6ft
        0x75t
        0x6et
        0x74t
        0x65t
        0x72t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/google/android/gms/common/util/j;->c()Lcom/google/android/gms/common/util/i;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/auth/be/b/f;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/util/i;)V

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/util/i;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/google/android/gms/auth/be/b/g;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/be/b/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/b/f;->c:Lcom/google/android/gms/auth/be/b/g;

    .line 58
    iput-object p2, p0, Lcom/google/android/gms/auth/be/b/f;->d:Lcom/google/android/gms/common/util/i;

    .line 59
    return-void
.end method

.method private static a([B)Ljava/lang/Long;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 142
    const-string v1, "SHA256"

    invoke-static {v1}, Lcom/google/android/gms/common/util/e;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 143
    if-nez v1, :cond_0

    .line 153
    :goto_0
    return-object v0

    .line 146
    :cond_0
    sget-object v2, Lcom/google/android/gms/auth/be/b/f;->a:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 147
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 149
    :try_start_0
    sget-object v3, Lcom/google/android/gms/auth/be/b/f;->b:[B

    invoke-static {v2, v1, v3}, Lcom/google/m/b/a/e/a;->a(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1

    .line 150
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 151
    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/be/b/d;)Ljava/lang/Long;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 68
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/auth/be/b/d;->b:[B

    const-string v1, "SHA256"

    invoke-static {v1}, Lcom/google/android/gms/common/util/e;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v9, v8

    .line 69
    :goto_0
    if-nez v9, :cond_1

    move-object v0, v8

    .line 124
    :goto_1
    return-object v0

    .line 68
    :cond_0
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/e;->a([B)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/be/b/f;->c:Lcom/google/android/gms/auth/be/b/g;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/b/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :try_start_1
    const-string v1, "otp_counters"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "counter"

    aput-object v4, v2, v3

    const-string v3, "otp_secret_hash = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 87
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    const-string v1, "counter"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 96
    :cond_2
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 98
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 99
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v2, v6

    if-nez v2, :cond_4

    const-wide/16 v2, 0x0

    .line 100
    :goto_2
    iget-object v5, p0, Lcom/google/android/gms/auth/be/b/f;->d:Lcom/google/android/gms/common/util/i;

    invoke-interface {v5}, Lcom/google/android/gms/common/util/i;->a()J

    move-result-wide v6

    .line 101
    const-string v5, "counter"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    const-string v2, "modification_time_millis"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 103
    const-string v2, "otp_counters"

    const-string v3, "otp_secret_hash = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v5, v10

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 105
    if-nez v2, :cond_5

    .line 106
    const-string v2, "otp_secret_hash"

    invoke-virtual {v4, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v2, "account_name"

    iget-object v3, p1, Lcom/google/android/gms/auth/be/b/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v2, "creation_time_millis"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    const-string v2, "otp_secret_creation_time_millis"

    iget-wide v6, p1, Lcom/google/android/gms/auth/be/b/d;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    const-string v2, "otp_counters"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v2

    .line 112
    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 113
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v8

    goto/16 :goto_1

    .line 90
    :cond_3
    :try_start_5
    iget-object v1, p1, Lcom/google/android/gms/auth/be/b/d;->b:[B

    invoke-static {v1}, Lcom/google/android/gms/auth/be/b/f;->a([B)Ljava/lang/Long;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    .line 91
    if-nez v1, :cond_2

    .line 92
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 119
    :try_start_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-object v0, v8

    goto/16 :goto_1

    .line 96
    :catchall_0
    move-exception v1

    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 119
    :catchall_1
    move-exception v1

    :try_start_9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 121
    :catch_0
    move-exception v0

    .line 123
    const-string v1, "SqliteCounterStorage"

    const-string v2, "Unexpected exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v8

    .line 124
    goto/16 :goto_1

    .line 99
    :cond_4
    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto/16 :goto_2

    .line 116
    :cond_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 119
    :try_start_b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    move-object v0, v1

    goto/16 :goto_1
.end method
