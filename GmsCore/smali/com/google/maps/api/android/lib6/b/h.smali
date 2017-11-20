.class public Lcom/google/maps/api/android/lib6/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/b/o;


# static fields
.field private static G:I

.field private static volatile H:Lcom/google/maps/api/android/lib6/b/h;


# instance fields
.field private volatile A:I

.field private volatile B:I

.field private C:Lcom/google/maps/api/android/lib6/b/u;

.field private final D:Lcom/google/g/a/d;

.field private volatile E:I

.field private F:I

.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/lang/String;

.field protected final c:Z

.field protected final d:Lcom/google/maps/api/android/lib6/b/k;

.field protected e:Lcom/google/maps/api/android/lib6/b/n;

.field protected f:I

.field protected g:I

.field protected h:Lcom/google/g/a/b/t;

.field protected i:Lcom/google/maps/api/android/lib6/b/f;

.field private volatile j:Ljava/lang/String;

.field private volatile k:Z

.field private l:Z

.field private final m:Ljava/util/List;

.field private final n:Ljava/lang/String;

.field private o:Ljava/lang/Long;

.field private final p:Ljava/util/List;

.field private final q:Ljava/util/Random;

.field private r:J

.field private volatile s:Z

.field private volatile t:I

.field private volatile u:J

.field private volatile v:J

.field private volatile w:Z

.field private x:J

.field private y:J

.field private volatile z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/google/maps/api/android/lib6/b/h;->G:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v3, -0x1

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/b/h;->l:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->p:Ljava/util/List;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->q:Ljava/util/Random;

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/b/h;->r:J

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/b/h;->s:Z

    iput-wide v4, p0, Lcom/google/maps/api/android/lib6/b/h;->u:J

    iput-wide v4, p0, Lcom/google/maps/api/android/lib6/b/h;->v:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/b/h;->x:J

    iput-wide v4, p0, Lcom/google/maps/api/android/lib6/b/h;->y:J

    iput v2, p0, Lcom/google/maps/api/android/lib6/b/h;->z:I

    iput v2, p0, Lcom/google/maps/api/android/lib6/b/h;->A:I

    iput v2, p0, Lcom/google/maps/api/android/lib6/b/h;->B:I

    iput v3, p0, Lcom/google/maps/api/android/lib6/b/h;->E:I

    iput v3, p0, Lcom/google/maps/api/android/lib6/b/h;->F:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-static {p1}, Lcom/google/maps/api/android/lib6/b/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/b/h;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/b/h;->a:Ljava/lang/String;

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->n:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/maps/api/android/lib6/b/h;->c:Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->d()Lcom/google/g/a/b/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->h:Lcom/google/g/a/b/t;

    new-instance v0, Lcom/google/g/a/d;

    invoke-direct {v0}, Lcom/google/g/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->D:Lcom/google/g/a/d;

    new-instance v0, Lcom/google/maps/api/android/lib6/b/f;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/h;->D:Lcom/google/g/a/d;

    invoke-direct {v0, p0, v1}, Lcom/google/maps/api/android/lib6/b/f;-><init>(Lcom/google/maps/api/android/lib6/b/h;Lcom/google/g/a/d;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->i:Lcom/google/maps/api/android/lib6/b/f;

    iput v2, p0, Lcom/google/maps/api/android/lib6/b/h;->f:I

    iput v2, p0, Lcom/google/maps/api/android/lib6/b/h;->g:I

    new-instance v0, Lcom/google/maps/api/android/lib6/b/k;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/h;->j:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/maps/api/android/lib6/b/k;-><init>(Lcom/google/maps/api/android/lib6/b/h;Ljava/lang/String;B)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->d:Lcom/google/maps/api/android/lib6/b/k;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->m:Ljava/util/List;

    new-instance v0, Lcom/google/maps/api/android/lib6/b/n;

    invoke-direct {v0, p0, v2}, Lcom/google/maps/api/android/lib6/b/n;-><init>(Lcom/google/maps/api/android/lib6/b/h;B)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->e:Lcom/google/maps/api/android/lib6/b/n;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/h;->e:Lcom/google/maps/api/android/lib6/b/n;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "REQUEST"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Using server: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/b/h;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/b/h;J)J
    .locals 1

    iput-wide p1, p0, Lcom/google/maps/api/android/lib6/b/h;->u:J

    return-wide p1
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/b/h;)Lcom/google/g/a/d;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->D:Lcom/google/g/a/d;

    return-object v0
.end method

