.class public Lcom/google/googlenav/datarequest/DataRequestDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static H:I

.field private static volatile J:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field private static final l:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private volatile A:I

.field private volatile B:I

.field private C:Lcom/google/googlenav/g;

.field private final D:Lcom/google/googlenav/common/a;

.field private volatile E:I

.field private F:Ljava/lang/Throwable;

.field private G:I

.field private I:I

.field protected volatile a:Ljava/lang/String;

.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/lang/String;

.field protected final d:Z

.field protected final e:Lcom/google/googlenav/datarequest/h;

.field protected f:Lcom/google/googlenav/datarequest/i;

.field protected volatile g:Z

.field protected h:I

.field protected i:I

.field protected j:Lcom/google/googlenav/common/io/i;

.field protected k:Lcom/google/googlenav/datarequest/c;

.field private final m:Ljava/util/List;

.field private final n:Ljava/lang/String;

.field private o:J

.field private final p:Ljava/util/Vector;

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

    .prologue
    .line 64
    const-string v0, "REQUEST"

    .line 65
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->l:Lcom/google/glass/logging/FormattingLogger;

    .line 315
    const/4 v0, 0x0

    sput v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->H:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const-wide/high16 v5, -0x8000000000000000L

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 1193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->p:Ljava/util/Vector;

    .line 174
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->q:Ljava/util/Random;

    .line 211
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->r:J

    .line 221
    iput-boolean v4, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s:Z

    .line 235
    iput-wide v5, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->u:J

    .line 241
    iput-wide v5, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->v:J

    .line 263
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    .line 270
    iput-wide v5, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->y:J

    .line 273
    iput v4, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->z:I

    .line 279
    iput v4, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->A:I

    .line 286
    iput v4, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->B:I

    .line 300
    iput v2, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->E:I

    .line 312
    iput v2, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->G:I

    .line 321
    iput v2, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->I:I

    .line 1194
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1195
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1197
    :cond_1
    invoke-static {p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a:Ljava/lang/String;

    .line 1198
    iput-object p3, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c:Ljava/lang/String;

    .line 1199
    iput-object p2, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b:Ljava/lang/String;

    .line 1200
    iput-object p4, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->n:Ljava/lang/String;

    .line 1201
    iput-boolean p5, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->d:Z

    .line 1202
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->d()Lcom/google/googlenav/common/io/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->j:Lcom/google/googlenav/common/io/i;

    .line 1203
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->f()Lcom/google/googlenav/common/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->D:Lcom/google/googlenav/common/a;

    .line 1204
    new-instance v0, Lcom/google/googlenav/datarequest/c;

    iget-object v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->D:Lcom/google/googlenav/common/a;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/datarequest/c;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/googlenav/common/a;)V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->k:Lcom/google/googlenav/datarequest/c;

    .line 1205
    iput v4, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->h:I

    .line 1206
    iput v4, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->i:I

    .line 1207
    new-instance v0, Lcom/google/googlenav/datarequest/h;

    iget-object v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v7}, Lcom/google/googlenav/datarequest/h;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Lcom/google/googlenav/datarequest/e;)V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->e:Lcom/google/googlenav/datarequest/h;

    .line 1208
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->m:Ljava/util/List;

    .line 1209
    new-instance v0, Lcom/google/googlenav/datarequest/i;

    invoke-direct {v0, p0, v7}, Lcom/google/googlenav/datarequest/i;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/googlenav/datarequest/e;)V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->f:Lcom/google/googlenav/datarequest/i;

    .line 1210
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->f:Lcom/google/googlenav/datarequest/i;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1212
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->v()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->o:J

    .line 1215
    sget-boolean v0, Lcom/google/googlenav/common/d;->b:Z

    if-eqz v0, :cond_2

    .line 1216
    const/16 v0, 0x23

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(IZ)V

    .line 1219
    :cond_2
    sget-object v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->l:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Using server: %s"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1220
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;J)J
    .locals 0

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->u:J

    return-wide p1
.end method

