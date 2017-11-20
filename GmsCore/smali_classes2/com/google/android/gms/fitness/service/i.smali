.class public final Lcom/google/android/gms/fitness/service/i;
.super Lcom/google/android/gms/fitness/internal/l;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final a:Lcom/google/android/gms/common/api/Status;

.field private static final b:Lcom/google/android/gms/common/api/Status;

.field private static final c:Lcom/google/android/gms/common/api/Status;

.field private static final d:Lcom/google/android/gms/common/api/Status;

.field private static final e:Lcom/google/android/gms/common/api/Status;

.field private static final f:Lcom/google/android/gms/fitness/data/DataSource;


# instance fields
.field private final g:Landroid/content/Context;

.field private final h:Landroid/os/Handler;

.field private final i:Ljava/lang/String;

.field private final j:Lcom/google/android/gms/fitness/n/ar;

.field private final k:Lcom/google/android/gms/fitness/sensors/a;

.field private final l:Lcom/google/android/gms/fitness/n/d;

.field private final m:Lcom/google/android/gms/fitness/service/au;

.field private final n:Lcom/google/android/gms/fitness/m/a;

.field private final o:Lcom/google/android/gms/fitness/f/d;

.field private final p:Lcom/google/android/gms/fitness/sensors/a/p;

.field private final q:Lcom/google/android/gms/fitness/a/i;

.field private final r:Lcom/google/android/gms/fitness/a/o;

.field private final s:Lcom/google/android/gms/fitness/service/ap;

.field private final t:Landroid/os/RemoteCallbackList;

.field private final u:Lcom/google/android/gms/fitness/service/ay;

.field private final v:Lcom/google/android/gms/fitness/settings/f;

.field private final w:Lcom/google/android/gms/fitness/l/b;