.method public static a()Lcom/google/maps/api/android/lib6/b/h;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/b/h;->H:Lcom/google/maps/api/android/lib6/b/h;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/maps/api/android/lib6/b/h;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/b/h;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/b/h;->o:Ljava/lang/Long;

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/b/n;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/b/n;->b:Lcom/google/g/a/b/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/b/n;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/b/n;->b:Lcom/google/g/a/b/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/google/g/a/b/b/f;->a(IZ)Lcom/google/g/a/b/b/f;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static a(J)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v1, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/b/e;->c()Lcom/google/g/a/b/x;

    move-result-object v1

    const-string v2, "SessionID"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/g/a/b/x;->a(Ljava/lang/String;[B)Z

    invoke-interface {v1}, Lcom/google/g/a/b/x;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/b/h;I)V
    .locals 4

    const/16 v0, 0xc8

    if-le p1, v0, :cond_0

    const/4 v0, 0x3

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/b/n;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/b/n;->b:Lcom/google/g/a/b/b/f;

    const/16 v3, 0x16

    invoke-virtual {v0, v3, v1}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/b/h;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x1b

    invoke-direct {p0, v0, p1}, Lcom/google/maps/api/android/lib6/b/h;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/b/h;Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/google/maps/api/android/lib6/b/h;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/b/h;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/maps/api/android/lib6/b/h;->a(ZZ)V

    return-void
.end method

.method private declared-synchronized a(ZZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/b/h;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/h;->z:I

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/b/h;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/h;->A:I

    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/b/h;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/h;->B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static a(Ljava/util/Vector;)Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/b/g;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/b/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/b/h;J)J
    .locals 1

    iput-wide p1, p0, Lcom/google/maps/api/android/lib6/b/h;->v:J

    return-wide p1
.end method

.method private static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/maps/api/android/lib6/b/h;
    .locals 3

    const-class v1, Lcom/google/maps/api/android/lib6/b/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/maps/api/android/lib6/b/h;->H:Lcom/google/maps/api/android/lib6/b/h;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Attempting to create multiple DataRequestDispatchers"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/google/maps/api/android/lib6/b/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/maps/api/android/lib6/b/h;

    invoke-direct {v2, v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/b/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v2, Lcom/google/maps/api/android/lib6/b/h;->H:Lcom/google/maps/api/android/lib6/b/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v2
.end method

.method public static b()Lcom/google/maps/api/android/lib6/b/o;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/b/h;->H:Lcom/google/maps/api/android/lib6/b/h;

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/b/h;I)V
    .locals 6

    const-wide/16 v4, 0x7d0

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/h;->h:Lcom/google/g/a/b/t;

    iput p1, p0, Lcom/google/maps/api/android/lib6/b/h;->F:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/b/h;->x:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/b/h;->w:Z

    if-eqz v1, :cond_3

    :cond_0
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/h;->u()V

    iput p1, p0, Lcom/google/maps/api/android/lib6/b/h;->F:I

    const-wide/16 v2, 0xc8

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/b/h;->x:J

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/b/h;->a(I)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/b/h;->x:J

    iget-wide v4, p0, Lcom/google/maps/api/android/lib6/b/h;->r:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/b/h;->x:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/b/h;->x:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/b/h;->w:Z

    if-nez v1, :cond_6

    const-wide/16 v2, 0xc8

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/b/h;->x:J

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/b/h;->y:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/h;->D:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/b/h;->y:J

    goto :goto_0

    :cond_5
    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/b/h;->y:J

    const-wide/16 v4, 0x3a98

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/h;->D:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/b/h;->x:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_7

    const-wide/16 v2, 0x7d0

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/b/h;->x:J

    :goto_1
    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/b/h;->x:J

    iget-wide v4, p0, Lcom/google/maps/api/android/lib6/b/h;->r:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/b/h;->r:J

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/b/h;->x:J

    goto :goto_0

    :cond_7
    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/b/h;->x:J

    const-wide/16 v4, 0x5

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/b/h;->x:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/b/h;Z)V
    .locals 1

    const/16 v0, 0x1d

    invoke-direct {p0, v0, p1}, Lcom/google/maps/api/android/lib6/b/h;->a(IZ)V

    return-void
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/b/h;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/maps/api/android/lib6/b/h;->b(ZZ)V

    return-void
.end method

