.class public final Lcom/google/android/gms/fitness/f/m;
.super Lcom/google/android/gms/fitness/f/b;
.source "SourceFile"


# instance fields
.field private final g:Lcom/google/android/gms/fitness/f/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/f/b;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Lcom/google/android/gms/fitness/f/g;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/fitness/f/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/f/m;->g:Lcom/google/android/gms/fitness/f/g;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/fitness/f/f;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 37
    array-length v1, p2

    move v0, v3

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v4, p2, v0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    .line 38
    new-instance v0, Lcom/google/android/gms/fitness/f/f;

    invoke-direct {v0, v10, v10, v3}, Lcom/google/android/gms/fitness/f/f;-><init>(Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 83
    :goto_2
    return-object v0

    .line 37
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    .line 43
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/fitness/f/m;->g:Lcom/google/android/gms/fitness/f/g;

    iget-object v0, v1, Lcom/google/android/gms/fitness/f/g;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/fitness/f/g;->a(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v1, Lcom/google/android/gms/fitness/f/g;->b:Ljava/lang/String;

    invoke-static {v0, v4, v5, p1}, Lcom/google/android/gms/common/server/ClientContext;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/server/ClientContext;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/google/android/gms/fitness/f/g;->c(Lcom/google/android/gms/common/server/ClientContext;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_3
    new-instance v0, Lcom/google/android/gms/common/server/ClientContext;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/fitness/f/g;->a(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v1, Lcom/google/android/gms/fitness/f/g;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/fitness/f/g;->b:Ljava/lang/String;

    invoke-direct {v0, v4, v5, v1, p1}, Lcom/google/android/gms/common/server/ClientContext;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 47
    :goto_3
    array-length v5, p2

    move v4, v3

    move v0, v3

    :goto_4
    if-ge v4, v5, :cond_5

    aget-object v6, p2, v4

    .line 48
    if-eqz v6, :cond_4

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/server/ClientContext;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Lcom/google/android/gms/fitness/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/android/gms/common/server/ClientContext;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 52
    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/server/ClientContext;->a(Ljava/lang/String;)V

    move v0, v2

    .line 47
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 55
    :cond_5
    if-nez v0, :cond_7

    invoke-static {v1}, Lcom/google/android/gms/fitness/f/g;->d(Lcom/google/android/gms/common/server/ClientContext;)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->B:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    move v0, v2

    :goto_5
    if-nez v0, :cond_7

    .line 56
    invoke-static {v1}, Lcom/google/android/gms/fitness/f/g;->b(Lcom/google/android/gms/common/server/ClientContext;)Lcom/google/android/gms/fitness/f/f;

    move-result-object v0

    goto :goto_2

    :cond_6
    move v0, v3

    .line 55
    goto :goto_5

    .line 61
    :cond_7
    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/server/a/a;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/common/server/a/a;-><init>(Lcom/google/android/gms/common/server/ClientContext;Z)V

    .line 62
    iget-object v4, p0, Lcom/google/android/gms/fitness/f/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/server/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/fitness/f/m;->g:Lcom/google/android/gms/fitness/f/g;

    const-string v5, "Updating client context: %s with token: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v5, "com.google.android.gms.fitness.auth.token"

    invoke-virtual {v1, v5, v4}, Lcom/google/android/gms/common/server/ClientContext;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.google.android.gms.fitness.auth.time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/common/server/ClientContext;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/fitness/f/g;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/server/ClientContext;->a(Landroid/content/Context;)V

    .line 66
    new-instance v0, Lcom/google/android/gms/fitness/f/f;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v0, v4, v5, v6}, Lcom/google/android/gms/fitness/f/f;-><init>(Ljava/lang/String;Landroid/content/Intent;Z)V
    :try_end_0
    .catch Lcom/google/android/gms/auth/af; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_2

    .line 67
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 69
    const-string v0, "User recoverable auth exception: %s"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-static {v0, v4}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 70
    new-instance v0, Lcom/google/android/gms/fitness/f/f;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/af;->b()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v10, v1, v2}, Lcom/google/android/gms/fitness/f/f;-><init>(Ljava/lang/String;Landroid/content/Intent;Z)V

    goto/16 :goto_2

    .line 71
    :catch_1
    move-exception v0

    .line 72
    const-string v4, "Auth related exception %s"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/q;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/fitness/f/m;->g:Lcom/google/android/gms/fitness/f/g;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/f/g;->a(Lcom/google/android/gms/common/server/ClientContext;)V

    .line 74
    new-instance v0, Lcom/google/android/gms/fitness/f/f;

    invoke-direct {v0, v10, v10, v2}, Lcom/google/android/gms/fitness/f/f;-><init>(Ljava/lang/String;Landroid/content/Intent;Z)V

    goto/16 :goto_2

    .line 75
    :catch_2
    move-exception v0

    .line 77
    const-string v4, "IO Exception %s"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 78
    invoke-static {v1}, Lcom/google/android/gms/fitness/f/g;->c(Lcom/google/android/gms/common/server/ClientContext;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 79
    new-instance v0, Lcom/google/android/gms/fitness/f/f;

    invoke-direct {v0, v10, v10, v2}, Lcom/google/android/gms/fitness/f/f;-><init>(Ljava/lang/String;Landroid/content/Intent;Z)V

    goto/16 :goto_2

    .line 83
    :cond_8
    invoke-static {v1}, Lcom/google/android/gms/fitness/f/g;->b(Lcom/google/android/gms/common/server/ClientContext;)Lcom/google/android/gms/fitness/f/f;

    move-result-object v0

    goto/16 :goto_2

    :cond_9
    move-object v1, v0

    goto/16 :goto_3
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 89
    iget-object v1, p0, Lcom/google/android/gms/fitness/f/m;->g:Lcom/google/android/gms/fitness/f/g;

    if-nez p2, :cond_0

    const-string v0, "No UID specified for the package: %s. Retrieving UID from package manager."

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v1, p1}, Lcom/google/android/gms/fitness/f/g;->a(Ljava/lang/String;)I

    move-result p2

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/fitness/f/g;->a:Landroid/content/Context;

    iget-object v2, v1, Lcom/google/android/gms/fitness/f/g;->b:Ljava/lang/String;

    invoke-static {v0, p2, v2, p1}, Lcom/google/android/gms/common/server/ClientContext;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/server/ClientContext;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    const-string v0, "Clearing underlying Auth tokens for app: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v3}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, v1, Lcom/google/android/gms/fitness/f/g;->a:Landroid/content/Context;

    const-string v3, "com.google.android.gms.fitness.auth.token"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/server/ClientContext;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/auth/r;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/auth/t; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    const-string v0, "Clearing client context for app: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v0, v3}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/f/g;->a(Lcom/google/android/gms/common/server/ClientContext;)V

    .line 90
    :cond_1
    return-void

    .line 89
    :catch_0
    move-exception v0

    const-string v3, "Token clearing failed with Play Services exception: %s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/t;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "Token clearing failed with Auth exception: %s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/q;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v3, "Token clearing failed with IO exception: %s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
