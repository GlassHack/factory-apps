.class public final Lcom/google/googlenav/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/Map;

.field private static final b:Lcom/google/glass/logging/FormattingLogger;

.field private static volatile c:Z

.field private static volatile d:Lcom/google/googlenav/common/io/b/a;

.field private static volatile e:Lcom/google/googlenav/b/a;

.field private static volatile f:Lcom/google/googlenav/b/g;

.field private static volatile g:Lcom/google/googlenav/b/b;

.field private static volatile h:Lcom/google/googlenav/b/h;

.field private static volatile i:Lcom/google/googlenav/common/d/d;

.field private static volatile j:Z

.field private static volatile k:Z

.field private static l:Ljava/lang/Object;

.field private static volatile m:Lcom/google/googlenav/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 77
    const-string v0, "ServerControlledParametersManager:"

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/b/c;->b:Lcom/google/glass/logging/FormattingLogger;

    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/b/c;->c:Z

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/b/c;->i:Lcom/google/googlenav/common/d/d;

    .line 117
    sput-boolean v1, Lcom/google/googlenav/b/c;->j:Z

    .line 118
    sput-boolean v1, Lcom/google/googlenav/b/c;->k:Z

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/b/c;->l:Ljava/lang/Object;

    .line 127
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/dr;

    move-result-object v0

    const/4 v1, 0x2

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/dr;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dr;

    move-result-object v0

    const/4 v1, 0x3

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/dr;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dr;

    move-result-object v0

    const/4 v1, 0x6

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 130
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/dr;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dr;

    move-result-object v0

    .line 132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/dr;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dr;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/google/common/collect/dr;->b()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/b/c;->a:Ljava/util/Map;

    .line 141
    invoke-static {}, Lcom/google/googlenav/common/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Lcom/google/googlenav/b/a;

    .line 143
    invoke-static {}, Lcom/google/googlenav/b/a;->b()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/b/a;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    sput-object v0, Lcom/google/googlenav/b/c;->e:Lcom/google/googlenav/b/a;

    .line 144
    new-instance v0, Lcom/google/googlenav/b/g;

    .line 145
    invoke-static {}, Lcom/google/googlenav/b/g;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/b/g;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    sput-object v0, Lcom/google/googlenav/b/c;->f:Lcom/google/googlenav/b/g;

    .line 146
    new-instance v0, Lcom/google/googlenav/b/b;

    .line 147
    invoke-static {}, Lcom/google/googlenav/b/b;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/b/b;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    sput-object v0, Lcom/google/googlenav/b/c;->g:Lcom/google/googlenav/b/b;

    .line 148
    new-instance v0, Lcom/google/googlenav/b/h;

    .line 149
    invoke-static {}, Lcom/google/googlenav/b/h;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/b/h;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    sput-object v0, Lcom/google/googlenav/b/c;->h:Lcom/google/googlenav/b/h;

    .line 151
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    return-void
.end method

.method public static a()Lcom/google/googlenav/b/a;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/google/googlenav/b/c;->e:Lcom/google/googlenav/b/a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/common/d/d;)Lcom/google/googlenav/common/d/d;
    .locals 0

    .prologue
    .line 75
    sput-object p0, Lcom/google/googlenav/b/c;->i:Lcom/google/googlenav/common/d/d;

    return-object p0
.end method

