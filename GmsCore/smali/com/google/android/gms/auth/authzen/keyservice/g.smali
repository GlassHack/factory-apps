.class public final Lcom/google/android/gms/auth/authzen/keyservice/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lcom/google/android/gms/auth/authzen/keyservice/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/google/m/b/a/d/j;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/authzen/keyservice/g;->a:Z

    .line 52
    new-instance v0, Lcom/google/android/gms/auth/authzen/keyservice/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/authzen/keyservice/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/authzen/keyservice/g;->b:Lcom/google/android/gms/auth/authzen/keyservice/j;

    .line 57
    const-string v0, "AuthZen"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "AuthZen"

    const-string v1, "Initiate PRNG security fix..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/security/b;->a()V

    .line 61
    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    .line 191
    const-string v0, "AuthZen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Creating new signing Keys for handle: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 192
    :goto_0
    const/4 v0, 0x2

    if-ge v3, v0, :cond_3

    .line 194
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/auth/authzen/keyservice/g;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/m/b/a/e/d;->b()Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v3, v0

    .line 204
    :goto_2
    if-nez v3, :cond_1

    .line 205
    const-string v0, "AuthZen"

    const-string v1, "!!!Failed to create asymmetric key!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 215
    :goto_3
    return-object v3

    .line 194
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/m/b/a/e/d;->a()Ljava/security/KeyPair;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string v5, "AuthZen"

    const-string v6, "Error while creating asymmetric key."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 208
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 210
    const/16 v5, 0x19

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->add(II)V

    .line 211
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 212
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-string v0, "handle cannot be empty or null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const-string v0, "keyPair cannot be null"

    invoke-static {v3, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long v0, v6, v4

    if-lez v0, :cond_2

    move v0, v1

    :goto_4
    const-string v1, "expiration time must be greater than creation time"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/auth/authzen/keyservice/i;

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/auth/authzen/keyservice/i;-><init>(Ljava/lang/String;Ljava/security/KeyPair;JJ)V

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/keyservice/g;->b:Lcom/google/android/gms/auth/authzen/keyservice/j;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/authzen/keyservice/j;->a(Lcom/google/android/gms/auth/authzen/keyservice/i;)Lcom/google/android/gms/auth/authzen/keyservice/i;

    goto :goto_3

    :cond_2
    move v0, v2

    .line 212
    goto :goto_4

    :cond_3
    move-object v3, v4

    goto :goto_2
.end method

.method private e(Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/keyservice/g;->b:Lcom/google/android/gms/auth/authzen/keyservice/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/authzen/keyservice/j;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/authzen/keyservice/i;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    .line 222
    iget-object v0, v0, Lcom/google/android/gms/auth/authzen/keyservice/i;->b:Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-object v0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const-string v1, "AuthZen"

    const-string v2, "Unable to parse stored key. Deleating the old key."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/keyservice/g;->b:Lcom/google/android/gms/auth/authzen/keyservice/j;

    const-string v1, "AuthZen"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deleting SigningKey for handle: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/auth/authzen/keyservice/j;->a:Lcom/google/android/gms/auth/authzen/keyservice/k;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/authzen/keyservice/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    const-string v0, "signingkeys"

    const-string v2, "key_handle = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    if-ne v0, v5, :cond_1

    const-string v0, "AuthZen"

    const-string v2, "SigningKey deleted."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 226
    :cond_1
    :try_start_2
    const-string v2, "AuthZen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected number of rows deleted: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0
.end method


# virtual methods
.method public final a([B)Lcom/google/android/gms/auth/authzen/keyservice/b;
    .locals 1

    .prologue
    .line 100
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/keyservice/g;->b:Lcom/google/android/gms/auth/authzen/keyservice/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/authzen/keyservice/j;->a([B)Lcom/google/android/gms/auth/authzen/keyservice/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 1

    .prologue
    .line 78
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/authzen/keyservice/g;->e(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/authzen/keyservice/g;->d(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 91
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/keyservice/g;->b:Lcom/google/android/gms/auth/authzen/keyservice/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/authzen/keyservice/j;->b(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/authzen/keyservice/g;->d(Ljava/lang/String;)Ljava/security/KeyPair;

    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/keyservice/g;->b:Lcom/google/android/gms/auth/authzen/keyservice/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/authzen/keyservice/j;->b(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/auth/authzen/keyservice/b;
    .locals 6

    .prologue
    .line 133
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/keyservice/g;->b:Lcom/google/android/gms/auth/authzen/keyservice/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/authzen/keyservice/j;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/authzen/keyservice/b;

    .line 139
    iget-object v2, v0, Lcom/google/android/gms/auth/authzen/keyservice/b;->a:Lcom/google/android/gms/auth/authzen/keyservice/c;

    iget-wide v2, v2, Lcom/google/android/gms/auth/authzen/keyservice/c;->d:J

    iget-object v4, v0, Lcom/google/android/gms/auth/authzen/keyservice/b;->a:Lcom/google/android/gms/auth/authzen/keyservice/c;

    iget-wide v4, v4, Lcom/google/android/gms/auth/authzen/keyservice/c;->c:J

    sub-long/2addr v2, v4

    .line 140
    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 146
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
