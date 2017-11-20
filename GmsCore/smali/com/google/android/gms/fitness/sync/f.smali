.class final Lcom/google/android/gms/fitness/sync/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field private final c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/gms/fitness/sync/f;->c:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private static a(Lcom/google/android/gms/fitness/data/Session;Lcom/google/android/gms/fitness/n/ar;)Lcom/google/android/gms/fitness/data/Session;
    .locals 8

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Session;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Session;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Session;->a()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Session;->b()J

    move-result-wide v6

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/fitness/n/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Session;

    .line 131
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Session;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Session;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {v0, p0}, Lcom/google/android/gms/fitness/data/Session;->a(Lcom/google/android/gms/fitness/data/Session;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/google/android/gms/fitness/sync/d;Lcom/google/android/gms/fitness/n/c;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 143
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/fitness/n/c;->d:[B

    new-instance v2, Lcom/google/n/a/a/a/a/ae;

    invoke-direct {v2}, Lcom/google/n/a/a/a/a/ae;-><init>()V

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;

    move-result-object v0

    check-cast v0, Lcom/google/n/a/a/a/a/ae;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    iget-boolean v1, p1, Lcom/google/android/gms/fitness/n/c;->c:Z

    if-eqz v1, :cond_0

    .line 150
    invoke-interface {p0, v0}, Lcom/google/android/gms/fitness/sync/d;->a(Lcom/google/n/a/a/a/a/ae;)V

    .line 154
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 145
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unable to parse: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 146
    goto :goto_1

    .line 152
    :cond_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/fitness/sync/d;->b(Lcom/google/n/a/a/a/a/ae;)V

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/google/android/gms/fitness/sync/d;Lcom/google/android/gms/fitness/n/ar;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/fitness/sync/f;->c:Landroid/content/Context;

    const-string v1, "fitness_session_sync"

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 69
    const-string v0, "PAGE_TOKEN"

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "downloading sessions: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 75
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/fitness/sync/d;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/e/a;

    move-result-object v3

    .line 76
    iget v1, p0, Lcom/google/android/gms/fitness/sync/f;->b:I

    iget-object v4, v3, Lcom/google/android/gms/fitness/e/a;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/gms/fitness/sync/f;->b:I

    .line 77
    iget v1, p0, Lcom/google/android/gms/fitness/sync/f;->b:I

    iget-object v4, v3, Lcom/google/android/gms/fitness/e/a;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/gms/fitness/sync/f;->b:I
    :try_end_0
    .catch Lcom/google/android/gms/fitness/sync/g; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    const-string v0, "Downloaded %d deletions and %d insertions"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, v3, Lcom/google/android/gms/fitness/e/a;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v7

    const/4 v4, 0x1

    iget-object v5, v3, Lcom/google/android/gms/fitness/e/a;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 89
    iget-object v0, v3, Lcom/google/android/gms/fitness/e/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/n/a/a/a/a/ae;

    .line 91
    :try_start_1
    sget-object v1, Lcom/google/android/gms/fitness/e/c;->a:Lcom/google/android/gms/fitness/e/b;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/e/b;->a(Lcom/google/protobuf/nano/j;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/Session;

    .line 92
    const/4 v5, 0x0

    invoke-interface {p2, v1, v5}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/data/Session;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unable to save sessions: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v5}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 78
    :catch_1
    move-exception v1

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to download sessions: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 80
    invoke-virtual {v1}, Lcom/google/android/gms/fitness/sync/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :goto_1
    return-void

    .line 83
    :cond_1
    throw v1

    .line 97
    :cond_2
    iget-object v0, v3, Lcom/google/android/gms/fitness/e/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/n/a/a/a/a/ae;

    .line 99
    :try_start_2
    sget-object v1, Lcom/google/android/gms/fitness/e/c;->a:Lcom/google/android/gms/fitness/e/b;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/e/b;->a(Lcom/google/protobuf/nano/j;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/Session;

    .line 100
    invoke-static {v1, p2}, Lcom/google/android/gms/fitness/sync/f;->a(Lcom/google/android/gms/fitness/data/Session;Lcom/google/android/gms/fitness/n/ar;)Lcom/google/android/gms/fitness/data/Session;

    move-result-object v5

    .line 101
    if-eqz v5, :cond_3

    .line 102
    const/4 v5, 0x0

    invoke-interface {p2, v1, v5}, Lcom/google/android/gms/fitness/n/ar;->c(Lcom/google/android/gms/fitness/data/Session;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 106
    :catch_2
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unable to save sessions: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v5}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 104
    :cond_3
    const/4 v5, 0x0

    :try_start_3
    invoke-interface {p2, v1, v5}, Lcom/google/android/gms/fitness/n/ar;->b(Lcom/google/android/gms/fitness/data/Session;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 110
    :cond_4
    iget-object v0, v3, Lcom/google/android/gms/fitness/e/a;->c:Ljava/lang/String;

    .line 111
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/e/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    const-string v1, "PAGE_TOKEN"

    iget-object v2, v3, Lcom/google/android/gms/fitness/e/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method
