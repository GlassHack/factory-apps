.class public final Lcom/google/android/gms/fitness/e/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/sync/d;


# instance fields
.field private final a:Lcom/google/android/gms/fitness/e/l;

.field private final b:Lcom/google/android/gms/fitness/e/j;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/common/server/ClientContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v1, Lcom/google/android/gms/fitness/e/l;

    new-instance v2, Lcom/google/android/gms/fitness/e/k;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->b:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/fitness/e/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/fitness/e/l;-><init>(Lcom/google/android/gms/common/server/j;)V

    iput-object v1, p0, Lcom/google/android/gms/fitness/e/m;->a:Lcom/google/android/gms/fitness/e/l;

    .line 44
    new-instance v1, Lcom/google/android/gms/fitness/e/j;

    new-instance v2, Lcom/google/android/gms/fitness/e/k;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->c:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/fitness/e/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/fitness/e/j;-><init>(Lcom/google/android/gms/common/server/j;)V

    iput-object v1, p0, Lcom/google/android/gms/fitness/e/m;->b:Lcom/google/android/gms/fitness/e/j;

    .line 46
    iput-object p2, p0, Lcom/google/android/gms/fitness/e/m;->c:Ljava/lang/String;

    .line 47
    new-instance v1, Lcom/google/android/gms/common/server/ClientContext;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, p2, p2, v2}, Lcom/google/android/gms/common/server/ClientContext;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->i:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/server/ClientContext;->a(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/fitness/e/m;->d:Lcom/google/android/gms/common/server/ClientContext;

    .line 48
    return-void
.end method

.method private static a(Lcom/android/d/aa;)Lcom/google/android/gms/fitness/sync/g;
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/d/aa;->a:Lcom/android/d/m;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Lcom/google/android/gms/fitness/sync/g;

    const-string v1, "no network"

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/fitness/sync/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 347
    :goto_0
    return-object v0

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/d/aa;->a:Lcom/android/d/m;

    iget v0, v0, Lcom/android/d/m;->a:I

    .line 343
    rem-int/lit8 v1, v0, 0x64

    sub-int/2addr v0, v1

    .line 346
    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 347
    :goto_1
    new-instance v1, Lcom/google/android/gms/fitness/sync/g;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/fitness/sync/g;-><init>(ZLjava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 346
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Lcom/google/android/gms/auth/q;)Lcom/google/android/gms/fitness/sync/g;
    .locals 1

    .prologue
    .line 335
    new-instance v0, Lcom/google/android/gms/fitness/sync/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/sync/g;-><init>(Lcom/google/android/gms/auth/q;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/data/DataSource;Ljava/lang/String;)Lcom/google/android/gms/fitness/e/a;
    .locals 7

    .prologue
    .line 92
    new-instance v3, Lcom/google/n/a/a/a/a/s;

    invoke-direct {v3}, Lcom/google/n/a/a/a/a/s;-><init>()V

    .line 93
    const-string v0, "me"

    iput-object v0, v3, Lcom/google/n/a/a/a/a/s;->a:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/n/a/a/a/a/s;->b:Ljava/lang/String;

    .line 95
    if-eqz p2, :cond_0

    .line 96
    iput-object p2, v3, Lcom/google/n/a/a/a/a/s;->c:Ljava/lang/String;

    .line 101
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/e/m;->b:Lcom/google/android/gms/fitness/e/j;

    iget-object v1, p0, Lcom/google/android/gms/fitness/e/m;->d:Lcom/google/android/gms/common/server/ClientContext;

    iget-object v0, v0, Lcom/google/android/gms/fitness/e/j;->a:Lcom/google/android/gms/common/server/j;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/users/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/google/n/a/a/a/a/s;->a:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/dataSources/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/google/n/a/a/a/a/s;->b:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/dataPointChanges?alt=proto"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/google/n/a/a/a/a/s;->c:Ljava/lang/String;

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "&pageToken="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/google/n/a/a/a/a/s;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v5, v3, Lcom/google/n/a/a/a/a/s;->d:Ljava/lang/Long;

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "&currentTimeMillis="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/google/n/a/a/a/a/s;->d:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v5, v3, Lcom/google/n/a/a/a/a/s;->e:Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "&deduplicateChanges="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/google/n/a/a/a/a/s;->e:Ljava/lang/Boolean;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/google/n/a/a/a/a/t;

    invoke-direct {v5}, Lcom/google/n/a/a/a/a/t;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/server/j;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;[BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/n/a/a/a/a/t;
    :try_end_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/d/aa; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    iget-object v1, v0, Lcom/google/n/a/a/a/a/t;->a:[Lcom/google/n/a/a/a/a/c;

    invoke-static {p1, v1}, Lcom/google/android/gms/fitness/e/c;->a(Lcom/google/android/gms/fitness/data/DataSource;[Lcom/google/n/a/a/a/a/c;)Ljava/util/List;

    move-result-object v1

    .line 108
    iget-object v2, v0, Lcom/google/n/a/a/a/a/t;->b:[Lcom/google/n/a/a/a/a/c;

    invoke-static {p1, v2}, Lcom/google/android/gms/fitness/e/c;->a(Lcom/google/android/gms/fitness/data/DataSource;[Lcom/google/n/a/a/a/a/c;)Ljava/util/List;

    move-result-object v2

    .line 109
    new-instance v3, Lcom/google/android/gms/fitness/e/a;

    iget-object v0, v0, Lcom/google/n/a/a/a/a/t;->c:Ljava/lang/String;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/gms/fitness/e/a;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v3

    .line 102
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/e/m;->a(Lcom/google/android/gms/auth/q;)Lcom/google/android/gms/fitness/sync/g;

    move-result-object v0

    throw v0

    .line 104
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/e/m;->a(Lcom/android/d/aa;)Lcom/google/android/gms/fitness/sync/g;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/fitness/e/a;
    .locals 7

    .prologue
    .line 173
    new-instance v3, Lcom/google/n/a/a/a/a/ac;

    invoke-direct {v3}, Lcom/google/n/a/a/a/a/ac;-><init>()V

    .line 174
    const-string v0, "me"

    iput-object v0, v3, Lcom/google/n/a/a/a/a/ac;->a:Ljava/lang/String;

    .line 175
    iput-object p1, v3, Lcom/google/n/a/a/a/a/ac;->f:Ljava/lang/String;

    .line 176
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/google/n/a/a/a/a/ac;->e:Ljava/lang/Boolean;

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/e/m;->a:Lcom/google/android/gms/fitness/e/l;

    iget-object v1, p0, Lcom/google/android/gms/fitness/e/m;->d:Lcom/google/android/gms/common/server/ClientContext;

    iget-object v0, v0, Lcom/google/android/gms/fitness/e/l;->a:Lcom/google/android/gms/common/server/j;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/users/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/google/n/a/a/a/a/ac;->a:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/sessions?alt=proto"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/google/n/a/a/a/a/ac;->b:Ljava/lang/String;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "&startTime="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/google/n/a/a/a/a/ac;->b:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v5, v3, Lcom/google/n/a/a/a/a/ac;->c:Ljava/lang/String;

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "&endTime="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/google/n/a/a/a/a/ac;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v5, v3, Lcom/google/n/a/a/a/a/ac;->d:Ljava/lang/String;

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "&onlyModifiedAfter="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/google/n/a/a/a/a/ac;->d:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v5, v3, Lcom/google/n/a/a/a/a/ac;->e:Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "&includeDeleted="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/google/n/a/a/a/a/ac;->e:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v5, v3, Lcom/google/n/a/a/a/a/ac;->f:Ljava/lang/String;

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "&pageToken="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/google/n/a/a/a/a/ac;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/google/n/a/a/a/a/ad;

    invoke-direct {v5}, Lcom/google/n/a/a/a/a/ad;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/server/j;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;[BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/n/a/a/a/a/ad;
    :try_end_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/d/aa; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    new-instance v1, Lcom/google/android/gms/fitness/e/a;

    iget-object v2, v0, Lcom/google/n/a/a/a/a/ad;->a:[Lcom/google/n/a/a/a/a/ae;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/google/n/a/a/a/a/ad;->b:[Lcom/google/n/a/a/a/a/ae;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v0, v0, Lcom/google/n/a/a/a/a/ad;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/fitness/e/a;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v1

    .line 181
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/e/m;->a(Lcom/google/android/gms/auth/q;)Lcom/google/android/gms/fitness/sync/g;

    move-result-object v0

    throw v0

    .line 183
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/e/m;->a(Lcom/android/d/aa;)Lcom/google/android/gms/fitness/sync/g;

    move-result-object v0

    throw v0
.end method

.method public final a()Ljava/util/Collection;
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 65
    new-instance v4, Lcom/google/n/a/a/a/a/aa;

    invoke-direct {v4}, Lcom/google/n/a/a/a/a/aa;-><init>()V

    .line 67
    const-string v0, "me"

    iput-object v0, v4, Lcom/google/n/a/a/a/a/aa;->a:Ljava/lang/String;

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/e/m;->a:Lcom/google/android/gms/fitness/e/l;

    iget-object v1, p0, Lcom/google/android/gms/fitness/e/m;->d:Lcom/google/android/gms/common/server/ClientContext;

    iget-object v0, v0, Lcom/google/android/gms/fitness/e/l;->a:Lcom/google/android/gms/common/server/j;

    const/4 v2, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "/users/"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/google/n/a/a/a/a/aa;->a:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "/dataSources?alt=proto"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lcom/google/n/a/a/a/a/aa;->b:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v7, v4, Lcom/google/n/a/a/a/a/aa;->b:[Ljava/lang/String;

    array-length v8, v7

    move v3, v6

    :goto_0
    if-ge v3, v8, :cond_0

    aget-object v9, v7, v3

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "&dataTypeName="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, v4, Lcom/google/n/a/a/a/a/aa;->c:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "&onlyModifiedAfter="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/google/n/a/a/a/a/aa;->c:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v3, v4, Lcom/google/n/a/a/a/a/aa;->d:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "&includeDeleted="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/google/n/a/a/a/a/aa;->d:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/google/n/a/a/a/a/ab;

    invoke-direct {v5}, Lcom/google/n/a/a/a/a/ab;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/server/j;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;[BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/n/a/a/a/a/ab;
    :try_end_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/d/aa; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/google/n/a/a/a/a/ab;->a:[Lcom/google/n/a/a/a/a/d;

    array-length v1, v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    iget-object v3, v0, Lcom/google/n/a/a/a/a/ab;->a:[Lcom/google/n/a/a/a/a/d;

    array-length v4, v3

    move v1, v6

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    .line 81
    :try_start_1
    sget-object v0, Lcom/google/android/gms/fitness/e/c;->f:Lcom/google/android/gms/fitness/e/b;

    invoke-interface {v0, v5}, Lcom/google/android/gms/fitness/e/b;->a(Lcom/google/protobuf/nano/j;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 79
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 72
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/e/m;->a(Lcom/google/android/gms/auth/q;)Lcom/google/android/gms/fitness/sync/g;

    move-result-object v0

    throw v0

    .line 74
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/e/m;->a(Lcom/android/d/aa;)Lcom/google/android/gms/fitness/sync/g;

    move-result-object v0

    throw v0

    .line 82
    :catch_2
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unable to convert: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v0, v5, v7}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 86
    :cond_3
    return-object v2
.end method

.method public final a(Ljava/util/List;)Ljava/util/Collection;
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 196
    const-string v0, "sync.applyChanges count: %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 197
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 201
    :cond_0
    new-instance v1, Lcom/google/n/a/a/a/a/n;

    invoke-direct {v1}, Lcom/google/n/a/a/a/a/n;-><init>()V

    .line 202
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/n/a/a/a/a/m;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/n/a/a/a/a/m;

    iput-object v0, v1, Lcom/google/n/a/a/a/a/n;->a:[Lcom/google/n/a/a/a/a/m;

    .line 204
    new-instance v4, Lcom/google/n/a/a/a/a/k;

    invoke-direct {v4}, Lcom/google/n/a/a/a/a/k;-><init>()V

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lcom/google/n/a/a/a/a/k;->b:Ljava/lang/Long;

    .line 207
    const-string v0, "me"

    iput-object v0, v4, Lcom/google/n/a/a/a/a/k;->a:Ljava/lang/String;

    .line 208
    iput-object v1, v4, Lcom/google/n/a/a/a/a/k;->c:Lcom/google/n/a/a/a/a/n;

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/e/m;->b:Lcom/google/android/gms/fitness/e/j;

    iget-object v1, p0, Lcom/google/android/gms/fitness/e/m;->d:Lcom/google/android/gms/common/server/ClientContext;

    iget-object v0, v0, Lcom/google/android/gms/fitness/e/j;->a:Lcom/google/android/gms/common/server/j;

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/users/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/google/n/a/a/a/a/k;->a:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/applyDataPointChanges?alt=proto"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/google/n/a/a/a/a/k;->b:Ljava/lang/Long;

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "&currentTimeMillis="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/google/n/a/a/a/a/k;->b:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v4, Lcom/google/n/a/a/a/a/k;->c:Lcom/google/n/a/a/a/a/n;

    invoke-static {v4}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v4

    new-instance v5, Lcom/google/n/a/a/a/a/l;

    invoke-direct {v5}, Lcom/google/n/a/a/a/a/l;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/server/j;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;[BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/n/a/a/a/a/l;
    :try_end_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/d/aa; {:try_start_0 .. :try_end_0} :catch_1

    .line 219
    iget-object v0, v0, Lcom/google/n/a/a/a/a/l;->a:[Lcom/google/n/a/a/a/a/m;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    .line 213
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/e/m;->a(Lcom/google/android/gms/auth/q;)Lcom/google/android/gms/fitness/sync/g;

    move-result-object v0

    throw v0

    .line 215
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/e/m;->a(Lcom/android/d/aa;)Lcom/google/android/gms/fitness/sync/g;

    move-result-object v0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;JJ)Ljava/util/List;
    .locals 8

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance v3, Lcom/google/n/a/a/a/a/z;

    invoke-direct {v3}, Lcom/google/n/a/a/a/a/z;-><init>()V

    .line 120
    const-string v1, "me"

    iput-object v1, v3, Lcom/google/n/a/a/a/a/z;->a:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/google/n/a/a/a/a/z;->b:Ljava/lang/String;

    .line 122
    iput-object v0, v3, Lcom/google/n/a/a/a/a/z;->c:Ljava/lang/String;

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/e/m;->a:Lcom/google/android/gms/fitness/e/l;

    iget-object v1, p0, Lcom/google/android/gms/fitness/e/m;->d:Lcom/google/android/gms/common/server/ClientContext;

    iget-object v0, v0, Lcom/google/android/gms/fitness/e/l;->a:Lcom/google/android/gms/common/server/j;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/users/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/google/n/a/a/a/a/z;->a:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/dataSources/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/google/n/a/a/a/a/z;->b:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/datasets/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v3, Lcom/google/n/a/a/a/a/z;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "?alt=proto"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/google/n/a/a/a/a/x;

    invoke-direct {v5}, Lcom/google/n/a/a/a/a/x;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/server/j;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;[BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/n/a/a/a/a/x;
    :try_end_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/d/aa; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    iget-object v0, v0, Lcom/google/n/a/a/a/a/x;->d:[Lcom/google/n/a/a/a/a/c;

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/e/c;->a(Lcom/google/android/gms/fitness/data/DataSource;[Lcom/google/n/a/a/a/a/c;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 127
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/e/m;->a(Lcom/google/android/gms/auth/q;)Lcom/google/android/gms/fitness/sync/g;

    move-result-object v0

    throw v0

    .line 129
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/e/m;->a(Lcom/android/d/aa;)Lcom/google/android/gms/fitness/sync/g;

    move-result-object v0

    throw v0
.end method

.method public final a(Lcom/google/n/a/a/a/a/ae;)V
    .locals 7

    .prologue
    .line 138
    new-instance v3, Lcom/google/n/a/a/a/a/y;

    invoke-direct {v3}, Lcom/google/n/a/a/a/a/y;-><init>()V

    .line 139
    const-string v0, "me"

    iput-object v0, v3, Lcom/google/n/a/a/a/a/y;->a:Ljava/lang/String;

    .line 140
    iget-object v0, p1, Lcom/google/n/a/a/a/a/ae;->a:Ljava/lang/String;

    iput-object v0, v3, Lcom/google/n/a/a/a/a/y;->b:Ljava/lang/String;

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcom/google/n/a/a/a/a/y;->c:Ljava/lang/Long;

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/e/m;->a:Lcom/google/android/gms/fitness/e/l;

    iget-object v1, p0, Lcom/google/android/gms/fitness/e/m;->d:Lcom/google/android/gms/common/server/ClientContext;

    iget-object v0, v0, Lcom/google/android/gms/fitness/e/l;->a:Lcom/google/android/gms/common/server/j;

    const/4 v2, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/users/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/google/n/a/a/a/a/y;->a:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/sessions/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/google/n/a/a/a/a/y;->b:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?alt=proto"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/google/n/a/a/a/a/y;->c:Ljava/lang/Long;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "&currentTimeMillis="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/google/n/a/a/a/a/y;->c:Ljava/lang/Long;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/google/protobuf/b;

    invoke-direct {v5}, Lcom/google/protobuf/b;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/server/j;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;[BLjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/d/aa; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    return-void

    .line 144
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/e/m;->a(Lcom/google/android/gms/auth/q;)Lcom/google/android/gms/fitness/sync/g;

    move-result-object v0

    throw v0

    .line 146
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/e/m;->a(Lcom/android/d/aa;)Lcom/google/android/gms/fitness/sync/g;

    move-result-object v0

    throw v0
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 253
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 257
    :try_start_0
    sget-object v1, Lcom/google/android/gms/fitness/e/c;->f:Lcom/google/android/gms/fitness/e/b;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/e/b;->a(Ljava/lang/Object;)Lcom/google/protobuf/nano/j;

    move-result-object v1

    check-cast v1, Lcom/google/n/a/a/a/a/d;

    .line 258
    new-instance v4, Lcom/google/n/a/a/a/a/o;

    invoke-direct {v4}, Lcom/google/n/a/a/a/a/o;-><init>()V

    .line 259
    iput-object v1, v4, Lcom/google/n/a/a/a/a/o;->b:Lcom/google/n/a/a/a/a/d;

    .line 260
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unable to convert: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 266
    :cond_0
    new-instance v1, Lcom/google/n/a/a/a/a/p;

    invoke-direct {v1}, Lcom/google/n/a/a/a/a/p;-><init>()V

    .line 268
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/n/a/a/a/a/o;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/n/a/a/a/a/o;

    iput-object v0, v1, Lcom/google/n/a/a/a/a/p;->a:[Lcom/google/n/a/a/a/a/o;

    .line 270
    new-instance v4, Lcom/google/n/a/a/a/a/u;

    invoke-direct {v4}, Lcom/google/n/a/a/a/a/u;-><init>()V

    .line 272
    const-string v0, "me"

    iput-object v0, v4, Lcom/google/n/a/a/a/a/u;->a:Ljava/lang/String;

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lcom/google/n/a/a/a/a/u;->b:Ljava/lang/Long;

    .line 274
    iput-object v1, v4, Lcom/google/n/a/a/a/a/u;->c:Lcom/google/n/a/a/a/a/p;

    .line 278
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/e/m;->b:Lcom/google/android/gms/fitness/e/j;

    iget-object v1, p0, Lcom/google/android/gms/fitness/e/m;->d:Lcom/google/android/gms/common/server/ClientContext;

    iget-object v0, v0, Lcom/google/android/gms/fitness/e/j;->a:Lcom/google/android/gms/common/server/j;

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "/users/"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/google/n/a/a/a/a/u;->a:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/syncDataSources?alt=proto"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/google/n/a/a/a/a/u;->b:Ljava/lang/Long;

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "&currentTimeMillis="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/google/n/a/a/a/a/u;->b:Ljava/lang/Long;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v4, Lcom/google/n/a/a/a/a/u;->c:Lcom/google/n/a/a/a/a/p;

    invoke-static {v4}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v4

    new-instance v5, Lcom/google/n/a/a/a/a/v;

    invoke-direct {v5}, Lcom/google/n/a/a/a/a/v;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/server/j;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;[BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/n/a/a/a/a/v;
    :try_end_1
    .catch Lcom/google/android/gms/auth/q; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/d/aa; {:try_start_1 .. :try_end_1} :catch_2

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/google/n/a/a/a/a/v;->a:[Lcom/google/n/a/a/a/a/o;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 286
    iget-object v2, v0, Lcom/google/n/a/a/a/a/v;->a:[Lcom/google/n/a/a/a/a/o;

    array-length v3, v2

    move v0, v6

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 287
    sget-object v5, Lcom/google/android/gms/fitness/e/c;->f:Lcom/google/android/gms/fitness/e/b;

    iget-object v4, v4, Lcom/google/n/a/a/a/a/o;->b:Lcom/google/n/a/a/a/a/d;

    invoke-interface {v5, v4}, Lcom/google/android/gms/fitness/e/b;->a(Lcom/google/protobuf/nano/j;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 279
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/e/m;->a(Lcom/google/android/gms/auth/q;)Lcom/google/android/gms/fitness/sync/g;

    move-result-object v0

    throw v0

    .line 281
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/e/m;->a(Lcom/android/d/aa;)Lcom/google/android/gms/fitness/sync/g;

    move-result-object v0

    throw v0

    .line 289
    :cond_2
    return-object v1
.end method

.method public final b()V
    .locals 7

    .prologue
    .line 294
    new-instance v4, Lcom/google/n/a/a/a/a/q;

    invoke-direct {v4}, Lcom/google/n/a/a/a/a/q;-><init>()V

    .line 296
    const-string v0, "me"

    iput-object v0, v4, Lcom/google/n/a/a/a/a/q;->a:Ljava/lang/String;

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/e/m;->b:Lcom/google/android/gms/fitness/e/j;

    iget-object v1, p0, Lcom/google/android/gms/fitness/e/m;->d:Lcom/google/android/gms/common/server/ClientContext;

    iget-object v0, v0, Lcom/google/android/gms/fitness/e/j;->a:Lcom/google/android/gms/common/server/j;

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/users/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/google/n/a/a/a/a/q;->a:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/deleteHistory?alt=proto"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v4

    new-instance v5, Lcom/google/protobuf/b;

    invoke-direct {v5}, Lcom/google/protobuf/b;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/server/j;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;[BLjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/d/aa; {:try_start_0 .. :try_end_0} :catch_1

    .line 304
    return-void

    .line 300
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/e/m;->a(Lcom/google/android/gms/auth/q;)Lcom/google/android/gms/fitness/sync/g;

    move-result-object v0

    throw v0

    .line 302
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/e/m;->a(Lcom/android/d/aa;)Lcom/google/android/gms/fitness/sync/g;

    move-result-object v0

    throw v0
.end method

.method public final b(Lcom/google/n/a/a/a/a/ae;)V
    .locals 7

    .prologue
    .line 154
    new-instance v4, Lcom/google/n/a/a/a/a/af;

    invoke-direct {v4}, Lcom/google/n/a/a/a/a/af;-><init>()V

    .line 155
    const-string v0, "me"

    iput-object v0, v4, Lcom/google/n/a/a/a/a/af;->a:Ljava/lang/String;

    .line 156
    iget-object v0, p1, Lcom/google/n/a/a/a/a/ae;->a:Ljava/lang/String;

    iput-object v0, v4, Lcom/google/n/a/a/a/a/af;->b:Ljava/lang/String;

    .line 157
    iput-object p1, v4, Lcom/google/n/a/a/a/a/af;->c:Lcom/google/n/a/a/a/a/ae;

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lcom/google/n/a/a/a/a/af;->d:Ljava/lang/Long;

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/e/m;->a:Lcom/google/android/gms/fitness/e/l;

    iget-object v1, p0, Lcom/google/android/gms/fitness/e/m;->d:Lcom/google/android/gms/common/server/ClientContext;

    iget-object v0, v0, Lcom/google/android/gms/fitness/e/l;->a:Lcom/google/android/gms/common/server/j;

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/users/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/google/n/a/a/a/a/af;->a:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/sessions/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/google/n/a/a/a/a/af;->b:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?alt=proto"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/google/n/a/a/a/a/af;->d:Ljava/lang/Long;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "&currentTimeMillis="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/google/n/a/a/a/a/af;->d:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v4, Lcom/google/n/a/a/a/a/af;->c:Lcom/google/n/a/a/a/a/ae;

    invoke-static {v4}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v4

    new-instance v5, Lcom/google/n/a/a/a/a/ae;

    invoke-direct {v5}, Lcom/google/n/a/a/a/a/ae;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/server/j;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;[BLjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/d/aa; {:try_start_0 .. :try_end_0} :catch_1

    .line 167
    return-void

    .line 163
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/e/m;->a(Lcom/google/android/gms/auth/q;)Lcom/google/android/gms/fitness/sync/g;

    move-result-object v0

    throw v0

    .line 165
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/e/m;->a(Lcom/android/d/aa;)Lcom/google/android/gms/fitness/sync/g;

    move-result-object v0

    throw v0
.end method

.method public final c()Z
    .locals 7

    .prologue
    .line 309
    new-instance v3, Lcom/google/n/a/a/a/a/r;

    invoke-direct {v3}, Lcom/google/n/a/a/a/a/r;-><init>()V

    .line 311
    const-string v0, "me"

    iput-object v0, v3, Lcom/google/n/a/a/a/a/r;->a:Ljava/lang/String;

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/e/m;->b:Lcom/google/android/gms/fitness/e/j;

    iget-object v1, p0, Lcom/google/android/gms/fitness/e/m;->d:Lcom/google/android/gms/common/server/ClientContext;

    iget-object v0, v0, Lcom/google/android/gms/fitness/e/j;->a:Lcom/google/android/gms/common/server/j;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/users/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/google/n/a/a/a/a/r;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/accountStatus?alt=proto"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/google/n/a/a/a/a/j;

    invoke-direct {v5}, Lcom/google/n/a/a/a/a/j;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/server/j;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;[BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/n/a/a/a/a/j;

    .line 316
    iget-object v0, v0, Lcom/google/n/a/a/a/a/j;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/d/aa; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    .line 317
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/e/m;->a(Lcom/google/android/gms/auth/q;)Lcom/google/android/gms/fitness/sync/g;

    move-result-object v0

    throw v0

    .line 319
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/e/m;->a(Lcom/android/d/aa;)Lcom/google/android/gms/fitness/sync/g;

    move-result-object v0

    throw v0
.end method