.method private declared-synchronized b(ZZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/b/h;->z:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/h;->z:I

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/b/h;->A:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/h;->A:I

    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/b/h;->B:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/h;->B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/b/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/b/h;->s:Z

    return v0
.end method

.method protected static b(Ljava/util/Vector;)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method static synthetic c(Lcom/google/maps/api/android/lib6/b/h;I)I
    .locals 0

    iput p1, p0, Lcom/google/maps/api/android/lib6/b/h;->E:I

    return p1
.end method

.method static synthetic c(Lcom/google/maps/api/android/lib6/b/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/h;->u()V

    return-void
.end method

.method protected static c(Ljava/util/Vector;)Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/b/g;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/b/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/maps/api/android/lib6/b/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/b/h;->k:Z

    return v0
.end method

.method static synthetic e(Lcom/google/maps/api/android/lib6/b/h;)I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/b/h;->E:I

    return v0
.end method

.method static synthetic f(Lcom/google/maps/api/android/lib6/b/h;)Lcom/google/maps/api/android/lib6/b/u;
    .locals 1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/h;->v()Lcom/google/maps/api/android/lib6/b/u;

    move-result-object v0

    return-object v0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "http:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic g(Lcom/google/maps/api/android/lib6/b/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->n:Ljava/lang/String;

    return-object v0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->p()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.google.settings/partner"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "name=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    move-object v0, v6

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_2
    const-string v2, "MAPS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error getting distribution channel for key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v0, v6

    goto :goto_1

    :cond_3
    move-object v0, v6

    goto :goto_0
.end method

.method static synthetic h(Lcom/google/maps/api/android/lib6/b/h;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->o:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic i(Lcom/google/maps/api/android/lib6/b/h;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/google/maps/api/android/lib6/b/h;)I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/b/h;->F:I

    return v0
.end method

.method static synthetic k(Lcom/google/maps/api/android/lib6/b/h;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/b/h;->x:J

    return-wide v0
.end method

.method static synthetic l(Lcom/google/maps/api/android/lib6/b/h;)Ljava/util/Random;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->q:Ljava/util/Random;

    return-object v0
.end method

.method public static p()Ljava/lang/String;
    .locals 3

    const-string v0, "maps_client_id"

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/b/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "Web"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic q()Lcom/google/maps/api/android/lib6/b/h;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/b/h;->H:Lcom/google/maps/api/android/lib6/b/h;

    return-object v0
.end method

.method static synthetic r()I
    .locals 2

    sget v0, Lcom/google/maps/api/android/lib6/b/h;->G:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/google/maps/api/android/lib6/b/h;->G:I

    return v0
.end method

.method private static s()J
    .locals 3

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->r()V

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->h()Lcom/google/g/a/e;

    move-result-object v0

    const-string v1, "SessionID"

    invoke-virtual {v0, v1}, Lcom/google/g/a/e;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/io/DataInput;->readLong()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-string v0, "FLASH"

    const-string v1, "SessionID corrupt!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->c()Lcom/google/g/a/b/x;

    move-result-object v0

    const-string v1, "SessionID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/g/a/b/x;->a(Ljava/lang/String;[B)Z

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized t()[Lcom/google/maps/api/android/lib6/b/p;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/maps/api/android/lib6/b/p;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/h;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized u()V
    .locals 2

    monitor-enter p0

    const-wide/high16 v0, -0x8000000000000000L

    :try_start_0
    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/b/h;->y:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/b/h;->w:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/b/h;->x:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/h;->F:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private v()Lcom/google/maps/api/android/lib6/b/u;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->C:Lcom/google/maps/api/android/lib6/b/u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/b/u;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/b/u;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->C:Lcom/google/maps/api/android/lib6/b/u;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->C:Lcom/google/maps/api/android/lib6/b/u;

    return-object v0
.end method


# virtual methods
.method protected final a(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/b/h;->w:Z

    if-nez v2, :cond_1

    const-string v1, "REQUEST"

    const-string v2, "In Error Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/b/h;->w:Z

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/b/h;->y:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/h;->h:Lcom/google/g/a/b/t;

    invoke-interface {v1}, Lcom/google/g/a/b/t;->b()Z

    move-result v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/maps/api/android/lib6/b/h;->a(IZLjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected final a(IZLjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/h;->t()[Lcom/google/maps/api/android/lib6/b/p;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2, p3}, Lcom/google/maps/api/android/lib6/b/p;->a(IZLjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(I[BZZZ)V
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->e:Lcom/google/maps/api/android/lib6/b/n;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/b/n;->a(I[BZZZ)V

    return-void
.end method

.method public final a(Lcom/google/g/a/b/b/f;)V
    .locals 6

    const/4 v4, 0x2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/h;->v()Lcom/google/maps/api/android/lib6/b/u;

    move-result-object v1

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/b/u;->a:Lcom/google/g/a/b/b/f;

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iput-object p1, v1, Lcom/google/maps/api/android/lib6/b/u;->a:Lcom/google/g/a/b/b/f;

    :try_start_0
    new-instance v0, Lcom/google/maps/api/android/lib6/b/c;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/b/c;-><init>()V

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/b/u;->a:Lcom/google/g/a/b/b/f;

    invoke-static {v0, v2}, Lcom/google/g/a/b/b/j;->a(Ljava/io/DataOutput;Lcom/google/g/a/b/b/f;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/b/e;->c()Lcom/google/g/a/b/x;

    move-result-object v2

    const-string v3, "ShortbreadToken"

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/c;->a()[B

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/google/g/a/b/x;->a(Ljava/lang/String;[B)Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/s;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, v1, Lcom/google/maps/api/android/lib6/b/u;->a:Lcom/google/g/a/b/b/f;

    invoke-virtual {v2, v0}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/b/u;->a:Lcom/google/g/a/b/b/f;

    invoke-virtual {v2, v4}, Lcom/google/g/a/b/b/f;->e(I)J

    move-result-wide v2

    invoke-virtual {p1, v4}, Lcom/google/g/a/b/b/f;->e(I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/google/maps/api/android/lib6/b/u;->a:Lcom/google/g/a/b/b/f;

    goto :goto_1
.end method

.method protected final a(Lcom/google/maps/api/android/lib6/b/g;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/h;->t()[Lcom/google/maps/api/android/lib6/b/p;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3, p1}, Lcom/google/maps/api/android/lib6/b/p;->b(Lcom/google/maps/api/android/lib6/b/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/b/p;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x12

    invoke-direct {p0, v0, p1}, Lcom/google/maps/api/android/lib6/b/h;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final a([BZ)V
    .locals 6

    const/4 v4, 0x0

    const/16 v1, 0x8

    const/4 v3, 0x1

    move-object v0, p0

    move-object v2, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/b/h;->a(I[BZZZ)V

    return-void
.end method

.method protected final b(Lcom/google/maps/api/android/lib6/b/g;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/h;->t()[Lcom/google/maps/api/android/lib6/b/p;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3, p1}, Lcom/google/maps/api/android/lib6/b/p;->a(Lcom/google/maps/api/android/lib6/b/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final declared-synchronized b(Lcom/google/maps/api/android/lib6/b/p;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lcom/google/maps/api/android/lib6/b/h;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final c(Lcom/google/maps/api/android/lib6/b/g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->e:Lcom/google/maps/api/android/lib6/b/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/b/n;->c(Lcom/google/maps/api/android/lib6/b/g;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x27

    invoke-direct {p0, v0, p1}, Lcom/google/maps/api/android/lib6/b/h;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/b/h;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/b/h;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/h;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Lcom/google/maps/api/android/lib6/b/h;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/b/h;->t:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/h;->t:I

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/b/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    monitor-exit p0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->d:Lcom/google/maps/api/android/lib6/b/k;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/k;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->i:Lcom/google/maps/api/android/lib6/b/f;

    monitor-enter v0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x26

    invoke-direct {p0, v0, p1}, Lcom/google/maps/api/android/lib6/b/h;->a(ILjava/lang/String;)V

    return-void
.end method

.method protected final f()V
    .locals 4

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/h;->t()[Lcom/google/maps/api/android/lib6/b/p;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/b/p;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final g()V
    .locals 4

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/h;->t()[Lcom/google/maps/api/android/lib6/b/p;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/b/p;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/b/h;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/b/h;->s:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/b/h;->z:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->h:Lcom/google/g/a/b/t;

    invoke-interface {v0}, Lcom/google/g/a/b/t;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/b/h;->z:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/b/h;->s:Z

    return-void
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/b/h;->s:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->d:Lcom/google/maps/api/android/lib6/b/k;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/k;->b()V

    return-void
.end method

.method public final declared-synchronized l()J
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->o:Ljava/lang/Long;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->s()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/b/h;->e:Lcom/google/maps/api/android/lib6/b/n;

    new-instance v3, Lcom/google/maps/api/android/lib6/b/j;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/maps/api/android/lib6/b/j;-><init>(Lcom/google/maps/api/android/lib6/b/h;B)V

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/b/n;->c(Lcom/google/maps/api/android/lib6/b/g;)V

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->o:Ljava/lang/Long;

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->o:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/b/h;->k:Z

    return-void
.end method

.method public final n()V
    .locals 2

    const/16 v0, 0x2d

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/b/h;->a(IZ)V

    return-void
.end method

.method public final o()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/h;->e:Lcom/google/maps/api/android/lib6/b/n;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/b/n;->b:Lcom/google/g/a/b/b/f;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