.method public static a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;
    .locals 1

    .prologue
    .line 1164
    sget-object v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->J:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/googlenav/datarequest/DataRequestDispatcher;
    .locals 1

    .prologue
    .line 63
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    return-object v0
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/i;

    .line 1236
    invoke-static {v0}, Lcom/google/googlenav/datarequest/i;->a(Lcom/google/googlenav/datarequest/i;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    goto :goto_0

    .line 1238
    :cond_0
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/i;

    .line 1230
    invoke-static {v0}, Lcom/google/googlenav/datarequest/i;->a(Lcom/google/googlenav/datarequest/i;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 1232
    :cond_0
    return-void
.end method

.method private a(ILjava/lang/Throwable;)V
    .locals 5

    .prologue
    const-wide/16 v3, 0x7d0

    .line 1639
    const/4 v0, 0x0

    .line 1640
    monitor-enter p0

    .line 1643
    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {}, Lcom/google/googlenav/common/d;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1644
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1650
    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->j:Lcom/google/googlenav/common/io/i;

    .line 1651
    iput-object p2, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->F:Ljava/lang/Throwable;

    .line 1652
    iput p1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->G:I

    .line 1654
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 1656
    iget-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->w:Z

    if-eqz v1, :cond_4

    .line 1657
    :cond_1
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x()V

    .line 1658
    iput p1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->G:I

    .line 1659
    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    .line 1688
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1690
    if-eqz v0, :cond_3

    .line 1691
    invoke-virtual {p0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(I)V

    .line 1693
    :cond_3
    return-void

    .line 1660
    :cond_4
    :try_start_1
    iget-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    iget-wide v3, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->r:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 1661
    iget-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1688
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1664
    :cond_5
    :try_start_2
    iget-boolean v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->w:Z

    if-nez v1, :cond_7

    .line 1665
    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    .line 1667
    iget-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->y:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    .line 1668
    iget-object v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->D:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->y:J

    goto :goto_0

    .line 1669
    :cond_6
    iget-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->y:J

    const-wide/16 v3, 0x3a98

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->D:Lcom/google/googlenav/common/a;

    .line 1670
    invoke-interface {v3}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 1673
    const/4 v0, 0x1

    goto :goto_0

    .line 1676
    :cond_7
    iget-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_8

    .line 1677
    const-wide/16 v1, 0x7d0

    iput-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    .line 1684
    :goto_1
    iget-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    iget-wide v3, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->r:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 1685
    iget-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->r:J

    iput-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    goto :goto_0

    .line 1680
    :cond_8
    iget-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    const-wide/16 v3, 0x5

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x4

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private a(IZ)V
    .locals 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/i;

    .line 1224
    invoke-static {v0}, Lcom/google/googlenav/datarequest/i;->a(Lcom/google/googlenav/datarequest/i;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    goto :goto_0

    .line 1226
    :cond_0
    return-void
.end method

.method private a(I[BZZZ)V
    .locals 7

    .prologue
    .line 1725
    new-instance v0, Lcom/google/googlenav/datarequest/l;

    const/4 v6, 0x0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/datarequest/l;-><init>(I[BZZZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V

    .line 1727
    return-void
.end method

.method public static a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 0

    .prologue
    .line 1178
    sput-object p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->J:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 1179
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;I)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;ILjava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Z)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;ZZ)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(ZZ)V

    return-void
.end method

.method private declared-synchronized a(ZZ)V
    .locals 1

    .prologue
    .line 1102
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->z:I

    .line 1103
    if-eqz p1, :cond_0

    .line 1104
    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->A:I

    .line 1106
    :cond_0
    if-eqz p2, :cond_1

    .line 1107
    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1109
    :cond_1
    monitor-exit p0

    return-void

    .line 1102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static a(Ljava/util/Vector;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1732
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1733
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/d;

    .line 1734
    invoke-interface {v0}, Lcom/google/googlenav/datarequest/d;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1735
    const/4 v2, 0x1

    .line 1739
    :cond_0
    return v2

    .line 1732
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;I)I
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->E:I

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;J)J
    .locals 0

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->v:J

    return-wide p1
.end method

.method static synthetic b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Lcom/google/googlenav/common/a;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->D:Lcom/google/googlenav/common/a;

    return-object v0
.end method

.method private static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/googlenav/datarequest/DataRequestDispatcher;
    .locals 7

    .prologue
    .line 1135
    const-class v6, Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->J:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    if-eqz v0, :cond_0

    .line 1136
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to create multiple DataRequestDispatchers"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 1139
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1140
    new-instance v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->J:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 1142
    sget-object v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->J:Lcom/google/googlenav/datarequest/DataRequestDispatcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1153
    if-eqz p0, :cond_0

    const-string v0, "http:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    const-string v1, "https:"

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object p0, v0

    .line 1157
    :cond_0
    return-object p0

    .line 1154
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 1169
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->J:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 1170
    return-void
.end method

.method static b(J)V
    .locals 3

    .prologue
    .line 1771
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1772
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1773
    invoke-interface {v1, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 1774
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/b;->e()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v1

    .line 1775
    const-string v2, "SessionID"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/googlenav/common/io/PersistentStore;->a(Ljava/lang/String;[B)Z

    .line 1779
    invoke-interface {v1}, Lcom/google/googlenav/common/io/PersistentStore;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1784
    return-void

    .line 1780
    :catch_0
    move-exception v0

    .line 1782
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Z)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->d(Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;ZZ)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(ZZ)V

    return-void
.end method

.method private declared-synchronized b(ZZ)V
    .locals 1

    .prologue
    .line 1119
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->z:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->z:I

    .line 1120
    if-eqz p1, :cond_0

    .line 1121
    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->A:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->A:I

    .line 1123
    :cond_0
    if-eqz p2, :cond_1

    .line 1124
    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->B:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    :cond_1
    monitor-exit p0

    return-void

    .line 1119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static b(Ljava/util/Vector;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1744
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1745
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/d;

    .line 1746
    invoke-interface {v0}, Lcom/google/googlenav/datarequest/d;->isSubmission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1747
    const/4 v2, 0x1

    .line 1750
    :cond_0
    return v2

    .line 1744
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/googlenav/datarequest/DataRequestDispatcher;J)J
    .locals 0

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->o:J

    return-wide p1
.end method

.method private c(I)V
    .locals 2

    .prologue
    .line 1894
    const/16 v0, 0xc8

    if-le p1, v0, :cond_0

    const/4 v0, 0x4

    .line 1897
    :goto_0
    const/16 v1, 0x16

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(II)V

    .line 1898
    return-void

    .line 1894
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Z)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->e(Z)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1828
    const/16 v0, 0x12

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(ILjava/lang/String;)V

    .line 1829
    return-void
.end method

.method private c(Z)V
    .locals 1

    .prologue
    .line 1820
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(IZ)V

    .line 1821
    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s:Z

    return v0
.end method

.method protected static c(Ljava/util/Vector;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1755
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1756
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/d;

    .line 1757
    invoke-interface {v0}, Lcom/google/googlenav/datarequest/d;->usesShortbreadToken()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1758
    const/4 v2, 0x1

    .line 1762
    :cond_0
    return v2

    .line 1755
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x()V

    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Z)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->f(Z)V

    return-void
.end method

.method private d(Lcom/google/googlenav/datarequest/d;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1466
    sget-object v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->l:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Add Data Request: %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/google/googlenav/datarequest/d;->getRequestType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1468
    iget-boolean v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->g:Z

    if-eqz v0, :cond_0

    .line 1469
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(IZLjava/lang/String;)V

    .line 1473
    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->f:Lcom/google/googlenav/datarequest/i;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/datarequest/i;->a(Lcom/google/googlenav/datarequest/d;)V

    .line 1474
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1846
    const/16 v0, 0x1b

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(ILjava/lang/String;)V

    .line 1847
    return-void
.end method

.method private d(Z)V
    .locals 1

    .prologue
    .line 1850
    const/16 v0, 0x1d

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(IZ)V

    .line 1851
    return-void
.end method

.method static synthetic e(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->E:I

    return v0
.end method

.method private e(Z)V
    .locals 1

    .prologue
    .line 1875
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(IZ)V

    .line 1876
    return-void
.end method

.method static synthetic f(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Lcom/google/googlenav/g;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->y()Lcom/google/googlenav/g;

    move-result-object v0

    return-object v0
.end method

.method private f(Z)V
    .locals 1

    .prologue
    .line 1880
    const/16 v0, 0x21

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(IZ)V

    .line 1881
    return-void
.end method

.method static synthetic g(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->o:J

    return-wide v0
.end method

.method static synthetic h(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/util/List;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->G:I

    return v0
.end method

.method static synthetic k(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    return-wide v0
.end method

.method static synthetic l(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/util/Random;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->q:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic s()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->l:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic t()I
    .locals 2

    .prologue
    .line 63
    sget v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->H:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->H:I

    return v0
.end method

.method private static u()J
    .locals 3

    .prologue
    .line 1308
    const-string v0, "SessionID"

    invoke-static {v0}, Lcom/google/googlenav/common/g;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    .line 1309
    if-eqz v0, :cond_0

    .line 1312
    :try_start_0
    invoke-interface {v0}, Ljava/io/DataInput;->readLong()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1320
    :goto_0
    return-wide v0

    .line 1314
    :catch_0
    move-exception v0

    const-string v0, "FLASH"

    const-string v1, "SessionID corrupt!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1316
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->e()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v0

    const-string v1, "SessionID"

    const/4 v2, 0x0

    .line 1317
    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/common/io/PersistentStore;->a(Ljava/lang/String;[B)Z

    .line 1320
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private v()J
    .locals 4

    .prologue
    .line 1328
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->u()J

    move-result-wide v0

    .line 1329
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1330
    new-instance v2, Lcom/google/googlenav/datarequest/g;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/datarequest/g;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/googlenav/datarequest/e;)V

    invoke-direct {p0, v2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->d(Lcom/google/googlenav/datarequest/d;)V

    .line 1332
    :cond_0
    return-wide v0
.end method

.method private declared-synchronized w()[Lcom/google/googlenav/datarequest/k;
    .locals 2

    .prologue
    .line 1357
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/datarequest/k;

    .line 1358
    iget-object v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->p:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1359
    monitor-exit p0

    return-object v0

    .line 1357
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized x()V
    .locals 2

    .prologue
    .line 1624
    monitor-enter p0

    const-wide/high16 v0, -0x8000000000000000L

    :try_start_0
    iput-wide v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->y:J

    .line 1625
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->w:Z

    .line 1626
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    .line 1627
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->G:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1628
    monitor-exit p0

    return-void

    .line 1624
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private y()Lcom/google/googlenav/g;
    .locals 1

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->C:Lcom/google/googlenav/g;

    if-nez v0, :cond_0

    .line 1975
    new-instance v0, Lcom/google/googlenav/g;

    invoke-direct {v0}, Lcom/google/googlenav/g;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->C:Lcom/google/googlenav/g;

    .line 1977
    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->C:Lcom/google/googlenav/g;

    return-object v0
.end method


# virtual methods
.method protected final a(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1421
    .line 1422
    monitor-enter p0

    .line 1423
    :try_start_0
    iget-boolean v2, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->w:Z

    if-nez v2, :cond_1

    .line 1424
    sget-object v1, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->l:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "In Error Mode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1425
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->w:Z

    .line 1426
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->y:J

    .line 1429
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1431
    iget-object v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->j:Lcom/google/googlenav/common/io/i;

    invoke-interface {v1}, Lcom/google/googlenav/common/io/i;->a()Z

    move-result v1

    .line 1433
    if-eqz v0, :cond_0

    .line 1434
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(IZLjava/lang/String;)V

    .line 1436
    :cond_0
    return-void

    .line 1429
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected final a(IZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 1381
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->w()[Lcom/google/googlenav/datarequest/k;

    move-result-object v1

    .line 1384
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1385
    aget-object v2, v1, v0

    invoke-interface {v2, p1, p2, p3}, Lcom/google/googlenav/datarequest/k;->onNetworkError(IZLjava/lang/String;)V

    .line 1384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1387
    :cond_0
    return-void
.end method

.method public final a(I[BZZ)V
    .locals 6

    .prologue
    .line 1707
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(I[BZZZ)V

    .line 1709
    return-void
.end method

.method public final declared-synchronized a(J)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x7d0

    .line 1263
    monitor-enter p0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1264
    const-wide/16 v0, 0x7d0

    :try_start_0
    iput-wide v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->r:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    :goto_0
    monitor-exit p0

    return-void

    .line 1266
    :cond_0
    :try_start_1
    iput-wide p1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->r:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/googlenav/common/io/b/a;)V
    .locals 1

    .prologue
    .line 1988
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->y()Lcom/google/googlenav/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/g;->a(Lcom/google/googlenav/common/io/b/a;)V

    .line 1989
    return-void
.end method

.method protected final a(Lcom/google/googlenav/datarequest/d;)V
    .locals 3

    .prologue
    .line 1367
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->w()[Lcom/google/googlenav/datarequest/k;

    move-result-object v1

    .line 1371
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1372
    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lcom/google/googlenav/datarequest/k;->onComplete(Lcom/google/googlenav/datarequest/d;)V

    .line 1371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1374
    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Lcom/google/googlenav/datarequest/k;)V
    .locals 1

    .prologue
    .line 1339
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->p:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->p:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    :cond_0
    monitor-exit p0

    return-void

    .line 1339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1832
    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(ILjava/lang/String;)V

    .line 1833
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 1859
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(IZ)V

    .line 1860
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 1962
    const/16 v0, 0x19

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(II)V

    .line 1963
    return-void
.end method

.method protected final b(Lcom/google/googlenav/datarequest/d;)V
    .locals 3

    .prologue
    .line 1394
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->w()[Lcom/google/googlenav/datarequest/k;

    move-result-object v1

    .line 1397
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1398
    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lcom/google/googlenav/datarequest/k;->onPermanentFailure(Lcom/google/googlenav/datarequest/d;)V

    .line 1397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1400
    :cond_0
    return-void
.end method

.method public final declared-synchronized b(Lcom/google/googlenav/datarequest/k;)V
    .locals 1

    .prologue
    .line 1349
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->p:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    monitor-exit p0

    return-void

    .line 1349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 2026
    iput-boolean p1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->g:Z

    .line 2027
    if-eqz p1, :cond_0

    .line 2028
    invoke-virtual {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->o()V

    .line 2032
    :goto_0
    return-void

    .line 2030
    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->p()V

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Lcom/google/googlenav/datarequest/d;)V
    .locals 2

    .prologue
    .line 1447
    invoke-interface {p1}, Lcom/google/googlenav/datarequest/d;->isImmediate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->D:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/googlenav/datarequest/d;->setQueueTime(Ljava/lang/Long;)V

    .line 1451
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->d(Lcom/google/googlenav/datarequest/d;)V

    .line 1452
    return-void
.end method

.method public final declared-synchronized d()Z
    .locals 1

    .prologue
    .line 1272
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->t:I
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

.method public final declared-synchronized e()V
    .locals 1

    .prologue
    .line 1281
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1282
    monitor-exit p0

    return-void

    .line 1281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 1289
    monitor-enter p0

    .line 1290
    :try_start_0
    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->t:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->t:I

    .line 1295
    invoke-virtual {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1296
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1302
    :goto_0
    return-void

    .line 1298
    :cond_0
    monitor-exit p0

    .line 1300
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->e:Lcom/google/googlenav/datarequest/h;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/h;->b(Lcom/google/googlenav/datarequest/h;)V

    .line 1301
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->k:Lcom/google/googlenav/datarequest/c;

    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/c;->a()V

    goto :goto_0

    .line 1298
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()Z
    .locals 1

    .prologue
    .line 1480
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->z:I
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

.method public final declared-synchronized h()Z
    .locals 1

    .prologue
    .line 1506
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->w:Z
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

    .prologue
    .line 1517
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->z:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->j:Lcom/google/googlenav/common/io/i;

    .line 1518
    invoke-interface {v0}, Lcom/google/googlenav/common/io/i;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->z:I
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

    .line 1517
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j()J
    .locals 2

    .prologue
    .line 1528
    iget-wide v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->u:J

    return-wide v0
.end method

.method public final k()J
    .locals 2

    .prologue
    .line 1538
    iget-wide v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->v:J

    return-wide v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 1552
    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->h:I

    return v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 1560
    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->i:I

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 1594
    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->E:I

    return v0
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 1610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s:Z

    .line 1611
    return-void
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 1614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s:Z

    .line 1615
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->e:Lcom/google/googlenav/datarequest/h;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/h;->e(Lcom/google/googlenav/datarequest/h;)V

    .line 1616
    return-void
.end method

.method public final q()J
    .locals 2

    .prologue
    .line 1791
    iget-wide v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->o:J

    return-wide v0
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->f:Lcom/google/googlenav/datarequest/i;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/i;->a(Lcom/google/googlenav/datarequest/i;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
