.class public Lcom/google/android/gms/playlog/uploader/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z

.field private static final b:Z

.field private static final c:Ljava/lang/String;

.field private static final d:Z


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/playlog/uploader/a;

.field private final g:Lcom/google/android/gms/playlog/b/f;

.field private final h:Lcom/google/android/gms/playlog/uploader/c;

.field private final i:Lcom/google/android/g/f;

.field private final j:Lcom/google/android/gms/playlog/b/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/android/gms/playlog/a/e;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/playlog/uploader/b;->a:Z

    .line 66
    sget-object v0, Lcom/google/android/gms/playlog/a/e;->b:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/playlog/uploader/b;->b:Z

    .line 67
    sget-object v0, Lcom/google/android/gms/playlog/a/d;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/playlog/uploader/b;->c:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/google/android/gms/playlog/a/b;->e:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/playlog/uploader/b;->d:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/playlog/uploader/a;Lcom/google/android/gms/playlog/b/f;Lcom/google/android/gms/playlog/uploader/c;Lcom/google/android/g/f;Lcom/google/android/gms/playlog/b/a/f;)V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/playlog/uploader/b;->e:Landroid/content/Context;

    .line 171
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/uploader/a;

    iput-object v0, p0, Lcom/google/android/gms/playlog/uploader/b;->f:Lcom/google/android/gms/playlog/uploader/a;

    .line 172
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/b/f;

    iput-object v0, p0, Lcom/google/android/gms/playlog/uploader/b;->g:Lcom/google/android/gms/playlog/b/f;

    .line 173
    invoke-static {p4}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/uploader/c;

    iput-object v0, p0, Lcom/google/android/gms/playlog/uploader/b;->h:Lcom/google/android/gms/playlog/uploader/c;

    .line 174
    invoke-static {p5}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/g/f;

    iput-object v0, p0, Lcom/google/android/gms/playlog/uploader/b;->i:Lcom/google/android/g/f;

    .line 175
    invoke-static {p6}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/b/a/f;

    iput-object v0, p0, Lcom/google/android/gms/playlog/uploader/b;->j:Lcom/google/android/gms/playlog/b/a/f;

    .line 176
    return-void
.end method

.method public static a(Lcom/google/android/gms/playlog/b/f;)Lcom/google/android/gms/playlog/uploader/b;
    .locals 8

    .prologue
    .line 150
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 151
    new-instance v0, Lcom/google/android/gms/playlog/uploader/d;

    invoke-direct {v0, v1}, Lcom/google/android/gms/playlog/uploader/d;-><init>(Landroid/content/Context;)V

    .line 153
    new-instance v5, Lcom/google/android/g/f;

    invoke-static {v1}, Lcom/google/android/gms/playlog/d/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v5, v1, v2, v3, v0}, Lcom/google/android/g/f;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/google/android/f/a;)V

    .line 156
    new-instance v0, Lcom/google/android/gms/playlog/uploader/b;

    invoke-static {}, Lcom/google/android/gms/playlog/uploader/a;->a()Lcom/google/android/gms/playlog/uploader/a;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/playlog/uploader/c;

    invoke-direct {v4}, Lcom/google/android/gms/playlog/uploader/c;-><init>()V

    sget-object v3, Lcom/google/android/gms/playlog/a/e;->c:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v3}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/google/android/gms/playlog/uploader/c;->a:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/playlog/a/e;->d:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v3}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/google/android/gms/playlog/uploader/c;->b:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/playlog/a/e;->f:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v3}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v4, Lcom/google/android/gms/playlog/uploader/c;->c:I

    sget-object v3, Lcom/google/android/gms/playlog/a/e;->g:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v3}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/google/android/gms/playlog/uploader/c;->d:J

    invoke-static {}, Lcom/google/android/gms/playlog/b/a/f;->a()Lcom/google/android/gms/playlog/b/a/f;

    move-result-object v6

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/playlog/uploader/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/playlog/uploader/a;Lcom/google/android/gms/playlog/b/f;Lcom/google/android/gms/playlog/uploader/c;Lcom/google/android/g/f;Lcom/google/android/gms/playlog/b/a/f;)V

    return-object v0