.field private final x:Lcom/google/c/j/a/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x1390

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/fitness/service/i;->a:Lcom/google/android/gms/common/api/Status;

    .line 154
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x1393

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/fitness/service/i;->b:Lcom/google/android/gms/common/api/Status;

    .line 158
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x1392

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/fitness/service/i;->c:Lcom/google/android/gms/common/api/Status;

    .line 162
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x1394

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/fitness/service/i;->d:Lcom/google/android/gms/common/api/Status;

    .line 166
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x138f

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/fitness/service/i;->e:Lcom/google/android/gms/common/api/Status;

    .line 170
    new-instance v0, Lcom/google/android/gms/fitness/data/h;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/h;-><init>()V

    sget-object v1, Lcom/google/android/gms/fitness/data/Application;->a:Lcom/google/android/gms/fitness/data/Application;

    iput-object v1, v0, Lcom/google/android/gms/fitness/data/h;->e:Lcom/google/android/gms/fitness/data/Application;

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->d:Lcom/google/android/gms/fitness/data/DataType;

    iput-object v1, v0, Lcom/google/android/gms/fitness/data/h;->a:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/fitness/data/h;->b:I

    const-string v1, "session_activity_segment"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/h;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/h;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/service/i;->f:Lcom/google/android/gms/fitness/data/DataSource;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/google/c/j/a/x;Lcom/google/android/gms/fitness/n/ar;Lcom/google/android/gms/fitness/sensors/a;Lcom/google/android/gms/fitness/m/a;Lcom/google/android/gms/fitness/n/d;Lcom/google/android/gms/fitness/service/au;Lcom/google/android/gms/fitness/f/d;Lcom/google/android/gms/fitness/a/o;Lcom/google/android/gms/fitness/service/ap;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-direct {p0}, Lcom/google/android/gms/fitness/internal/l;-><init>()V

    .line 193
    new-instance v0, Lcom/google/android/gms/fitness/service/an;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/fitness/service/an;-><init>(Lcom/google/android/gms/fitness/service/i;B)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/i;->t:Landroid/os/RemoteCallbackList;

    .line 226
    const-string v0, "Creating FitnessService with adapter %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p6, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 227
    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    .line 228
    const-string v0, "accountName"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/i;->i:Ljava/lang/String;

    .line 229
    const-string v0, "handler"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    .line 230
    iput-object p4, p0, Lcom/google/android/gms/fitness/service/i;->x:Lcom/google/c/j/a/x;

    .line 231
    const-string v0, "fitness store"

    invoke-static {p5, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/n/ar;

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    .line 232
    const-string v0, "adapter"

    invoke-static {p6, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/a;

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/i;->k:Lcom/google/android/gms/fitness/sensors/a;

    .line 233
    const-string v0, "data source manager"

    invoke-static {p7, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/m/a;

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/i;->n:Lcom/google/android/gms/fitness/m/a;

    .line 234
    const-string v0, "auth manager"

    invoke-static {p10, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/f/d;

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    .line 235
    invoke-static {}, Lcom/google/android/gms/fitness/service/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/fitness/sensors/a/t;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/fitness/sensors/a/t;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/fitness/service/i;->p:Lcom/google/android/gms/fitness/sensors/a/p;

    .line 239
    iput-object p8, p0, Lcom/google/android/gms/fitness/service/i;->l:Lcom/google/android/gms/fitness/n/d;

    .line 240
    iput-object p9, p0, Lcom/google/android/gms/fitness/service/i;->m:Lcom/google/android/gms/fitness/service/au;

    .line 241
    new-instance v0, Lcom/google/android/gms/fitness/a/i;

    invoke-direct {v0, p7, p5}, Lcom/google/android/gms/fitness/a/i;-><init>(Lcom/google/android/gms/fitness/m/a;Lcom/google/android/gms/fitness/n/ar;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/i;->q:Lcom/google/android/gms/fitness/a/i;

    .line 242
    iput-object p11, p0, Lcom/google/android/gms/fitness/service/i;->r:Lcom/google/android/gms/fitness/a/o;

    .line 243
    iput-object p12, p0, Lcom/google/android/gms/fitness/service/i;->s:Lcom/google/android/gms/fitness/service/ap;

    .line 244
    invoke-static {}, Lcom/google/android/gms/fitness/service/ay;->a()Lcom/google/android/gms/fitness/service/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/i;->u:Lcom/google/android/gms/fitness/service/ay;

    .line 245
    new-instance v0, Lcom/google/android/gms/fitness/settings/f;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/settings/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/i;->v:Lcom/google/android/gms/fitness/settings/f;

    .line 246
    new-instance v0, Lcom/google/android/gms/fitness/l/b;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/i;->k:Lcom/google/android/gms/fitness/sensors/a;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/l/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/fitness/sensors/a;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/i;->w:Lcom/google/android/gms/fitness/l/b;

    .line 247
    return-void

    .line 235
    :cond_0
    new-instance v0, Lcom/google/android/gms/fitness/sensors/a/y;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/sensors/a/y;-><init>()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/List;JJ)I
    .locals 9

    .prologue
    .line 1417
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/fitness/n/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Session;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Session;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/fitness/data/Application;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/fitness/data/Application;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Session;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/Session;->a(Lcom/google/android/gms/fitness/data/Application;)Lcom/google/android/gms/fitness/data/Session;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1420
    :cond_2
    const/4 v0, 0x0

    .line 1421
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Session;

    .line 1422
    iget-object v3, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/data/Session;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1423
    const-string v3, "Deleting activity segment for session: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const-string v0, "Expected 1 session activity segment data point: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v0, v4}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1424
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1423
    :cond_3
    iget-object v4, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    const/4 v5, 0x1

    invoke-interface {v4, v3, v5}, Lcom/google/android/gms/fitness/n/ar;->a(Ljava/util/List;Z)I

    move-result v3

    const-string v4, "Deleted %d session activity segment data points for session: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 1426
    :cond_4
    const-string v3, "Failed to delete app session: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 1430
    :cond_5
    const-string v0, "Deleted %d sessions"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1431
    return v1
.end method

.method private a(Ljava/util/List;JJ)I
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 1404
    .line 1405
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 1406
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p4, p5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 1407
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v0, v7

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/fitness/data/DataSource;

    .line 1408
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/fitness/n/ar;->a(JJLcom/google/android/gms/fitness/data/DataSource;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1409
    goto :goto_0

    .line 1411
    :cond_0
    const-string v1, "Deleted %d data points"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1412
    return v0
.end method

.method private a(Lcom/google/android/gms/fitness/request/SessionStartRequest;Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 957
    new-instance v0, Lcom/google/android/gms/fitness/data/Application;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/fitness/data/Application;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SessionStartRequest;->a()Lcom/google/android/gms/fitness/data/Session;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/Session;->a(Lcom/google/android/gms/fitness/data/Application;)Lcom/google/android/gms/fitness/data/Session;

    move-result-object v8

    .line 961
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    invoke-virtual {v8}, Lcom/google/android/gms/fitness/data/Session;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/android/gms/fitness/data/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/google/android/gms/fitness/data/Session;->a()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    move-object v1, p2

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/fitness/n/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    .line 968
    invoke-static {v0, v8}, Lcom/google/android/gms/fitness/service/i;->a(Ljava/util/List;Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/data/Session;

    move-result-object v0

    .line 969
    if-eqz v0, :cond_1

    .line 970
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Session;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    .line 997
    :goto_0
    return-object v0

    .line 975
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x1391

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v0, v8, v10}, Lcom/google/android/gms/fitness/n/ar;->b(Lcom/google/android/gms/fitness/data/Session;Z)V

    .line 982
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 983
    invoke-virtual {v8}, Lcom/google/android/gms/fitness/data/Session;->g()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 984
    const-string v0, "vnd.google.fitness.session"

    invoke-static {v8, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/d;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    .line 986
    const-string v0, "vnd.google.fitness.start_time"

    invoke-virtual {v8}, Lcom/google/android/gms/fitness/data/Session;->a()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 988
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->m:Lcom/google/android/gms/fitness/service/au;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/service/au;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 990
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 992
    :catch_0
    move-exception v3

    const-string v3, "Found dead intent listener %s, removing."

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v0, v4, v9

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 993
    iget-object v3, p0, Lcom/google/android/gms/fitness/service/i;->m:Lcom/google/android/gms/fitness/service/au;

    invoke-virtual {v3, p2, v0}, Lcom/google/android/gms/fitness/service/au;->a(Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 997
    :cond_2
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/DataDeleteRequest;Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;
    .locals 16

    .prologue
    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->a()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->b()J

    move-result-wide v6

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->f()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->d()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/HashSet;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->c()Ljava/util/List;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/fitness/service/i;->a(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/fitness/service/i;->a(Ljava/util/List;JJ)I

    move-result v2

    :cond_1
    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->g()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->e()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->e()Ljava/util/List;

    move-result-object v11

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-wide v12, v4

    move-wide v14, v6

    invoke-direct/range {v9 .. v15}, Lcom/google/android/gms/fitness/service/i;->a(Ljava/lang/String;Ljava/util/List;JJ)I

    move-result v3

    :cond_3
    const-string v4, "Deleted %d data points and %d sessions"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v2, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    return-object v2
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/DataInsertRequest;Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 143
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataInsertRequest;->a()Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/DataSet;

    aput-object v0, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/fitness/f/e;->b:Lcom/google/android/gms/fitness/f/e;

    invoke-interface {v1, p2, v2, v3}, Lcom/google/android/gms/fitness/f/d;->b(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "App %s does not have access to access data type %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v0, Lcom/google/android/gms/fitness/f/d;->c:Lcom/google/android/gms/common/api/Status;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/fitness/f/e;->b:Lcom/google/android/gms/fitness/f/e;

    invoke-interface {v1, p2, v2, v3}, Lcom/google/android/gms/fitness/f/d;->a(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Lcom/google/android/gms/fitness/f/f;

    move-result-object v1

    iget-boolean v2, v1, Lcom/google/android/gms/fitness/f/f;->b:Z

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/fitness/f/f;->a:Landroid/content/Intent;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    iget-object v1, v1, Lcom/google/android/gms/fitness/f/f;->a:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/f/d;->a(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "Failed to get OAuth token and un-recoverable exception was thrown. Proceeding with caution for now."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    invoke-interface {v2, p2}, Lcom/google/android/gms/fitness/f/d;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Application;

    move-result-object v2

    invoke-interface {v1, v0, v2, v5}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/fitness/data/Application;Z)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/SessionInsertRequest;Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    sget-object v2, Lcom/google/android/gms/fitness/f/e;->b:Lcom/google/android/gms/fitness/f/e;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/android/gms/fitness/f/d;->a(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Lcom/google/android/gms/fitness/f/f;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gms/fitness/f/f;->b:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/fitness/f/f;->a:Landroid/content/Intent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    iget-object v0, v0, Lcom/google/android/gms/fitness/f/f;->a:Landroid/content/Intent;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/f/d;->a(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    const-string v0, "Failed to get OAuth token and un-recoverable exception was thrown. Proceeding with caution for now."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->b()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/fitness/f/e;->b:Lcom/google/android/gms/fitness/f/e;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/android/gms/fitness/f/d;->b(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->c()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/fitness/f/e;->b:Lcom/google/android/gms/fitness/f/e;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/android/gms/fitness/f/d;->c(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const-string v0, "App %s does not have access to data types in request %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    aput-object p1, v1, v10

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v0, Lcom/google/android/gms/fitness/f/d;->c:Lcom/google/android/gms/common/api/Status;

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/google/android/gms/fitness/data/Application;

    invoke-direct {v0, p2, v8}, Lcom/google/android/gms/fitness/data/Application;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->a()Lcom/google/android/gms/fitness/data/Session;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/Session;->a(Lcom/google/android/gms/fitness/data/Application;)Lcom/google/android/gms/fitness/data/Session;

    move-result-object v9

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    invoke-virtual {v9}, Lcom/google/android/gms/fitness/data/Session;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/gms/fitness/data/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/android/gms/fitness/data/Session;->a()J

    move-result-wide v4

    invoke-virtual {v9}, Lcom/google/android/gms/fitness/data/Session;->b()J

    move-result-wide v6

    move-object v1, p2

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/fitness/n/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/google/android/gms/fitness/service/i;->a(Ljava/util/List;Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/data/Session;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v0, v8

    :goto_3
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v0, v9, v10}, Lcom/google/android/gms/fitness/n/ar;->b(Lcom/google/android/gms/fitness/data/Session;Z)V

    invoke-direct {p0, v9}, Lcom/google/android/gms/fitness/service/i;->b(Lcom/google/android/gms/fitness/data/Session;)V

    :goto_4
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    invoke-interface {v3, p2}, Lcom/google/android/gms/fitness/f/d;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Application;

    move-result-object v3

    invoke-interface {v2, v0, v3, v10}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/fitness/data/Application;Z)V

    goto :goto_5

    :cond_6
    new-instance v1, Lcom/google/android/gms/fitness/data/u;

    invoke-direct {v1}, Lcom/google/android/gms/fitness/data/u;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/u;->a(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/data/u;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/gms/fitness/data/u;->a(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/data/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/u;->a()Lcom/google/android/gms/fitness/data/Session;

    move-result-object v0

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v1, v0, v10}, Lcom/google/android/gms/fitness/n/ar;->c(Lcom/google/android/gms/fitness/data/Session;Z)V

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    invoke-interface {v3, p2}, Lcom/google/android/gms/fitness/f/d;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/Application;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/data/DataPoint;Lcom/google/android/gms/fitness/data/Application;)Ljava/lang/Long;

    goto :goto_6

    :cond_9
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 143
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.read"

    aput-object v2, v1, v3

    invoke-interface {v0, p2, v1}, Lcom/google/android/gms/fitness/f/d;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/fitness/f/f;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gms/fitness/f/f;->b:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/fitness/f/f;->a:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    iget-object v0, v0, Lcom/google/android/gms/fitness/f/f;->a:Landroid/content/Intent;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/f/d;->a(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Failed to get OAuth token and un-recoverable exception was thrown. Proceeding with caution for now."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->m:Lcom/google/android/gms/fitness/service/au;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->a()Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/google/android/gms/fitness/service/au;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {v2, p2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/au;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/SessionStartRequest;Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/request/SessionStartRequest;Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/SubscribeRequest;Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 143
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SubscribeRequest;->a()Lcom/google/android/gms/fitness/data/Subscription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Subscription;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Subscription;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    new-array v5, v2, [Lcom/google/android/gms/fitness/data/DataType;

    aput-object v0, v5, v3

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/fitness/f/e;->a:Lcom/google/android/gms/fitness/f/e;

    invoke-interface {v4, p2, v5, v6}, Lcom/google/android/gms/fitness/f/d;->a(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Lcom/google/android/gms/fitness/f/f;

    move-result-object v4

    iget-boolean v5, v4, Lcom/google/android/gms/fitness/f/f;->b:Z

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/google/android/gms/fitness/f/f;->a:Landroid/content/Intent;

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    iget-object v1, v4, Lcom/google/android/gms/fitness/f/f;->a:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/f/d;->a(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Subscription;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v4, "Failed to get OAuth token and un-recoverable exception was thrown. Proceeding with caution for now."

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/fitness/f/e;->a:Lcom/google/android/gms/fitness/f/e;

    invoke-interface {v4, p2, v5, v6}, Lcom/google/android/gms/fitness/f/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/fitness/f/e;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v1, "App: %s does not have access to data type: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v3

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v0, Lcom/google/android/gms/fitness/f/d;->c:Lcom/google/android/gms/common/api/Status;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Subscription;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v0, p2}, Lcom/google/android/gms/fitness/n/ar;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/d/c;

    iget-object v0, v0, Lcom/google/android/gms/fitness/d/c;->b:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Subscription;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Subscription;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Subscription;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Subscription;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    if-nez v0, :cond_6

    new-instance v2, Lcom/google/android/gms/fitness/d/c;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SubscribeRequest;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/fitness/d/e;->b:Lcom/google/android/gms/fitness/d/e;

    :goto_4
    invoke-direct {v2, p2, v1, v0}, Lcom/google/android/gms/fitness/d/c;-><init>(Ljava/lang/String;Lcom/google/android/gms/fitness/data/Subscription;Lcom/google/android/gms/fitness/d/e;)V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SubscribeRequest;->b()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, v2}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/d/c;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v0, v2}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/d/c;)V

    :cond_6
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    goto/16 :goto_1

    :cond_7
    iget-object v4, p0, Lcom/google/android/gms/fitness/service/i;->n:Lcom/google/android/gms/fitness/m/a;

    invoke-virtual {v4, v0, p2}, Lcom/google/android/gms/fitness/m/a;->a(Lcom/google/android/gms/fitness/data/DataSource;Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/Subscription;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/Subscription;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_8
    move v0, v3

    goto :goto_3

    :cond_9
    sget-object v0, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    goto :goto_4
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/UnsubscribeRequest;Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;
    .locals 13

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v0, p2}, Lcom/google/android/gms/fitness/n/ar;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/d/c;

    iget-object v1, v0, Lcom/google/android/gms/fitness/d/c;->b:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->c()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/i;->n:Lcom/google/android/gms/fitness/m/a;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->c()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/google/android/gms/fitness/m/a;->a(Lcom/google/android/gms/fitness/data/DataSource;Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Subscription;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/fitness/data/DataSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->n:Lcom/google/android/gms/fitness/m/a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/m/a;->a(Lcom/google/android/gms/fitness/d/c;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/fitness/d/c;

    iget-object v1, v2, Lcom/google/android/gms/fitness/d/c;->c:Lcom/google/android/gms/fitness/d/e;

    sget-object v3, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    if-ne v1, v3, :cond_1

    iget-object v6, p0, Lcom/google/android/gms/fitness/service/i;->m:Lcom/google/android/gms/fitness/service/au;

    iget-object v7, v2, Lcom/google/android/gms/fitness/d/c;->a:Ljava/lang/String;

    iget-object v1, v6, Lcom/google/android/gms/fitness/service/au;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_4

    const-string v1, "Couldn\'t find any registrations for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v3, v6

    invoke-static {v1, v3}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_1

    const-string v1, "Failed to unregister recording listener for %s. Will proceed to remove subscription anyway."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Subscription;->e()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v8, v2, Lcom/google/android/gms/fitness/d/c;->b:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/sensors/e/g;

    iget-object v10, v1, Lcom/google/android/gms/fitness/sensors/e/g;->d:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-virtual {v10}, Lcom/google/android/gms/fitness/data/Subscription;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v11

    invoke-virtual {v8}, Lcom/google/android/gms/fitness/data/Subscription;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v10}, Lcom/google/android/gms/fitness/data/Subscription;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v10

    invoke-virtual {v8}, Lcom/google/android/gms/fitness/data/Subscription;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v2, v6, Lcom/google/android/gms/fitness/service/au;->c:Lcom/google/android/gms/fitness/sensors/a;

    iget-object v8, v1, Lcom/google/android/gms/fitness/sensors/e/g;->a:Lcom/google/android/gms/fitness/data/o;

    invoke-interface {v2, v8}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/o;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, v6, Lcom/google/android/gms/fitness/service/au;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v7, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    const-string v1, "Recording Listener not found for the specified subscription: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v3, v6

    invoke-static {v1, v3}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/n/ar;->b(Lcom/google/android/gms/fitness/d/c;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Failed to remove subscription. Not found?: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/data/DataSet;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 879
    sget-object v0, Lcom/google/android/gms/fitness/service/i;->f:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v0

    .line 880
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Session;->g()I

    move-result v1

    .line 881
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 882
    const-string v2, "Activity type is Unknown: %d. No activity segment will be inserted."

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 894
    :goto_0
    return-object v0

    .line 887
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->a()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v1

    .line 888
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Session;->a()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Session;->b()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 890
    new-array v2, v8, [I

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Session;->g()I

    move-result v3

    aput v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/data/DataPoint;->a([I)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 891
    sget-object v2, Lcom/google/android/gms/fitness/service/i;->f:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Session;->h()Lcom/google/android/gms/fitness/data/Application;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/data/DataSource;->a(Lcom/google/android/gms/fitness/data/Application;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/data/DataPoint;->b(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 893
    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/data/Session;
    .locals 4

    .prologue
    .line 1174
    const-string v0, "Existing sessions: "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1176
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Session;

    .line 1177
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Session;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1178
    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/data/Session;->a(Lcom/google/android/gms/fitness/data/Session;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1185
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/n/ar;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/DataSourcesRequest;Ljava/lang/String;)Lcom/google/android/gms/fitness/result/DataSourcesResult;
    .locals 5

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->a()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/fitness/f/e;->a:Lcom/google/android/gms/fitness/f/e;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/android/gms/fitness/f/d;->a(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Lcom/google/android/gms/fitness/f/f;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gms/fitness/f/f;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/fitness/f/f;->a:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    iget-object v0, v0, Lcom/google/android/gms/fitness/f/f;->a:Landroid/content/Intent;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/f/d;->a(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/result/DataSourcesResult;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataSourcesResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/i;->k:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v3, v0}, Lcom/google/android/gms/fitness/sensors/a;->b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->n:Lcom/google/android/gms/fitness/m/a;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/m/a;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    sget-object v2, Lcom/google/android/gms/fitness/f/e;->a:Lcom/google/android/gms/fitness/f/e;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/android/gms/fitness/f/d;->a(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/fitness/f/e;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/fitness/result/DataSourcesResult;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/result/DataSourcesResult;-><init>(Ljava/util/List;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/result/DataTypeResult;
    .locals 3

    .prologue
    .line 1524
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/data/DataType;)J
    :try_end_0
    .catch Lcom/google/android/gms/fitness/n/at; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_0 .. :try_end_0} :catch_1

    .line 1531
    new-instance v0, Lcom/google/android/gms/fitness/result/DataTypeResult;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/fitness/result/DataTypeResult;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/data/DataType;)V

    :goto_0
    return-object v0

    .line 1525
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1526
    new-instance v0, Lcom/google/android/gms/fitness/result/DataTypeResult;

    sget-object v2, Lcom/google/android/gms/fitness/f/d;->b:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/n/at;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/fitness/result/DataTypeResult;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/data/DataType;)V

    goto :goto_0

    .line 1529
    :catch_1
    move-exception v0

    sget-object v0, Lcom/google/android/gms/fitness/service/i;->a:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/android/gms/fitness/result/DataTypeResult;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataTypeResult;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;Ljava/lang/String;)Lcom/google/android/gms/fitness/result/DataTypeResult;
    .locals 5

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/google/android/gms/fitness/f/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/fitness/f/d;->c:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/android/gms/fitness/result/DataTypeResult;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataTypeResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;->b()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/fitness/f/d;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Inconsistent shareable data type specified. Expected %s, Actual %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v0, Lcom/google/android/gms/fitness/f/d;->c:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/android/gms/fitness/result/DataTypeResult;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataTypeResult;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/result/DataTypeResult;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/DataTypeReadRequest;Ljava/lang/String;)Lcom/google/android/gms/fitness/result/DataTypeResult;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 143
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataTypeReadRequest;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    sget-object v2, Lcom/google/android/gms/fitness/f/e;->a:Lcom/google/android/gms/fitness/f/e;

    invoke-interface {v1, p2, v0, v2}, Lcom/google/android/gms/fitness/f/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/fitness/f/e;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "App %s does not have access to data type %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v0, Lcom/google/android/gms/fitness/f/d;->c:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/android/gms/fitness/result/DataTypeResult;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataTypeResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/n/ar;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/google/android/gms/fitness/result/DataTypeResult;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/fitness/result/DataTypeResult;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/data/DataType;)V

    goto :goto_0

    :cond_1
    const-string v1, "No datatype %s found. Checking if this is a shareable one."

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/f/d;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/google/android/gms/fitness/f/d;->d:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/android/gms/fitness/result/DataTypeResult;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataTypeResult;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "Adding shareable data type: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-direct {p0, v1}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/result/DataTypeResult;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;Ljava/lang/String;)Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;
    .locals 4

    .prologue
    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v0, p2}, Lcom/google/android/gms/fitness/n/ar;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/d/c;

    iget-object v0, v0, Lcom/google/android/gms/fitness/d/c;->b:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->a(Lcom/google/android/gms/fitness/data/Subscription;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;-><init>(Ljava/util/List;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/SessionReadRequest;Ljava/lang/String;)Lcom/google/android/gms/fitness/result/SessionReadResult;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 143
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SessionReadRequest;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SessionReadRequest;->e()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/gms/fitness/service/i;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/fitness/service/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    sget-object v2, Lcom/google/android/gms/fitness/f/e;->a:Lcom/google/android/gms/fitness/f/e;

    invoke-interface {v1, p2, v0, v2}, Lcom/google/android/gms/fitness/f/d;->a(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Lcom/google/android/gms/fitness/f/f;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gms/fitness/f/f;->b:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/fitness/f/f;->a:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    iget-object v0, v0, Lcom/google/android/gms/fitness/f/f;->a:Landroid/content/Intent;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/f/d;->a(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/result/SessionReadResult;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/SessionReadResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Failed to get OAuth token and un-recoverable exception was thrown. Proceeding with caution for now."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    sget-object v1, Lcom/google/android/gms/fitness/f/e;->a:Lcom/google/android/gms/fitness/f/e;

    invoke-interface {v0, p2, v8, v1}, Lcom/google/android/gms/fitness/f/d;->d(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "App %s does not have access to dataSources: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    const/4 v2, 0x1

    aput-object v8, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v0, Lcom/google/android/gms/fitness/f/d;->c:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/android/gms/fitness/result/SessionReadResult;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/SessionReadResult;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SessionReadRequest;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SessionReadRequest;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SessionReadRequest;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SessionReadRequest;->c()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SessionReadRequest;->d()J

    move-result-wide v6

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/fitness/n/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Session;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/request/SessionReadRequest;->a(Lcom/google/android/gms/fitness/data/Session;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SessionReadRequest;->i()Z

    move-result v0

    invoke-direct {p0, v8, v9, v0}, Lcom/google/android/gms/fitness/service/i;->a(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/fitness/result/SessionReadResult;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v9, v1, v2}, Lcom/google/android/gms/fitness/result/SessionReadResult;-><init>(Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_5
    move-object v1, p2

    goto :goto_1
.end method

.method private a(Lcom/google/android/gms/fitness/request/SessionStopRequest;Ljava/lang/String;)Lcom/google/android/gms/fitness/result/SessionStopResult;
    .locals 10

    .prologue
    .line 1027
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SessionStopRequest;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SessionStopRequest;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x0

    move-object v1, p2

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/fitness/n/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Session;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Session;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    const-string v3, "Should return only active sessions: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1029
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1031
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1032
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Session;

    .line 1033
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Session;->b()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    const-string v6, "Specified session is not active: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/fitness/data/u;

    invoke-direct {v1}, Lcom/google/android/gms/fitness/data/u;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/u;->a(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/data/u;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/fitness/data/u;->a(J)Lcom/google/android/gms/fitness/data/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/u;->a()Lcom/google/android/gms/fitness/data/Session;

    move-result-object v0

    .line 1034
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    const/4 v6, 0x1

    invoke-interface {v1, v0, v6}, Lcom/google/android/gms/fitness/n/ar;->c(Lcom/google/android/gms/fitness/data/Session;Z)V

    .line 1035
    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/service/i;->b(Lcom/google/android/gms/fitness/data/Session;)V

    .line 1036
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1040
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Session;->g()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/fitness/b;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1041
    const-string v6, "vnd.google.fitness.session"

    invoke-static {v0, v1, v6}, Lcom/google/android/gms/common/internal/safeparcel/d;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1043
    const-string v6, "vnd.google.fitness.start_time"

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Session;->a()J

    move-result-wide v8

    invoke-virtual {v1, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1044
    const-string v6, "vnd.google.fitness.end_time"

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Session;->b()J

    move-result-wide v8

    invoke-virtual {v1, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1046
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->m:Lcom/google/android/gms/fitness/service/au;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/service/au;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1048
    :try_start_0
    iget-object v7, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1050
    :catch_0
    move-exception v7

    const-string v7, "Found dead intent listener %s, removing."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1051
    iget-object v7, p0, Lcom/google/android/gms/fitness/service/i;->m:Lcom/google/android/gms/fitness/service/au;

    invoke-virtual {v7, p2, v0}, Lcom/google/android/gms/fitness/service/au;->a(Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_3

    .line 1033
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 1057
    :cond_4
    new-instance v0, Lcom/google/android/gms/fitness/result/SessionStopResult;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/fitness/result/SessionStopResult;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/SessionStopRequest;Ljava/lang/String;)Lcom/google/android/gms/fitness/result/SessionStopResult;
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/request/SessionStopRequest;Ljava/lang/String;)Lcom/google/android/gms/fitness/result/SessionStopResult;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/a;)Lcom/google/c/j/a/v;
    .locals 23

    .prologue
    .line 444
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    .line 445
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    .line 448
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/android/gms/fitness/data/DataType;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/fitness/f/e;->a:Lcom/google/android/gms/fitness/f/e;

    move-object/from16 v0, p2

    invoke-interface {v4, v0, v5, v6}, Lcom/google/android/gms/fitness/f/d;->a(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Lcom/google/android/gms/fitness/f/f;

    move-result-object v4

    .line 450
    iget-boolean v5, v4, Lcom/google/android/gms/fitness/f/f;->b:Z

    if-eqz v5, :cond_2

    .line 451
    iget-object v5, v4, Lcom/google/android/gms/fitness/f/f;->a:Landroid/content/Intent;

    if-eqz v5, :cond_1

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    iget-object v3, v4, Lcom/google/android/gms/fitness/f/f;->a:Landroid/content/Intent;

    invoke-interface {v2, v3}, Lcom/google/android/gms/fitness/f/d;->a(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-static {v2}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v2

    .line 516
    :goto_1
    return-object v2

    .line 445
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    goto :goto_0

    .line 455
    :cond_1
    const-string v4, "Failed to get OAuth token and un-recoverable exception was thrown. Proceeding with caution for now."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 461
    :cond_2
    if-nez v3, :cond_3

    .line 462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/fitness/service/i;->n:Lcom/google/android/gms/fitness/m/a;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/fitness/m/a;->a(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    .line 463
    if-nez v3, :cond_b

    .line 464
    const-string v2, "No live data sources available for %s. Returning success.  Will start recording once data source is live"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 467
    sget-object v2, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-static {v2}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v2

    goto :goto_1

    .line 471
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/fitness/service/i;->n:Lcom/google/android/gms/fitness/m/a;

    move-object/from16 v0, p2

    invoke-virtual {v4, v3, v0}, Lcom/google/android/gms/fitness/m/a;->a(Lcom/google/android/gms/fitness/data/DataSource;Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource;
    :try_end_0
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v9, v3

    .line 477
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    invoke-virtual {v9}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/fitness/f/e;->a:Lcom/google/android/gms/fitness/f/e;

    move-object/from16 v0, p2

    invoke-interface {v3, v0, v4, v5}, Lcom/google/android/gms/fitness/f/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/fitness/f/e;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 479
    const-string v2, "App: %s does not have access to data source: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v9, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 481
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x138a

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {v2}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v2

    goto :goto_1

    .line 473
    :catch_0
    move-exception v2

    sget-object v2, Lcom/google/android/gms/fitness/service/i;->a:Lcom/google/android/gms/common/api/Status;

    invoke-static {v2}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v2

    goto :goto_1

    .line 484
    :cond_4
    if-nez p3, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 485
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/fitness/service/i;->t:Landroid/os/RemoteCallbackList;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 490
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f()J

    move-result-wide v6

    .line 491
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->e()J

    move-result-wide v4

    .line 492
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-gez v3, :cond_a

    .line 494
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/fitness/service/i;->u:Lcom/google/android/gms/fitness/service/ay;

    invoke-virtual {v3, v9, v2}, Lcom/google/android/gms/fitness/service/ay;->a(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;)J

    move-result-wide v4

    .line 497
    const-wide/16 v2, 0x2

    div-long v2, v4, v2

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    .line 500
    :goto_4
    const-wide v15, 0x7fffffffffffffffL

    .line 501
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->k()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 502
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->k()J

    move-result-wide v15

    .line 505
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/i;->k:Lcom/google/android/gms/fitness/sensors/a;

    move-object/from16 v17, v0

    new-instance v22, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/fitness/service/i;->w:Lcom/google/android/gms/fitness/l/b;

    new-instance v6, Lcom/google/android/gms/fitness/l/e;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {v6, v3, v0, v2}, Lcom/google/android/gms/fitness/l/e;-><init>(Lcom/google/android/gms/fitness/l/b;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;B)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v5, Lcom/google/android/gms/fitness/l/a;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->c()Ljava/lang/String;

    move-result-object v2

    :goto_5
    move-object/from16 v0, p2

    invoke-direct {v5, v0, v4, v2}, Lcom/google/android/gms/fitness/l/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/fitness/data/o;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/fitness/l/c;

    iget-object v4, v3, Lcom/google/android/gms/fitness/l/b;->a:Landroid/content/Context;

    move-object/from16 v7, p3

    move-object v8, v5

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/fitness/l/c;-><init>(Lcom/google/android/gms/fitness/l/b;Landroid/content/Context;Lcom/google/android/gms/fitness/l/a;Lcom/google/android/gms/fitness/l/e;Lcom/google/android/gms/fitness/internal/a;Lcom/google/android/gms/fitness/l/a;)V

    iget-object v3, v3, Lcom/google/android/gms/fitness/l/b;->b:Lcom/google/android/gms/fitness/l/g;

    invoke-virtual {v3, v5, v2}, Lcom/google/android/gms/fitness/l/g;->a(Ljava/lang/Object;Lcom/google/android/gms/fitness/data/o;)V

    move-object v5, v2

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->g()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->j()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->h()Ljava/util/List;

    move-result-object v13

    move-object/from16 v3, v22

    move-object v4, v9

    move-wide/from16 v6, v20

    move-wide/from16 v8, v18

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;-><init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/o;JJJILjava/util/List;Ljava/util/List;J)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;

    move-result-object v2

    .line 516
    new-instance v3, Lcom/google/android/gms/fitness/service/ai;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/fitness/service/ai;-><init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)V

    invoke-static {v2, v3}, Lcom/google/c/j/a/n;->b(Lcom/google/c/j/a/v;Lcom/google/c/a/y;)Lcom/google/c/j/a/v;

    move-result-object v2

    goto/16 :goto_1

    .line 484
    :cond_7
    invoke-static/range {p3 .. p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    goto/16 :goto_3

    .line 505
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataSource;->k()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->d()Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v2, Lcom/google/android/gms/fitness/l/d;

    iget-object v4, v3, Lcom/google/android/gms/fitness/l/b;->a:Landroid/content/Context;

    move-object/from16 v7, p3

    move-object v8, v5

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/fitness/l/d;-><init>(Lcom/google/android/gms/fitness/l/b;Landroid/content/Context;Landroid/app/PendingIntent;Lcom/google/android/gms/fitness/l/e;Lcom/google/android/gms/fitness/internal/a;Landroid/app/PendingIntent;)V

    iget-object v3, v3, Lcom/google/android/gms/fitness/l/b;->c:Lcom/google/android/gms/fitness/l/g;

    invoke-virtual {v3, v5, v2}, Lcom/google/android/gms/fitness/l/g;->a(Ljava/lang/Object;Lcom/google/android/gms/fitness/data/o;)V

    move-object v5, v2

    goto :goto_6

    :cond_a
    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    goto/16 :goto_4

    :cond_b
    move-object v9, v3

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;)Lcom/google/c/j/a/v;
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;->b()Lcom/google/android/gms/fitness/data/BleDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->p:Lcom/google/android/gms/fitness/sensors/a/p;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/sensors/a/p;->a(Ljava/lang/String;)Lcom/google/c/j/a/v;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/a;)Lcom/google/c/j/a/v;
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/a;)Lcom/google/c/j/a/v;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/DataReadRequest;Ljava/lang/String;)Ljava/util/List;
    .locals 13

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/gms/fitness/service/i;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/service/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    sget-object v3, Lcom/google/android/gms/fitness/f/e;->a:Lcom/google/android/gms/fitness/f/e;

    invoke-interface {v2, p2, v1, v3}, Lcom/google/android/gms/fitness/f/d;->d(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "App %s does not have access to data sources %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v0, Lcom/google/android/gms/fitness/f/d;->c:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0, p1}, Lcom/google/android/gms/fitness/result/DataReadResult;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/request/DataReadRequest;)Lcom/google/android/gms/fitness/result/DataReadResult;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    sget-object v3, Lcom/google/android/gms/fitness/f/e;->a:Lcom/google/android/gms/fitness/f/e;

    invoke-interface {v2, p2, v0, v3}, Lcom/google/android/gms/fitness/f/d;->a(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/fitness/f/e;)Lcom/google/android/gms/fitness/f/f;

    move-result-object v0

    iget-boolean v2, v0, Lcom/google/android/gms/fitness/f/f;->b:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/fitness/f/f;->a:Landroid/content/Intent;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    iget-object v0, v0, Lcom/google/android/gms/fitness/f/f;->a:Landroid/content/Intent;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/f/d;->a(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/fitness/result/DataReadResult;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/request/DataReadRequest;)Lcom/google/android/gms/fitness/result/DataReadResult;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->e()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v2, p2}, Lcom/google/android/gms/fitness/service/i;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/fitness/data/a;->i:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v2, "Unsupported data type specified for aggregation: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    sget-object v0, Lcom/google/android/gms/fitness/service/i;->d:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0, p1}, Lcom/google/android/gms/fitness/result/DataReadResult;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/request/DataReadRequest;)Lcom/google/android/gms/fitness/result/DataReadResult;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->l:Lcom/google/android/gms/fitness/n/d;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/n/d;->a()V

    :cond_5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->d()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->j()I

    move-result v0

    if-nez v0, :cond_7

    const/4 v6, -0x1

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->l()Z

    move-result v7

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->m()Z

    move-result v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/fitness/service/i;->a(Ljava/util/List;JJIZZ)Ljava/util/List;

    move-result-object v12

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->q:Lcom/google/android/gms/fitness/a/i;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->d()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->h()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->g()I

    move-result v8

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->i()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v9

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->m()Z

    move-result v10

    move-object v1, v11

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/fitness/a/i;->a(Ljava/util/List;JJJILcom/google/android/gms/fitness/data/DataSource;Z)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/fitness/service/ax;

    invoke-direct {v1, v12, v0}, Lcom/google/android/gms/fitness/service/ax;-><init>(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, v1, Lcom/google/android/gms/fitness/service/ax;->a:Ljava/util/List;

    iget-object v2, v1, Lcom/google/android/gms/fitness/service/ax;->d:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/fitness/service/ax;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, v1, Lcom/google/android/gms/fitness/service/ax;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Bucket;

    iget v3, v1, Lcom/google/android/gms/fitness/service/ax;->g:I

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Bucket;->h()I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0x186a0

    if-le v3, v4, :cond_6

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/service/ax;->a()V

    :cond_6
    iput-object v0, v1, Lcom/google/android/gms/fitness/service/ax;->e:Lcom/google/android/gms/fitness/data/Bucket;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Bucket;->e()Ljava/util/List;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/gms/fitness/service/ax;->f:Ljava/util/List;

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/fitness/service/ax;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/service/ax;->b()V

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->j()I

    move-result v6

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Lcom/google/android/gms/fitness/service/ax;->a()V

    iget-object v0, v1, Lcom/google/android/gms/fitness/service/ax;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/result/DataReadResult;

    iget-object v3, v1, Lcom/google/android/gms/fitness/service/ax;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/result/DataReadResult;->a(I)V

    goto :goto_4

    :cond_9
    const-string v0, "Returning %d batches"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/google/android/gms/fitness/service/ax;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, v1, Lcom/google/android/gms/fitness/service/ax;->c:Ljava/util/List;

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .locals 4

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/n/ar;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1468
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1482
    :goto_0
    return-object v0

    .line 1472
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1473
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 1474
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1475
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1478
    :cond_2
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1479
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1482
    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .prologue
    .line 1266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1267
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 1268
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1270
    :cond_0
    return-object v1
.end method

.method private a(Ljava/util/List;JJIZZ)Ljava/util/List;
    .locals 12

    .prologue
    .line 1717
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1718
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/DataSource;

    .line 1719
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->n:Lcom/google/android/gms/fitness/m/a;

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/fitness/m/a;->a(Lcom/google/android/gms/fitness/data/DataSource;JJIZZ)Ljava/util/List;

    move-result-object v0

    .line 1721
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1722
    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1724
    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1727
    :cond_1
    return-object v9
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .prologue
    .line 1698
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 1700
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1701
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 1702
    iget-object v3, p0, Lcom/google/android/gms/fitness/service/i;->n:Lcom/google/android/gms/fitness/m/a;

    invoke-virtual {v3, v0, p3}, Lcom/google/android/gms/fitness/m/a;->a(Lcom/google/android/gms/fitness/data/DataSource;Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1704
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    .line 1705
    iget-object v3, p0, Lcom/google/android/gms/fitness/service/i;->n:Lcom/google/android/gms/fitness/m/a;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/fitness/m/a;->b(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1707
    :cond_1
    return-object v1
.end method

.method private a(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;
    .locals 12

    .prologue
    .line 1276
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1282
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/fitness/data/Session;

    .line 1283
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lcom/google/android/gms/fitness/data/Session;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lcom/google/android/gms/fitness/data/Session;->b()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/fitness/service/i;->a(Ljava/util/List;JJIZZ)Ljava/util/List;

    move-result-object v0

    .line 1290
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    .line 1291
    new-instance v2, Lcom/google/android/gms/fitness/data/SessionDataSet;

    invoke-direct {v2, v9, v0}, Lcom/google/android/gms/fitness/data/SessionDataSet;-><init>(Lcom/google/android/gms/fitness/data/Session;Lcom/google/android/gms/fitness/data/DataSet;)V

    .line 1292
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1295
    :cond_1
    return-object v10
.end method

.method private static a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Lcom/google/android/gms/fitness/internal/v;)V
    .locals 1

    .prologue
    .line 2072
    sget-object v0, Lcom/google/android/gms/fitness/service/i;->e:Lcom/google/android/gms/common/api/Status;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Lcom/google/android/gms/fitness/internal/v;Lcom/google/android/gms/common/api/Status;)V

    .line 2073
    return-void
.end method

.method private static a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Lcom/google/android/gms/fitness/internal/v;Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    .prologue
    .line 2082
    :try_start_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/fitness/internal/v;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2086
    :goto_0
    return-void

    .line 2083
    :catch_0
    move-exception v0

    const-string v1, "Couldn\'t send callback to client for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/fitness/d/c;)V
    .locals 4

    .prologue
    .line 659
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->n:Lcom/google/android/gms/fitness/m/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/m/a;->a(Lcom/google/android/gms/fitness/d/c;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/d/c;

    .line 660
    iget-object v2, v0, Lcom/google/android/gms/fitness/d/c;->c:Lcom/google/android/gms/fitness/d/e;

    sget-object v3, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    if-ne v2, v3, :cond_0

    .line 661
    iget-object v2, p0, Lcom/google/android/gms/fitness/service/i;->m:Lcom/google/android/gms/fitness/service/au;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/fitness/service/au;->a(Lcom/google/android/gms/fitness/d/c;)Lcom/google/c/j/a/v;

    goto :goto_0

    .line 664
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/d/c;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/d/c;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/service/i;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 143
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/fitness/service/u;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/fitness/service/u;-><init>(Lcom/google/android/gms/fitness/service/i;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/fitness/service/i;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/google/android/gms/fitness/service/i;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method private b(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Lcom/google/android/gms/fitness/internal/v;)V
    .locals 4

    .prologue
    .line 2076
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x1396

    const-string v3, "Application needs enabled Bluetooth"

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Lcom/google/android/gms/fitness/internal/v;Lcom/google/android/gms/common/api/Status;)V

    .line 2077
    return-void
.end method

.method private b(Lcom/google/android/gms/fitness/data/Session;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 904
    const-string v0, "Adding activity segment for session: %s"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 905
    invoke-static {p1}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v0

    .line 906
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    sget-object v2, Lcom/google/android/gms/fitness/service/i;->f:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataSource;->e()Lcom/google/android/gms/fitness/data/Application;

    move-result-object v2

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/fitness/data/Application;Z)V

    .line 909
    return-void
.end method

.method static synthetic c()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/google/android/gms/fitness/service/i;->b:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/m/a;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->n:Lcom/google/android/gms/fitness/m/a;

    return-object v0
.end method

.method static synthetic d()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/google/android/gms/fitness/service/i;->c:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/service/au;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->m:Lcom/google/android/gms/fitness/service/au;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/fitness/service/i;)Landroid/os/RemoteCallbackList;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->t:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method private static e()Z
    .locals 2

    .prologue
    .line 2062
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/l/b;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->w:Lcom/google/android/gms/fitness/l/b;

    return-object v0
.end method

.method private static f()Z
    .locals 1

    .prologue
    .line 2067
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2068
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/sensors/a;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->k:Lcom/google/android/gms/fitness/sensors/a;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/fitness/service/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/settings/f;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->v:Lcom/google/android/gms/fitness/settings/f;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/f/d;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/sensors/a/p;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->p:Lcom/google/android/gms/fitness/sensors/a/p;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/gms/fitness/service/i;)Lcom/google/c/j/a/x;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->x:Lcom/google/c/j/a/x;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 253
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/fitness/c/a;->a(Landroid/content/Context;)V

    .line 254
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->k:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/sensors/a;->a()V

    .line 255
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/fitness/service/j;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/fitness/service/j;-><init>(Lcom/google/android/gms/fitness/service/i;Ljava/util/concurrent/atomic/AtomicInteger;)V

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->t:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 256
    new-instance v0, Lcom/google/android/gms/fitness/k/b;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/i;->m:Lcom/google/android/gms/fitness/service/au;

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    iget-object v4, p0, Lcom/google/android/gms/fitness/service/i;->o:Lcom/google/android/gms/fitness/f/d;

    iget-object v5, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/fitness/k/b;-><init>(Ljava/lang/String;Lcom/google/android/gms/fitness/service/au;Lcom/google/android/gms/fitness/n/ar;Lcom/google/android/gms/fitness/f/d;Landroid/os/Handler;)V

    const-string v1, "Registering receiver for app uninstalls."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "Registering receiver for app disconnects."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.google.android.gms.fitness.app_disconnected"

    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "vnd.google.android.fitness/app_disconnect"

    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->s:Lcom/google/android/gms/fitness/service/ap;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->i:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/fitness/n/k;

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/i;->j:Lcom/google/android/gms/fitness/n/ar;

    invoke-direct {v2, v3}, Lcom/google/android/gms/fitness/n/k;-><init>(Lcom/google/android/gms/fitness/n/ar;)V

    iget-object v3, v0, Lcom/google/android/gms/fitness/service/ap;->b:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/fitness/service/aq;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/fitness/service/aq;-><init>(Lcom/google/android/gms/fitness/service/ap;Ljava/lang/String;Lcom/google/android/gms/fitness/n/k;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->s:Lcom/google/android/gms/fitness/service/ap;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/i;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/i;->r:Lcom/google/android/gms/fitness/a/o;

    iget-object v3, v0, Lcom/google/android/gms/fitness/service/ap;->b:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/fitness/service/ar;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/fitness/service/ar;-><init>(Lcom/google/android/gms/fitness/service/ap;Ljava/lang/String;Lcom/google/android/gms/fitness/a/o;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    return-void

    .line 256
    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception while adding an intent filter for app disconnects: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/internal/ble/c;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1954
    const-string v0, "listClaimedBleDevices request received"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1955
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1957
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/service/ae;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/fitness/service/ae;-><init>(Lcom/google/android/gms/fitness/service/i;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/ble/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1981
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1732
    const-string v0, "disableFit request received for: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1733
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1734
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/service/w;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/fitness/service/w;-><init>(Lcom/google/android/gms/fitness/service/i;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/v;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1756
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1836
    const-string v0, "claimBleDevice request received %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1837
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1838
    invoke-static {}, Lcom/google/android/gms/fitness/service/i;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1839
    invoke-static {p1, p2}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Lcom/google/android/gms/fitness/internal/v;)V

    .line 1901
    :goto_0
    return-void

    .line 1842
    :cond_0
    invoke-static {}, Lcom/google/android/gms/fitness/service/i;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1843
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/service/i;->b(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Lcom/google/android/gms/fitness/internal/v;)V

    goto :goto_0

    .line 1847
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/service/z;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/fitness/service/z;-><init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;Lcom/google/android/gms/fitness/internal/v;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/request/DataDeleteRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1352
    const-string v0, "deleteData request received %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1353
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1355
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/service/r;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/google/android/gms/fitness/service/r;-><init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/DataDeleteRequest;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/v;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1371
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/request/DataInsertRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1301
    const-string v0, "insertData request received %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1302
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1304
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/service/q;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/gms/fitness/service/q;-><init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/internal/v;Lcom/google/android/gms/fitness/request/DataInsertRequest;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1318
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/request/DataReadRequest;Lcom/google/android/gms/fitness/internal/b;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1590
    const-string v0, "ReadData request received %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1591
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1593
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/service/v;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/google/android/gms/fitness/service/v;-><init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/DataReadRequest;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1620
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/request/DataSourcesRequest;Lcom/google/android/gms/fitness/internal/e;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 355
    const-string v0, "findDataSources request received %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 356
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/service/af;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/google/android/gms/fitness/service/af;-><init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/DataSourcesRequest;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 377
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;Lcom/google/android/gms/fitness/internal/h;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1488
    const-string v0, "createCustomDataType request received %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1489
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1491
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/service/s;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/google/android/gms/fitness/service/s;-><init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1503
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/request/DataTypeReadRequest;Lcom/google/android/gms/fitness/internal/h;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1537
    const-string v0, "readCustomDataType request received %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1538
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1540
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/service/t;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/google/android/gms/fitness/service/t;-><init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/DataTypeReadRequest;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1558
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;Lcom/google/android/gms/fitness/internal/m;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 742
    const-string v0, "listSubscriptions request received %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 743
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/service/am;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/gms/fitness/service/am;-><init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/internal/m;Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 761
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 415
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    new-instance v4, Lcom/google/android/gms/fitness/internal/a;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v4, v0, p3, v2}, Lcom/google/android/gms/fitness/internal/a;-><init>(ILjava/lang/String;Z)V

    .line 417
    iget-object v6, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/fitness/service/ag;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/fitness/service/ag;-><init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/a;Lcom/google/android/gms/fitness/internal/v;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 439
    return-void

    :cond_1
    move v0, v2

    .line 415
    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 533
    const-string v0, "unregister request received %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 534
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/service/aj;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/google/android/gms/fitness/service/aj;-><init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/v;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 566
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/request/SessionInsertRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 781
    const-string v0, "insertSession request received %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 782
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 784
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/service/k;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/gms/fitness/service/k;-><init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/internal/v;Lcom/google/android/gms/fitness/request/SessionInsertRequest;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 799
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/request/SessionReadRequest;Lcom/google/android/gms/fitness/internal/p;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1191
    const-string v0, "readSession request received %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1192
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1194
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/service/p;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/google/android/gms/fitness/service/p;-><init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/SessionReadRequest;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1211
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1063
    const-string v0, "registerForSessions request received %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1064
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/service/n;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/google/android/gms/fitness/service/n;-><init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/v;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1078
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/request/SessionStartRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 935
    const-string v0, "startSession request received %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 936
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/service/l;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/gms/fitness/service/l;-><init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/internal/v;Lcom/google/android/gms/fitness/request/SessionStartRequest;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 953
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/request/SessionStopRequest;Lcom/google/android/gms/fitness/internal/s;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1003
    const-string v0, "stopSession request received %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1004
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1006
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/service/m;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/gms/fitness/service/m;-><init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/internal/s;Lcom/google/android/gms/fitness/request/SessionStopRequest;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1022
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/request/SessionUnregistrationRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1099
    const-string v0, "unregisterForSessions request received %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1100
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1102
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/service/o;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/fitness/service/o;-><init>(Lcom/google/android/gms/fitness/service/i;Ljava/lang/String;Lcom/google/android/gms/fitness/request/SessionUnregistrationRequest;Lcom/google/android/gms/fitness/internal/v;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1114
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/request/StartBleScanRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1764
    const-string v0, "startBleScan request received %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1765
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1766
    invoke-static {}, Lcom/google/android/gms/fitness/service/i;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1767
    invoke-static {p1, p2}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Lcom/google/android/gms/fitness/internal/v;)V

    .line 1793
    :goto_0
    return-void

    .line 1770
    :cond_0
    invoke-static {}, Lcom/google/android/gms/fitness/service/i;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1771
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/service/i;->b(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Lcom/google/android/gms/fitness/internal/v;)V

    goto :goto_0

    .line 1775
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/service/x;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/fitness/service/x;-><init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/StartBleScanRequest;Lcom/google/android/gms/fitness/internal/v;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/request/StopBleScanRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1800
    const-string v0, "stopBleScan request received %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1801
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1802
    invoke-static {}, Lcom/google/android/gms/fitness/service/i;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1803
    invoke-static {p1, p2}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Lcom/google/android/gms/fitness/internal/v;)V

    .line 1829
    :goto_0
    return-void

    .line 1806
    :cond_0
    invoke-static {}, Lcom/google/android/gms/fitness/service/i;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1807
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/service/i;->b(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Lcom/google/android/gms/fitness/internal/v;)V

    goto :goto_0

    .line 1811
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/service/y;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/fitness/service/y;-><init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/StopBleScanRequest;Lcom/google/android/gms/fitness/internal/v;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/request/SubscribeRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 571
    const-string v0, "subscribe request received %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 572
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/service/ak;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/gms/fitness/service/ak;-><init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/internal/v;Lcom/google/android/gms/fitness/request/SubscribeRequest;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 591
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1920
    const-string v0, "unclaimBleDevice request received %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1921
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1922
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/service/ad;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/google/android/gms/fitness/service/ad;-><init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/v;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1948
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/request/UnsubscribeRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 684
    const-string v0, "unsubscribe request received %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 685
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/service/al;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/gms/fitness/service/al;-><init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/internal/v;Lcom/google/android/gms/fitness/request/UnsubscribeRequest;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 701
    return-void
.end method

.method public final b(Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1985
    const-string v0, "deleteAllUserData request received"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1986
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->g:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1987
    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1988
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not allowed for package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1992
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->n:Lcom/google/android/gms/fitness/m/a;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/m/a;->c()V

    .line 1993
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p1, v0}, Lcom/google/android/gms/fitness/internal/v;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/fitness/sync/g; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2002
    :goto_0
    return-void

    .line 1995
    :catch_0
    move-exception v0

    :try_start_1
    sget-object v0, Lcom/google/android/gms/fitness/service/i;->a:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p1, v0}, Lcom/google/android/gms/fitness/internal/v;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1999
    :catch_1
    move-exception v0

    const-string v1, "Couldn\'t return result to caller"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1997
    :catch_2
    move-exception v0

    :try_start_2
    sget-object v0, Lcom/google/android/gms/fitness/service/i;->a:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p1, v0}, Lcom/google/android/gms/fitness/internal/v;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public final binderDied()V
    .locals 0

    .prologue
    .line 2007
    return-void
.end method

.method protected final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 2011
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/fitness/internal/l;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2012
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/i;->k:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/fitness/sensors/a;->a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2013
    iget-object v2, p0, Lcom/google/android/gms/fitness/service/i;->m:Lcom/google/android/gms/fitness/service/au;

    const-string v0, "RecordingManager:\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v0, v2, Lcom/google/android/gms/fitness/service/au;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v4, ":\n"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/e/g;

    const-string v4, "    "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/e/g;->d:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Subscription;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    :cond_1
    const-string v0, "  sessions: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, v2, Lcom/google/android/gms/fitness/service/au;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v0, v2, Lcom/google/android/gms/fitness/service/au;->d:Lcom/google/android/gms/fitness/n/d;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/fitness/n/d;->a(Ljava/io/PrintWriter;)V

    .line 2014
    return-void
.end method