.method public static a(Lcom/google/googlenav/common/io/b/a;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 618
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/j/b/a/b/e;->b:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 620
    invoke-static {}, Lcom/google/googlenav/e;->a()Lcom/google/googlenav/e;

    invoke-static {}, Lcom/google/googlenav/e;->e()Z

    move-result v1

    .line 622
    invoke-virtual {v0, v2, v2}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 623
    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 626
    invoke-virtual {p0, v3, v0}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    .line 627
    return-void
.end method

.method public static declared-synchronized a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 2

    .prologue
    .line 208
    const-class v1, Lcom/google/googlenav/b/c;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/google/googlenav/b/c;->c:Z

    .line 209
    const-string v0, "ServerControlledParametersManager_DA.data"

    invoke-static {p0, v0}, Lcom/google/googlenav/b/c;->a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit v1

    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 258
    sget-object v0, Lcom/google/googlenav/b/c;->d:Lcom/google/googlenav/common/io/b/a;

    if-eqz v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-static {p1}, Lcom/google/googlenav/b/c;->a(Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/google/googlenav/b/c;->d:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v1

    .line 266
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 267
    sget-object v2, Lcom/google/googlenav/b/c;->d:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    .line 269
    invoke-static {v2}, Lcom/google/googlenav/b/c;->d(Lcom/google/googlenav/common/io/b/a;)Z

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 272
    :cond_1
    invoke-static {p0, p1, v3}, Lcom/google/googlenav/b/c;->b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 75
    invoke-static {p0, p1, p2}, Lcom/google/googlenav/b/c;->b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 389
    invoke-static {}, Lcom/google/googlenav/b/c;->i()Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/b/c;->d:Lcom/google/googlenav/common/io/b/a;

    .line 391
    :try_start_0
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->e()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/googlenav/common/io/PersistentStore;->c(Ljava/lang/String;)[B

    move-result-object v0

    .line 392
    if-eqz v0, :cond_0

    .line 393
    new-instance v2, Lcom/google/googlenav/common/io/b/a;

    sget-object v3, Lcom/google/j/b/a/b/e;->c:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v2, v3}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 395
    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/io/b/a;->a([B)Lcom/google/googlenav/common/io/b/a;

    .line 397
    const/4 v0, 0x1

    .line 398
    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v3

    move v0, v1

    .line 399
    :goto_0
    if-ge v0, v3, :cond_0

    .line 400
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    invoke-static {v4}, Lcom/google/googlenav/b/c;->e(Lcom/google/googlenav/common/io/b/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    sget-object v2, Lcom/google/googlenav/b/c;->b:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Can\'t parse the CLIENT_PARAMETERS_RESPONSE_PROTO read from the cache: "

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    :cond_0
    return-void
.end method

.method static a(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 417
    :try_start_0
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/b;->e()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v1

    .line 418
    invoke-virtual {p0}, Lcom/google/googlenav/common/io/b/a;->c()[B

    move-result-object v2

    .line 417
    invoke-interface {v1, v2, p1}, Lcom/google/googlenav/common/io/PersistentStore;->a([BLjava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    const/4 v0, 0x1

    .line 422
    :goto_0
    return v0

    .line 420
    :catch_0
    move-exception v1

    .line 421
    sget-object v2, Lcom/google/googlenav/b/c;->b:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Can\'t write the CLIENT_PARAMETERS_RESPONSE_PROTO to the cache: "

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 75
    sput-boolean p0, Lcom/google/googlenav/b/c;->k:Z

    return p0
.end method

.method public static b()Lcom/google/googlenav/b/h;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/google/googlenav/b/c;->h:Lcom/google/googlenav/b/h;

    return-object v0
.end method

.method private static declared-synchronized b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 234
    const-class v1, Lcom/google/googlenav/b/c;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 254
    :goto_0
    monitor-exit v1

    return-void

    .line 237
    :cond_0
    :try_start_0
    sget-object v2, Lcom/google/googlenav/b/c;->l:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 238
    :try_start_1
    sget-object v0, Lcom/google/googlenav/b/c;->i:Lcom/google/googlenav/common/d/d;

    if-eqz v0, :cond_1

    .line 240
    sget-object v0, Lcom/google/googlenav/b/c;->i:Lcom/google/googlenav/common/d/d;

    invoke-virtual {v0}, Lcom/google/googlenav/common/d/d;->b()I

    .line 241
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/b/c;->i:Lcom/google/googlenav/common/d/d;

    .line 243
    :cond_1
    sget-boolean v0, Lcom/google/googlenav/b/c;->k:Z

    if-eqz v0, :cond_2

    .line 246
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/b/c;->j:Z

    .line 253
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 234
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 248
    :cond_2
    const/4 v0, 0x1

    :try_start_3
    sput-boolean v0, Lcom/google/googlenav/b/c;->k:Z

    .line 249
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/googlenav/b/c;->j:Z

    .line 250
    new-instance v0, Lcom/google/googlenav/b/d;

    invoke-direct {v0, p1, p2}, Lcom/google/googlenav/b/d;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/googlenav/common/io/b/a;)Z
    .locals 1

    .prologue
    .line 75
    invoke-static {p0}, Lcom/google/googlenav/b/c;->d(Lcom/google/googlenav/common/io/b/a;)Z

    move-result v0

    return v0
.end method

.method static synthetic c()Lcom/google/googlenav/common/io/b/a;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/googlenav/b/c;->d:Lcom/google/googlenav/common/io/b/a;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/common/io/b/a;)V
    .locals 0

    .prologue
    .line 75
    invoke-static {p0}, Lcom/google/googlenav/b/c;->e(Lcom/google/googlenav/common/io/b/a;)V

    return-void
.end method

.method static synthetic d()Lcom/google/googlenav/b/f;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/googlenav/b/c;->m:Lcom/google/googlenav/b/f;

    return-object v0
.end method

.method private static d(Lcom/google/googlenav/common/io/b/a;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 282
    const/4 v0, -0x1

    invoke-static {p0, v2, v0}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v3

    .line 284
    sget-object v0, Lcom/google/googlenav/b/c;->a:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    const-string v0, "MAPS"

    const-string v4, "ServerControlledParametersManager: ParameterGroupProto with type %s is supported"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v4, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 330
    :goto_0
    return v0

    .line 288
    :cond_0
    sget-object v0, Lcom/google/googlenav/b/c;->a:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 290
    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 291
    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    .line 292
    packed-switch v3, :pswitch_data_0

    .line 324
    :pswitch_0
    const-string v0, "MAPS"

    const-string v4, "ServerControlledParametersManager: ParameterGroupProto with type %s isn\'t supported"

    new-array v2, v2, [Ljava/lang/Object;

    .line 325
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 324
    invoke-static {v0, v4, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 326
    goto :goto_0

    .line 294
    :pswitch_1
    sget-object v1, Lcom/google/googlenav/b/c;->e:Lcom/google/googlenav/b/a;

    if-eqz v1, :cond_1

    .line 298
    sget-object v1, Lcom/google/googlenav/b/c;->e:Lcom/google/googlenav/b/a;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/b/a;->a(Lcom/google/googlenav/common/io/b/a;)V

    :goto_1
    move v0, v2

    .line 307
    goto :goto_0

    .line 305
    :cond_1
    new-instance v1, Lcom/google/googlenav/b/a;

    invoke-direct {v1, v0}, Lcom/google/googlenav/b/a;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    sput-object v1, Lcom/google/googlenav/b/c;->e:Lcom/google/googlenav/b/a;

    goto :goto_1

    .line 310
    :pswitch_2
    new-instance v1, Lcom/google/googlenav/b/g;

    invoke-direct {v1, v0}, Lcom/google/googlenav/b/g;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    sput-object v1, Lcom/google/googlenav/b/c;->f:Lcom/google/googlenav/b/g;

    .line 312
    invoke-static {}, Lcom/google/googlenav/e;->a()Lcom/google/googlenav/e;

    invoke-static {}, Lcom/google/googlenav/e;->d()V

    move v0, v2

    .line 313
    goto :goto_0

    .line 316
    :pswitch_3
    new-instance v1, Lcom/google/googlenav/b/b;

    invoke-direct {v1, v0}, Lcom/google/googlenav/b/b;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    sput-object v1, Lcom/google/googlenav/b/c;->g:Lcom/google/googlenav/b/b;

    move v0, v2

    .line 317
    goto :goto_0

    .line 320
    :pswitch_4
    new-instance v1, Lcom/google/googlenav/b/h;

    invoke-direct {v1, v0}, Lcom/google/googlenav/b/h;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    sput-object v1, Lcom/google/googlenav/b/c;->h:Lcom/google/googlenav/b/h;

    move v0, v2

    .line 321
    goto :goto_0

    .line 329
    :cond_2
    const-string v0, "MAPS"

    const-string v4, "ServerControlledParametersManager: ParameterGroupProto with type %s is not updated"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v4, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 330
    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static e(Lcom/google/googlenav/common/io/b/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 339
    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    .line 342
    sget-object v0, Lcom/google/googlenav/b/c;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 346
    :cond_0
    sget-object v0, Lcom/google/googlenav/b/c;->d:Lcom/google/googlenav/common/io/b/a;

    .line 347
    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    .line 350
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 351
    sget-object v3, Lcom/google/googlenav/b/c;->d:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v3, v4, v0}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    .line 353
    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 354
    sget-object v1, Lcom/google/googlenav/b/c;->d:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v1, v4, v0}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    .line 360
    :cond_1
    sget-object v0, Lcom/google/googlenav/b/c;->d:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v0, v4, p0}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    goto :goto_0

    .line 350
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic e()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/google/googlenav/b/c;->c:Z

    return v0
.end method

.method static synthetic f()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/googlenav/b/c;->l:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/google/googlenav/b/c;->j:Z

    return v0
.end method

.method static synthetic h()Lcom/google/googlenav/common/d/d;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/googlenav/b/c;->i:Lcom/google/googlenav/common/d/d;

    return-object v0
.end method

.method private static i()Lcom/google/googlenav/common/io/b/a;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 434
    new-instance v3, Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/j/b/a/b/e;->c:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v3, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 436
    sget-object v0, Lcom/google/googlenav/b/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 437
    new-instance v2, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/j/b/a/b/e;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v2, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 438
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 439
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 440
    invoke-virtual {v2, v5, v1}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 441
    packed-switch v1, :pswitch_data_0

    .line 455
    :pswitch_0
    const/4 v0, 0x0

    .line 457
    :goto_1
    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v3, v5, v0}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    goto :goto_0

    .line 443
    :pswitch_1
    invoke-static {}, Lcom/google/googlenav/b/a;->b()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    move-object v0, v2

    .line 444
    goto :goto_1

    .line 446
    :pswitch_2
    invoke-static {}, Lcom/google/googlenav/b/g;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    move-object v0, v2

    .line 447
    goto :goto_1

    .line 449
    :pswitch_3
    invoke-static {}, Lcom/google/googlenav/b/b;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    move-object v0, v2

    .line 450
    goto :goto_1

    .line 452
    :pswitch_4
    invoke-static {}, Lcom/google/googlenav/b/h;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    move-object v0, v2

    .line 453
    goto :goto_1

    .line 461
    :cond_1
    return-object v3

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