.end method

.method private a(Lcom/google/android/gms/playlog/b/h;[[B)Lcom/google/n/a/b/a/a/k;
    .locals 5

    .prologue
    .line 302
    new-instance v2, Lcom/google/n/a/b/a/a/k;

    invoke-direct {v2}, Lcom/google/n/a/b/a/a/k;-><init>()V

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/google/n/a/b/a/a/k;->a:J

    .line 305
    iget-object v0, p0, Lcom/google/android/gms/playlog/uploader/b;->e:Landroid/content/Context;

    iget-object v1, p1, Lcom/google/android/gms/playlog/b/h;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, p1, Lcom/google/android/gms/playlog/b/h;->f:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/playlog/b/h;->c:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;ZLjava/lang/String;I)Lcom/google/n/a/b/a/a/c;

    move-result-object v0

    .line 309
    new-instance v1, Lcom/google/n/a/b/a/a/e;

    invoke-direct {v1}, Lcom/google/n/a/b/a/a/e;-><init>()V

    .line 310
    const/4 v3, 0x4

    iput v3, v1, Lcom/google/n/a/b/a/a/e;->a:I

    .line 311
    iput-object v0, v1, Lcom/google/n/a/b/a/a/e;->b:Lcom/google/n/a/b/a/a/c;

    .line 312
    iput-object v1, v2, Lcom/google/n/a/b/a/a/k;->b:Lcom/google/n/a/b/a/a/e;

    .line 313
    iget-object v0, p1, Lcom/google/android/gms/playlog/b/h;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/google/n/a/b/a/a/k;->c:I

    .line 320
    iget-object v0, p1, Lcom/google/android/gms/playlog/b/h;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p1, Lcom/google/android/gms/playlog/b/h;->h:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/n/a/b/a/a/k;->e:Ljava/lang/String;

    .line 324
    :cond_0
    sget-object v0, Lcom/google/android/gms/playlog/uploader/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 325
    sget-object v3, Lcom/google/android/gms/playlog/uploader/b;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Empty test id: testId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 328
    :goto_0
    iput-object v0, v2, Lcom/google/n/a/b/a/a/k;->g:[[B

    .line 330
    return-object v2

    .line 325
    :cond_3
    array-length v0, p2

    new-array v1, v0, [[B

    const/4 v0, 0x0

    :goto_1
    array-length v4, p2

    if-ge v0, v4, :cond_4

    aget-object v4, p2, v0

    invoke-static {v3, v4}, Lcom/google/android/gms/playlog/c/a;->a(Ljava/lang/String;[B)[B

    move-result-object v4

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object v0, p2

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 465
    if-nez p1, :cond_0

    .line 466
    const-string v1, "Uploader"

    const-string v2, "No account for auth token provided"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :goto_0
    return-object v0

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/playlog/uploader/b;->e:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 474
    const-string v1, "Uploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " no longer exists, so no auth token."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 479
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/playlog/uploader/b;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/playlog/uploader/b;->h:Lcom/google/android/gms/playlog/uploader/c;

    iget-object v2, v2, Lcom/google/android/gms/playlog/uploader/c;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/google/android/gms/auth/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/auth/ag; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 481
    :catch_0
    move-exception v1

    .line 482
    const-string v2, "Uploader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get auth token: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/auth/ag;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 483
    :catch_1
    move-exception v1

    .line 484
    const-string v2, "Uploader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get auth token: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 485
    :catch_2
    move-exception v1

    .line 486
    const-string v2, "Uploader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get auth token: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/auth/q;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/playlog/b/h;Lcom/google/n/a/b/a/a/k;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 283
    :try_start_0
    iget-object v1, p1, Lcom/google/android/gms/playlog/b/h;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/playlog/uploader/b;->h:Lcom/google/android/gms/playlog/uploader/c;

    iget-object v2, v2, Lcom/google/android/gms/playlog/uploader/c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/playlog/uploader/b;->h:Lcom/google/android/gms/playlog/uploader/c;

    iget v3, v3, Lcom/google/android/gms/playlog/uploader/c;->c:I

    invoke-direct {p0, v1, p2, v2, v3}, Lcom/google/android/gms/playlog/uploader/b;->a(Ljava/lang/String;Lcom/google/n/a/b/a/a/k;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 293
    :goto_0
    return v0

    .line 288
    :catch_0
    move-exception v1

    .line 289
    const-string v2, "Uploader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Network request failed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :catch_1
    move-exception v1

    .line 292
    const-string v2, "Uploader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Network request failed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/google/n/a/b/a/a/k;Ljava/lang/String;I)Z
    .locals 11

    .prologue
    const/16 v10, 0x190

    const/16 v9, 0x12c

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 348
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 352
    const-string v3, "https"

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 353
    const-string v1, "Uploader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Abort attempt to upload logs in plaintext: requestUrl="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :goto_0
    return v0

    .line 357
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/playlog/uploader/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 358
    if-eqz v3, :cond_1

    .line 359
    const-string v4, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GoogleLogin auth="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 363
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 364
    invoke-static {p2}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v6

    .line 365
    invoke-virtual {v5, v6}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 367
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 368
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 369
    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v5, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 371
    const-string v7, "gzip"

    invoke-virtual {v5, v7}, Lorg/apache/http/entity/ByteArrayEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 372
    const-string v7, "application/x-gzip"

    invoke-virtual {v5, v7}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v2, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 376
    sget-boolean v5, Lcom/google/android/gms/playlog/uploader/b;->a:Z

    if-eqz v5, :cond_2

    .line 377
    const-string v5, "Uploader"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Compressed log request from ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] to ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v4, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/playlog/uploader/b;->i:Lcom/google/android/g/f;

    invoke-virtual {v4, v2}, Lcom/google/android/g/f;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 381
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 382
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 386
    const/16 v6, 0xc8

    if-gt v6, v5, :cond_6

    if-ge v5, v9, :cond_6

    .line 387
    sget-boolean v0, Lcom/google/android/gms/playlog/uploader/b;->a:Z

    if-eqz v0, :cond_3

    .line 388
    const-string v0, "Uploader"

    const-string v3, "Successfully uploaded logs."

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_3
    sget-boolean v0, Lcom/google/android/gms/playlog/uploader/b;->b:Z

    if-nez v0, :cond_5

    :try_start_0
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const/16 v2, 0x80

    invoke-static {v0, v2}, Lcom/google/android/gms/playlog/d/a;->a(Ljava/io/InputStream;I)[B

    move-result-object v0

    new-instance v2, Lcom/google/n/a/b/a/a/l;

    invoke-direct {v2}, Lcom/google/n/a/b/a/a/l;-><init>()V

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;

    move-result-object v0

    check-cast v0, Lcom/google/n/a/b/a/a/l;

    iget-wide v2, v0, Lcom/google/n/a/b/a/a/l;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iget-wide v2, v0, Lcom/google/n/a/b/a/a/l;->a:J

    sget-boolean v0, Lcom/google/android/gms/playlog/uploader/b;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "Uploader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LogResponse: wait time in millis = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/playlog/uploader/b;->f:Lcom/google/android/gms/playlog/uploader/a;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/playlog/uploader/a;->a(J)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_5
    :goto_1
    move v0, v1

    .line 461
    goto/16 :goto_0

    .line 393
    :catch_0
    move-exception v0

    const-string v2, "Uploader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error parsing content: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/protobuf/nano/i;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "Uploader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error getting the content of the response body: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v2, "Uploader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error reading the content of the response body: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 394
    :cond_6
    if-gt v9, v5, :cond_9

    if-ge v5, v10, :cond_9

    .line 395
    if-lez p4, :cond_8

    .line 396
    const-string v0, "Location"

    invoke-interface {v2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 397
    if-nez v0, :cond_7

    .line 398
    const-string v0, "Uploader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Status "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "... redirect: no location header"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 401
    :cond_7
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 402
    add-int/lit8 v1, p4, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/playlog/uploader/b;->a(Ljava/lang/String;Lcom/google/n/a/b/a/a/k;Ljava/lang/String;I)Z

    move-result v1

    goto/16 :goto_1

    .line 406
    :cond_8
    const-string v1, "Uploader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Server returned "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "... redirect, but no more redirects allowed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 409
    goto/16 :goto_1

    .line 411
    :cond_9
    if-ne v5, v10, :cond_a

    .line 412
    const-string v0, "Uploader"

    const-string v2, "Server returned 400... deleting local malformed logs"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 414
    :cond_a
    const/16 v6, 0x191

    if-ne v5, v6, :cond_b

    .line 415
    const-string v1, "Uploader"

    const-string v2, "Server returned 401... invalidating auth token"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v1, p0, Lcom/google/android/gms/playlog/uploader/b;->e:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/google/android/gms/auth/r;->a(Landroid/content/Context;Ljava/lang/String;)V

    move v1, v0

    .line 417
    goto/16 :goto_1

    .line 418
    :cond_b
    const/16 v3, 0x1f4

    if-ne v5, v3, :cond_c

    .line 419
    const-string v1, "Uploader"

    const-string v2, "Server returned 500... server crashed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 421
    goto/16 :goto_1

    .line 422
    :cond_c
    const/16 v3, 0x1f5

    if-ne v5, v3, :cond_d

    .line 423
    const-string v1, "Uploader"

    const-string v2, "Server returned 501... service doesn\'t seem to exist"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 425
    goto/16 :goto_1

    .line 426
    :cond_d
    const/16 v3, 0x1f6

    if-ne v5, v3, :cond_e

    .line 427
    const-string v1, "Uploader"

    const-string v2, "Server returned 502... servers are down"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 429
    goto/16 :goto_1

    .line 430
    :cond_e
    const/16 v3, 0x1f7

    if-ne v5, v3, :cond_11

    .line 431
    const-string v3, "Retry-After"

    invoke-interface {v2, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 432
    if-eqz v2, :cond_10

    .line 434
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 436
    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 437
    const-string v3, "Uploader"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Server said to retry after "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v3, p0, Lcom/google/android/gms/playlog/uploader/b;->f:Lcom/google/android/gms/playlog/uploader/a;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/playlog/uploader/a;->a(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    move v2, v1

    .line 444
    :goto_2
    if-nez v2, :cond_f

    move v0, v1

    :cond_f
    move v1, v0

    .line 445
    goto/16 :goto_1

    .line 441
    :catch_3
    move-exception v3

    const-string v3, "Uploader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown retry value: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    goto :goto_2

    .line 446
    :cond_10
    const-string v0, "Uploader"

    const-string v2, "Status 503 without retry-after header"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 450
    :cond_11
    const/16 v2, 0x1f8

    if-ne v5, v2, :cond_12

    .line 451
    const-string v1, "Uploader"

    const-string v2, "Server returned 504... timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 453
    goto/16 :goto_1

    .line 455
    :cond_12
    const-string v0, "Uploader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected error received from server: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private b()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 231
    .line 232
    const-class v2, Lcom/google/android/gms/playlog/uploader/b;

    monitor-enter v2

    .line 233
    :try_start_0
    sget-boolean v3, Lcom/google/android/gms/playlog/uploader/b;->a:Z

    if-eqz v3, :cond_0

    const-string v3, "Uploader"

    const-string v4, "uploading all staged data"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/playlog/uploader/b;->j:Lcom/google/android/gms/playlog/b/a/f;

    invoke-virtual {v3}, Lcom/google/android/gms/playlog/b/a/f;->b()V

    .line 239
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/playlog/uploader/b;->j:Lcom/google/android/gms/playlog/b/a/f;

    invoke-virtual {v3}, Lcom/google/android/gms/playlog/b/a/f;->d()Lcom/google/android/gms/playlog/b/a/h;

    move-result-object v3

    .line 241
    if-eqz v3, :cond_3

    .line 243
    iget-object v4, v3, Lcom/google/android/gms/playlog/b/a/h;->b:Lcom/google/android/gms/playlog/b/a/d;

    invoke-virtual {v4}, Lcom/google/android/gms/playlog/b/a/d;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 248
    iget-object v4, v3, Lcom/google/android/gms/playlog/b/a/h;->a:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    invoke-static {v4}, Lcom/google/android/gms/playlog/service/c;->a(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;)Lcom/google/android/gms/playlog/b/h;

    move-result-object v4

    .line 250
    const/4 v5, 0x1

    new-array v5, v5, [[B

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/google/android/gms/playlog/b/a/h;->b:Lcom/google/android/gms/playlog/b/a/d;

    iget-object v7, v7, Lcom/google/android/gms/playlog/b/a/d;->b:[B

    aput-object v7, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/playlog/uploader/b;->a(Lcom/google/android/gms/playlog/b/h;[[B)Lcom/google/n/a/b/a/a/k;

    move-result-object v5

    .line 253
    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/playlog/uploader/b;->a(Lcom/google/android/gms/playlog/b/h;Lcom/google/n/a/b/a/a/k;)Z

    move-result v4

    .line 255
    if-nez v4, :cond_2

    .line 257
    iget-object v1, v3, Lcom/google/android/gms/playlog/b/a/h;->b:Lcom/google/android/gms/playlog/b/a/d;

    iget-boolean v3, v1, Lcom/google/android/gms/playlog/b/a/d;->c:Z

    if-eqz v3, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only one call to save() or delete() is permitted."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 257
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, v1, Lcom/google/android/gms/playlog/b/a/d;->c:Z

    .line 272
    :goto_1
    monitor-exit v2

    .line 273
    return v0

    .line 266
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/playlog/b/a/h;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 180
    invoke-direct {p0}, Lcom/google/android/gms/playlog/uploader/b;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    :goto_0
    return v0

    .line 184
    :cond_0
    sget-boolean v2, Lcom/google/android/gms/playlog/uploader/b;->d:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 186
    goto :goto_0

    .line 190
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/playlog/uploader/b;->g:Lcom/google/android/gms/playlog/b/f;

    invoke-virtual {v2}, Lcom/google/android/gms/playlog/b/f;->d()Lcom/google/android/gms/playlog/b/e;

    move-result-object v2

    .line 193
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/playlog/uploader/b;->h:Lcom/google/android/gms/playlog/uploader/c;

    iget-wide v4, v3, Lcom/google/android/gms/playlog/uploader/c;->d:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/playlog/b/e;->a(J)Lcom/google/android/gms/playlog/b/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 202
    if-eqz v3, :cond_3

    .line 203
    :try_start_1
    iget-object v4, v3, Lcom/google/android/gms/playlog/b/b;->a:Lcom/google/android/gms/playlog/b/h;

    iget-object v5, v3, Lcom/google/android/gms/playlog/b/b;->b:[[B

    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/playlog/uploader/b;->a(Lcom/google/android/gms/playlog/b/h;[[B)Lcom/google/n/a/b/a/a/k;

    move-result-object v4

    .line 207
    iget-object v5, v3, Lcom/google/android/gms/playlog/b/b;->a:Lcom/google/android/gms/playlog/b/h;

    invoke-direct {p0, v5, v4}, Lcom/google/android/gms/playlog/uploader/b;->a(Lcom/google/android/gms/playlog/b/h;Lcom/google/n/a/b/a/a/k;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 209
    if-eqz v4, :cond_2

    .line 211
    :try_start_2
    invoke-virtual {v3}, Lcom/google/android/gms/playlog/b/b;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 212
    :catch_0
    move-exception v3

    .line 215
    :try_start_3
    const-string v4, "Uploader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not delete logs: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 225
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/gms/playlog/b/e;->close()V

    throw v0

    .line 196
    :catch_1
    move-exception v0

    .line 199
    :try_start_4
    const-string v3, "Uploader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not read logs: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    .line 221
    :cond_2
    :goto_2
    invoke-virtual {v2}, Lcom/google/android/gms/playlog/b/e;->close()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method
