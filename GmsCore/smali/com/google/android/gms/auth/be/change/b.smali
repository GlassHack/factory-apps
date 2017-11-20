.class public final Lcom/google/android/gms/auth/be/change/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/auth/a/j;

.field private final b:Landroid/accounts/AccountManager;

.field private final c:Lcom/google/android/gms/auth/be/q;

.field private final d:Ljava/util/Random;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private final g:Ljava/util/List;

.field private final h:Ljava/util/List;

.field private final i:Ljava/util/List;


# direct methods
.method private constructor <init>(Landroid/accounts/AccountManager;Lcom/google/android/gms/auth/a/j;Lcom/google/android/gms/auth/be/q;)V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->d:Ljava/util/Random;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->e:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->f:Ljava/util/List;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->g:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->h:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->i:Ljava/util/List;

    .line 138
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->b:Landroid/accounts/AccountManager;

    .line 139
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/a/j;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->a:Lcom/google/android/gms/auth/a/j;

    .line 140
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/q;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->c:Lcom/google/android/gms/auth/be/q;

    .line 141
    return-void
.end method

.method synthetic constructor <init>(Landroid/accounts/AccountManager;Lcom/google/android/gms/auth/a/j;Lcom/google/android/gms/auth/be/q;B)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/auth/be/change/b;-><init>(Landroid/accounts/AccountManager;Lcom/google/android/gms/auth/a/j;Lcom/google/android/gms/auth/be/q;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .prologue
    .line 289
    if-nez p0, :cond_0

    .line 290
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private a([Landroid/accounts/Account;Lcom/google/android/gms/auth/be/change/c;)V
    .locals 13

    .prologue
    .line 201
    iget-object v0, p2, Lcom/google/android/gms/auth/be/change/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/auth/be/change/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 202
    iget-object v0, p2, Lcom/google/android/gms/auth/be/change/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/auth/be/change/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 203
    if-nez p1, :cond_2

    const/4 v0, 0x0

    .line 204
    :goto_0
    mul-int/lit8 v0, v0, 0x20

    new-array v8, v0, [B

    .line 205
    iget-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->d:Ljava/util/Random;

    invoke-virtual {v0, v8}, Ljava/util/Random;->nextBytes([B)V

    .line 206
    const/4 v3, 0x0

    .line 207
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 208
    array-length v10, p1

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v10, :cond_5

    aget-object v11, p1, v5

    .line 209
    iget-object v0, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 210
    const/4 v0, -0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    move v4, v0

    .line 212
    :goto_2
    const/4 v0, 0x0

    .line 213
    if-eqz v4, :cond_4

    .line 214
    iget-object v1, p0, Lcom/google/android/gms/auth/be/change/b;->e:Ljava/util/List;

    iget-object v2, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v2, v3, 0x20

    invoke-static {v8, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 233
    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/auth/be/change/b;->b:Landroid/accounts/AccountManager;

    invoke-virtual {v3, v11}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    .line 235
    if-nez v3, :cond_0

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "XXX NO PASSWORD for "

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 239
    :cond_0
    invoke-virtual {v9}, Ljava/security/MessageDigest;->reset()V

    .line 240
    invoke-virtual {v9, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 241
    sget-object v12, Lcom/google/c/a/t;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 242
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 244
    if-nez v4, :cond_1

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->g:Ljava/util/List;

    iget-object v4, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/google/android/gms/common/util/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lcom/google/android/gms/common/util/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/google/android/gms/auth/be/change/b;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->h:Ljava/util/List;

    iget-object v1, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v3, v2

    goto/16 :goto_1

    .line 203
    :cond_2
    array-length v0, p1

    goto/16 :goto_0

    .line 210
    :cond_3
    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_2

    .line 226
    :cond_4
    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 227
    invoke-interface {v7, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 229
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/g;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 230
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/util/g;->a(Ljava/lang/String;)[B

    move-result-object v0

    move v2, v3

    goto/16 :goto_3

    .line 259
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 262
    iget-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 263
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 265
    iget-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->c:Lcom/google/android/gms/auth/be/q;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/q;->a()Ljava/lang/String;

    move-result-object v3

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->c:Lcom/google/android/gms/auth/be/q;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/auth/be/q;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 273
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/AccountChangeEvent;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/AccountChangeEvent;->a()I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_8

    .line 276
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->c:Lcom/google/android/gms/auth/be/q;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/android/gms/auth/be/q;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->c:Lcom/google/android/gms/auth/be/q;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/be/q;->a(Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/auth/be/change/b;->c:Lcom/google/android/gms/auth/be/q;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/auth/be/q;->a(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_9
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 334
    iget-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 335
    iget-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 336
    iget-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 337
    iget-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 338
    return-void
.end method

.method private e()Lcom/google/android/gms/auth/be/change/c;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 370
    iget-object v2, p0, Lcom/google/android/gms/auth/be/change/b;->a:Lcom/google/android/gms/auth/a/j;

    const-string v3, "parallel_accounts_csv"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 371
    iget-object v3, p0, Lcom/google/android/gms/auth/be/change/b;->a:Lcom/google/android/gms/auth/a/j;

    const-string v4, "parallel_shas_csv"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/auth/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 372
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 373
    new-instance v1, Lcom/google/android/gms/auth/be/change/c;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/auth/be/change/c;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 389
    :goto_0
    return-object v0

    .line 379
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 380
    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/be/change/c;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/change/c;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_2
    invoke-static {}, Lcom/google/android/gms/auth/be/change/a;->c()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v4

    .line 387
    invoke-static {}, Lcom/google/android/gms/auth/be/change/a;->c()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v5

    .line 388
    array-length v5, v5

    array-length v4, v4

    if-ne v5, v4, :cond_3

    .line 389
    :goto_1
    new-instance v1, Lcom/google/android/gms/auth/be/change/c;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/auth/be/change/c;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 388
    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/auth/be/change/a;
    .locals 7

    .prologue
    .line 144
    invoke-static {}, Lcom/google/android/gms/auth/be/change/a;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 146
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/change/b;->d()V

    .line 150
    iget-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->b:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 152
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/change/b;->e()Lcom/google/android/gms/auth/be/change/c;

    move-result-object v1

    .line 153
    const-string v2, "GLSUser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ AccountStateSummary ] - get() - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/change/c;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/auth/be/change/b;->a([Landroid/accounts/Account;Lcom/google/android/gms/auth/be/change/c;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "GLSUser"

    const-string v1, "AccountStateSummary - No changes."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v0, Lcom/google/android/gms/auth/be/change/a;->b:Lcom/google/android/gms/auth/be/change/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/change/b;->d()V

    .line 186
    invoke-static {}, Lcom/google/android/gms/auth/be/change/a;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v0

    .line 172
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/auth/be/change/a;

    iget-object v2, p0, Lcom/google/android/gms/auth/be/change/b;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/auth/be/change/b;->f:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/auth/be/change/b;->g:Ljava/util/List;

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/auth/be/change/a;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;B)V

    const-string v2, ","

    iget-object v3, p0, Lcom/google/android/gms/auth/be/change/b;->h:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    iget-object v4, p0, Lcom/google/android/gms/auth/be/change/b;->i:Ljava/util/List;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/auth/be/change/b;->a:Lcom/google/android/gms/auth/a/j;

    const-string v5, "parallel_accounts_csv"

    iget-object v6, v1, Lcom/google/android/gms/auth/be/change/c;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v6}, Lcom/google/android/gms/auth/a/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iget-object v4, p0, Lcom/google/android/gms/auth/be/change/b;->a:Lcom/google/android/gms/auth/a/j;

    const-string v5, "parallel_shas_csv"

    iget-object v6, v1, Lcom/google/android/gms/auth/be/change/c;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v3, v6}, Lcom/google/android/gms/auth/a/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/auth/be/change/b;->a:Lcom/google/android/gms/auth/a/j;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/a/j;->b()V

    .line 173
    :goto_1
    iget-boolean v1, v1, Lcom/google/android/gms/auth/be/change/c;->a:Z

    if-nez v1, :cond_1

    sget-object v0, Lcom/google/android/gms/auth/be/change/a;->a:Lcom/google/android/gms/auth/be/change/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/change/b;->d()V

    .line 186
    invoke-static {}, Lcom/google/android/gms/auth/be/change/a;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 172
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/auth/be/change/b;->b()V

    sget-object v0, Lcom/google/android/gms/auth/be/change/a;->a:Lcom/google/android/gms/auth/be/change/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 175
    :catch_0
    move-exception v0

    .line 181
    :try_start_3
    const-string v1, "GLSUser"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    invoke-virtual {p0}, Lcom/google/android/gms/auth/be/change/b;->b()V

    .line 183
    sget-object v0, Lcom/google/android/gms/auth/be/change/a;->a:Lcom/google/android/gms/auth/be/change/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/change/b;->d()V

    .line 186
    invoke-static {}, Lcom/google/android/gms/auth/be/change/a;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/auth/be/change/b;->d()V

    .line 186
    invoke-static {}, Lcom/google/android/gms/auth/be/change/a;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 341
    invoke-static {}, Lcom/google/android/gms/auth/be/change/a;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->a:Lcom/google/android/gms/auth/a/j;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/a/j;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/be/change/b;->a:Lcom/google/android/gms/auth/a/j;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/a/j;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/auth/be/change/a;->b()Lcom/google/android/gms/auth/be/change/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 355
    invoke-static {}, Lcom/google/android/gms/auth/be/change/a;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 356
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    :try_start_3
    const-string v1, "GLSUser"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/auth/be/change/a;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 360
    invoke-static {}, Lcom/google/android/gms/auth/be/change/a;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 362
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/change/b;->e()Lcom/google/android/gms/auth/be/change/c;

    move-result-object v0

    .line 363
    iget-boolean v0, v0, Lcom/google/android/gms/auth/be/change/c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-static {}, Lcom/google/android/gms/auth/be/change/a;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/auth/be/change/a;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
