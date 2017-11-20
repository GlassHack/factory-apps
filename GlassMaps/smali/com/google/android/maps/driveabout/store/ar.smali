.class public final Lcom/google/android/maps/driveabout/store/ar;
.super Lcom/google/android/maps/driveabout/util/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/datarequest/k;


# static fields
.field private static a:Lcom/google/android/maps/driveabout/store/ar;


# instance fields
.field private final b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field private final c:Lcom/google/android/maps/driveabout/store/am;

.field private final d:Ljava/io/File;

.field private e:Z

.field private f:Landroid/os/Handler;

.field private final g:Ljava/util/Map;

.field private h:Z


# direct methods
.method private constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/io/File;Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 133
    const-string v0, "ibs"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/util/d;-><init>(Ljava/lang/String;)V

    .line 135
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/ar;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 136
    new-instance v0, Lcom/google/android/maps/driveabout/store/am;

    invoke-direct {v0, p3}, Lcom/google/android/maps/driveabout/store/am;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->c:Lcom/google/android/maps/driveabout/store/am;

    .line 137
    iput-object p2, p0, Lcom/google/android/maps/driveabout/store/ar;->d:Ljava/io/File;

    .line 138
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->g:Ljava/util/Map;

    .line 139
    return-void
.end method

.method public static a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/io/File;Ljava/util/Locale;)Lcom/google/android/maps/driveabout/store/ar;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/google/android/maps/driveabout/store/ar;->a:Lcom/google/android/maps/driveabout/store/ar;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/google/android/maps/driveabout/store/ar;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/maps/driveabout/store/ar;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/io/File;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/maps/driveabout/store/ar;->a:Lcom/google/android/maps/driveabout/store/ar;

    .line 153
    :cond_0
    sget-object v0, Lcom/google/android/maps/driveabout/store/ar;->a:Lcom/google/android/maps/driveabout/store/ar;

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/store/aq;)V
    .locals 4

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/ar;->g()V

    .line 394
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/aq;->a()Lcom/google/android/maps/driveabout/model/p;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 396
    const-string v0, "IndoorBuildingStore"

    .line 397
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/aq;->a()Lcom/google/android/maps/driveabout/model/p;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x31

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "handleResponse: Received unexpected response for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_0
    const/4 v0, 0x0

    .line 401
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/aq;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ar;->c:Lcom/google/android/maps/driveabout/store/am;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/aq;->a()Lcom/google/android/maps/driveabout/model/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/store/am;->c(Lcom/google/android/maps/driveabout/model/p;)V

    .line 410
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/store/aq;->a(Lcom/google/android/maps/driveabout/model/o;)V

    .line 411
    return-void

    .line 404
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/aq;->d()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    .line 405
    if-eqz v1, :cond_1

    .line 406
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->c:Lcom/google/android/maps/driveabout/store/am;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/aq;->a()Lcom/google/android/maps/driveabout/model/p;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/maps/driveabout/store/am;->a(Lcom/google/android/maps/driveabout/model/p;Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/model/o;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/ar;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/ar;->f()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/ar;Lcom/google/android/maps/driveabout/store/aq;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/ar;->a(Lcom/google/android/maps/driveabout/store/aq;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/ar;Lcom/google/android/maps/driveabout/store/at;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/ar;->a(Lcom/google/android/maps/driveabout/store/at;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/store/at;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 316
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/ar;->g()V

    .line 318
    iget-object v1, p1, Lcom/google/android/maps/driveabout/store/at;->a:Lcom/google/android/maps/driveabout/model/p;

    .line 319
    iget-object v2, p1, Lcom/google/android/maps/driveabout/store/at;->b:Lcom/google/android/maps/driveabout/store/ap;

    .line 322
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->c:Lcom/google/android/maps/driveabout/store/am;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/am;->a(Lcom/google/android/maps/driveabout/model/p;)Lcom/google/android/maps/driveabout/model/o;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_3

    .line 324
    const-string v3, "IndoorBuildingStore"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0xb

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "fetch: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " -> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    if-eqz v2, :cond_0

    .line 326
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/ar;->c:Lcom/google/android/maps/driveabout/store/am;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/am;->a(Lcom/google/android/maps/driveabout/model/o;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 327
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/maps/driveabout/store/ap;->a(Lcom/google/android/maps/driveabout/model/p;ILcom/google/android/maps/driveabout/model/o;)V

    .line 336
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/o;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 364
    :cond_1
    :goto_1
    return-void

    .line 330
    :cond_2
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, v0}, Lcom/google/android/maps/driveabout/store/ap;->a(Lcom/google/android/maps/driveabout/model/p;ILcom/google/android/maps/driveabout/model/o;)V

    goto :goto_0

    .line 348
    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->g:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/aq;

    .line 350
    if-nez v0, :cond_4

    .line 351
    new-instance v0, Lcom/google/android/maps/driveabout/store/aq;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/store/aq;-><init>(Lcom/google/android/maps/driveabout/model/p;)V

    .line 352
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/ar;->g:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_4
    if-eqz v2, :cond_5

    .line 356
    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/store/aq;->a(Lcom/google/android/maps/driveabout/store/ap;)V

    .line 359
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/aq;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/ar;->h:Z

    if-nez v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->f:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 362
    iput-boolean v9, p0, Lcom/google/android/maps/driveabout/store/ar;->h:Z

    goto :goto_1
.end method

.method private b(Lcom/google/android/maps/driveabout/model/p;)Lcom/google/android/maps/driveabout/model/o;
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->c:Lcom/google/android/maps/driveabout/store/am;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/store/am;->b(Lcom/google/android/maps/driveabout/model/p;)Lcom/google/android/maps/driveabout/model/o;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ar;->c:Lcom/google/android/maps/driveabout/store/am;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/am;->a(Lcom/google/android/maps/driveabout/model/o;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    const/4 v0, 0x0

    .line 295
    :cond_0
    return-object v0
.end method

.method public static b()Lcom/google/android/maps/driveabout/store/ar;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/google/android/maps/driveabout/store/ar;->a:Lcom/google/android/maps/driveabout/store/ar;

    return-object v0
.end method

.method private b(Lcom/google/android/maps/driveabout/store/aq;)V
    .locals 4

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/ar;->g()V

    .line 420
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/aq;->a()Lcom/google/android/maps/driveabout/model/p;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 421
    const-string v0, "IndoorBuildingStore"

    .line 422
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/aq;->a()Lcom/google/android/maps/driveabout/model/p;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "handleError: Received unexpected response for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 421
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/store/aq;->a(Lcom/google/android/maps/driveabout/model/o;)V

    .line 425
    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/store/ar;Lcom/google/android/maps/driveabout/store/aq;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/ar;->b(Lcom/google/android/maps/driveabout/store/aq;)V

    return-void
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/google/android/maps/driveabout/store/ar;->a:Lcom/google/android/maps/driveabout/store/ar;

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lcom/google/android/maps/driveabout/store/ar;->a:Lcom/google/android/maps/driveabout/store/ar;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/store/ar;->e()V

    .line 169
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/maps/driveabout/store/ar;->a:Lcom/google/android/maps/driveabout/store/ar;

    .line 171
    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/k;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->f:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 201
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/ar;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->c:Lcom/google/android/maps/driveabout/store/am;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/am;->c()V

    .line 208
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 209
    const-string v0, "IndoorBuildingStore"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ar;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "shutDown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requests outstanding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/ar;->g()V

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/ar;->h:Z

    .line 374
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->e()V

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/aq;

    .line 377
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/aq;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/ar;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v2, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V

    .line 379
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/aq;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 383
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ar;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->f()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->f()V

    .line 385
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 540
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 542
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation must be called on IndoorBuildingStore thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/model/p;)Lcom/google/android/maps/driveabout/model/q;
    .locals 1

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/ar;->b(Lcom/google/android/maps/driveabout/model/p;)Lcom/google/android/maps/driveabout/model/o;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/model/o;->a(Lcom/google/android/maps/driveabout/model/p;)Lcom/google/android/maps/driveabout/model/q;

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 4

    .prologue
    .line 216
    :try_start_0
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->c()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 223
    new-instance v0, Lcom/google/android/maps/driveabout/store/as;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/store/as;-><init>(Lcom/google/android/maps/driveabout/store/ar;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->f:Landroid/os/Handler;

    .line 247
    monitor-enter p0

    .line 248
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 249
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    invoke-static {}, Lcom/google/android/maps/driveabout/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->c:Lcom/google/android/maps/driveabout/store/am;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ar;->d:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/am;->a(Ljava/io/File;)V

    .line 256
    :cond_0
    monitor-enter p0

    .line 257
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/ar;->e:Z

    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 259
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 261
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 262
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/ar;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not set thread priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 259
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/p;Lcom/google/android/maps/driveabout/store/ap;)V
    .locals 4

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ar;->f:Landroid/os/Handler;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/maps/driveabout/store/at;

    invoke-direct {v3, p1, p2}, Lcom/google/android/maps/driveabout/store/at;-><init>(Lcom/google/android/maps/driveabout/model/p;Lcom/google/android/maps/driveabout/store/ap;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 278
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/ar;->start()V

    .line 181
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->f:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 187
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 190
    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/k;)V

    .line 191
    return-void

    .line 185
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final onComplete(Lcom/google/googlenav/datarequest/d;)V
    .locals 3

    .prologue
    .line 430
    invoke-interface {p1}, Lcom/google/googlenav/datarequest/d;->getRequestType()I

    move-result v0

    const/16 v1, 0x76

    if-ne v0, v1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ar;->f:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 433
    :cond_0
    return-void
.end method

.method public final onNetworkError(IZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 438
    const-string v1, "IndoorBuildingStore"

    const-string v2, "NetworkError: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return-void

    .line 438
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onPermanentFailure(Lcom/google/googlenav/datarequest/d;)V
    .locals 3

    .prologue
    .line 444
    invoke-interface {p1}, Lcom/google/googlenav/datarequest/d;->getRequestType()I

    move-result v0

    const/16 v1, 0x76

    if-ne v0, v1, :cond_0

    .line 445
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ar;->f:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 447
    :cond_0
    return-void
.end method
