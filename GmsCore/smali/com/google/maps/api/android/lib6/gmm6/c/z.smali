.class public Lcom/google/maps/api/android/lib6/gmm6/c/z;
.super Lcom/google/maps/api/android/lib6/gmm6/o/ca;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/y;


# static fields
.field private static synthetic J:Z


# instance fields
.field private final A:Lcom/google/maps/api/android/lib6/gmm6/c/x;

.field private B:Lcom/google/android/gms/maps/internal/am;

.field private C:Lcom/google/android/gms/maps/internal/as;

.field private D:Lcom/google/maps/api/android/lib6/gmm6/o/bc;

.field private E:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

.field private F:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

.field private G:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

.field private H:Lcom/google/maps/api/android/lib6/gmm6/o/df;

.field private I:Z

.field private final n:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

.field private final o:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

.field private final p:Lcom/google/maps/api/android/lib6/gmm6/c/c;

.field private final q:Lcom/google/maps/api/android/lib6/gmm6/c/s;

.field private final r:Lcom/google/maps/api/android/lib6/gmm6/o/aq;

.field private final s:Lcom/google/maps/api/android/lib6/c/ef;

.field private final t:Lcom/google/maps/api/android/lib6/gmm6/o/cc;

.field private final u:Lcom/google/maps/api/android/lib6/c/af;

.field private final v:Lcom/google/maps/api/android/lib6/gmm6/c/q;

.field private final w:Lcom/google/maps/api/android/lib6/gmm6/c/ai;

.field private final x:Lcom/google/maps/api/android/lib6/gmm6/c/ag;

.field private final y:Lcom/google/maps/api/android/lib6/gmm6/c/m;

.field private final z:Lcom/google/maps/api/android/lib6/c/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/maps/api/android/lib6/gmm6/c/z;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->J:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/google/maps/api/android/lib6/gmm6/o/ae;Lcom/google/maps/api/android/lib6/gmm6/o/aq;Lcom/google/maps/api/android/lib6/gmm6/c/ai;Lcom/google/maps/api/android/lib6/gmm6/c/m;Lcom/google/maps/api/android/lib6/gmm6/c/ag;Ljava/util/concurrent/ScheduledExecutorService;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/ca;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->n:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->n:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->b()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->n:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-direct {v0, v1, p0}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/ae;Lcom/google/maps/api/android/lib6/c/y;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->o:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->n:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->e:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->e:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->f:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/t;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->e:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/f;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->e:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(Lcom/google/maps/api/android/lib6/gmm6/o/aw;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->m:Z

    if-nez p11, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->j(Z)V

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->r:Lcom/google/maps/api/android/lib6/gmm6/o/aq;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->r:Lcom/google/maps/api/android/lib6/gmm6/o/aq;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/c/ab;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/c/ab;-><init>()V

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->e:Lcom/google/maps/api/android/lib6/gmm6/o/as;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->n:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->r:Lcom/google/maps/api/android/lib6/gmm6/o/aq;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/aq;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/c/s;

    invoke-direct {v0, p0, p8}, Lcom/google/maps/api/android/lib6/gmm6/c/s;-><init>(Lcom/google/maps/api/android/lib6/c/y;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->q:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->o:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    invoke-static {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a(Lcom/google/maps/api/android/lib6/c/y;Lcom/google/maps/api/android/lib6/gmm6/c/ao;)Lcom/google/maps/api/android/lib6/gmm6/c/g;

    move-result-object v1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/c/ac;

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/ac;-><init>(Lcom/google/maps/api/android/lib6/gmm6/c/g;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->u:Lcom/google/maps/api/android/lib6/c/af;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/c/c;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->o:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    invoke-direct {v2, p0, v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/c;-><init>(Lcom/google/maps/api/android/lib6/c/y;Lcom/google/maps/api/android/lib6/gmm6/c/ao;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->p:Lcom/google/maps/api/android/lib6/gmm6/c/c;

    new-instance v2, Lcom/google/maps/api/android/lib6/c/aj;

    invoke-direct {v2, p0}, Lcom/google/maps/api/android/lib6/c/aj;-><init>(Lcom/google/maps/api/android/lib6/c/y;)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->z:Lcom/google/maps/api/android/lib6/c/aj;

    invoke-static {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/q;->a(Lcom/google/maps/api/android/lib6/c/y;Landroid/os/Handler;)Lcom/google/maps/api/android/lib6/gmm6/c/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->v:Lcom/google/maps/api/android/lib6/gmm6/c/q;

    iput-object p6, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->y:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    iput-object p5, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->w:Lcom/google/maps/api/android/lib6/gmm6/c/ai;

    invoke-static {p10}, Lcom/google/c/a/db;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->w:Lcom/google/maps/api/android/lib6/gmm6/c/ai;

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/c/ai;->b(Lcom/google/maps/api/android/lib6/gmm6/l/av;Landroid/content/res/Resources;)Lcom/google/maps/api/android/lib6/gmm6/o/x;

    move-result-object v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(Lcom/google/maps/api/android/lib6/gmm6/o/x;)V

    :cond_0
    iput-object p7, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->x:Lcom/google/maps/api/android/lib6/gmm6/c/ag;

    instance-of v0, p0, Landroid/view/SurfaceView;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/c/aa;->a(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/c/x;

    invoke-direct {v3, p9, p0, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/c/x;-><init>(Landroid/view/View;Lcom/google/maps/api/android/lib6/c/y;ZLjava/util/concurrent/Executor;)V

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->A:Lcom/google/maps/api/android/lib6/gmm6/c/x;

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bf;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bf;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/bc;

    invoke-direct {v2, p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bc;-><init>(Landroid/content/res/Resources;Lcom/google/maps/api/android/lib6/gmm6/o/bf;)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->D:Lcom/google/maps/api/android/lib6/gmm6/o/bc;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->D:Lcom/google/maps/api/android/lib6/gmm6/o/bc;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->c()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/c/ad;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/c/ad;-><init>(Lcom/google/maps/api/android/lib6/gmm6/c/z;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->t:Lcom/google/maps/api/android/lib6/gmm6/o/cc;

    new-instance v0, Lcom/google/maps/api/android/lib6/c/ef;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/c/ae;

    invoke-direct {v2, p0}, Lcom/google/maps/api/android/lib6/gmm6/c/ae;-><init>(Lcom/google/maps/api/android/lib6/gmm6/c/z;)V

    invoke-direct {v0, v2}, Lcom/google/maps/api/android/lib6/c/ef;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->s:Lcom/google/maps/api/android/lib6/c/ef;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->w:Lcom/google/maps/api/android/lib6/gmm6/c/ai;

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/l/av;->o:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/c/ai;->b(Lcom/google/maps/api/android/lib6/gmm6/l/av;Landroid/content/res/Resources;)Lcom/google/maps/api/android/lib6/gmm6/o/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->a(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->a()Lcom/google/maps/api/android/lib6/gmm6/f;

    invoke-static {p2}, Lcom/google/maps/api/android/lib6/gmm6/f;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/c;->u:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    :goto_2
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(Lcom/google/maps/api/android/lib6/gmm6/o/e/c;)V

    iget-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/c/g;->b:Lcom/google/maps/api/android/lib6/gmm6/o/br;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->a(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->q:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->d()Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->a(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/c;->t:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    goto :goto_2
.end method

.method private K()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->B:Lcom/google/android/gms/maps/internal/am;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->C:Lcom/google/android/gms/maps/internal/as;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->b:Lcom/google/maps/api/android/lib6/gmm6/o/cc;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->t:Lcom/google/maps/api/android/lib6/gmm6/o/cc;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->b:Lcom/google/maps/api/android/lib6/gmm6/o/cc;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/c/z;)Lcom/google/android/gms/maps/internal/as;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->C:Lcom/google/android/gms/maps/internal/as;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Lcom/google/maps/api/android/lib6/c/dm;Ljava/util/concurrent/ScheduledExecutorService;Landroid/view/View;Lcom/google/maps/api/android/lib6/c/bu;Ljava/lang/String;Z)Lcom/google/maps/api/android/lib6/c/y;
    .locals 13

    invoke-static {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/c/i;->a(Landroid/content/Context;Lcom/google/maps/api/android/lib6/c/dm;)V

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/c/dm;->a()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v1

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-direct {v4, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;-><init>(Landroid/content/res/Resources;)V

    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/o/aq;

    invoke-direct {v5, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/aq;-><init>(Lcom/google/maps/api/android/lib6/b/o;)V

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a()Lcom/google/maps/api/android/lib6/gmm6/j/q;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-static {v3, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->a(Lcom/google/maps/api/android/lib6/gmm6/j/q;Landroid/os/Handler;Lcom/google/maps/api/android/lib6/c/bu;)Lcom/google/maps/api/android/lib6/gmm6/c/m;

    move-result-object v7

    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/c/aa;

    move-object/from16 v0, p6

    invoke-direct {v6, v0, v7}, Lcom/google/maps/api/android/lib6/gmm6/c/aa;-><init>(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/c/m;)V

    invoke-static/range {p6 .. p6}, Lcom/google/c/a/db;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/l/av;->j:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-static {v2, p0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ad;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;Landroid/content/Context;Landroid/content/res/Resources;Lcom/google/maps/api/android/lib6/b/h;)Lcom/google/maps/api/android/lib6/gmm6/m/y;

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/l/av;->m:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-static {v2, p0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ad;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;Landroid/content/Context;Landroid/content/res/Resources;Lcom/google/maps/api/android/lib6/b/h;)Lcom/google/maps/api/android/lib6/gmm6/m/y;

    :cond_0
    new-instance v8, Lcom/google/maps/api/android/lib6/gmm6/c/ag;

    invoke-direct {v8}, Lcom/google/maps/api/android/lib6/gmm6/c/ag;-><init>()V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/c/z;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-direct/range {v1 .. v12}, Lcom/google/maps/api/android/lib6/gmm6/c/z;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/google/maps/api/android/lib6/gmm6/o/ae;Lcom/google/maps/api/android/lib6/gmm6/o/aq;Lcom/google/maps/api/android/lib6/gmm6/c/ai;Lcom/google/maps/api/android/lib6/gmm6/c/m;Lcom/google/maps/api/android/lib6/gmm6/c/ag;Ljava/util/concurrent/ScheduledExecutorService;Landroid/view/View;Ljava/lang/String;Z)V

    return-object v1
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/o/x;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/google/c/a/db;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/cg;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cg;-><init>()V

    iput-object p1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/cg;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cg;->a()Lcom/google/maps/api/android/lib6/gmm6/l/cf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ak;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/gmm6/c/z;)Lcom/google/android/gms/maps/internal/am;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->B:Lcom/google/android/gms/maps/internal/am;

    return-object v0
.end method

.method static synthetic c(Lcom/google/maps/api/android/lib6/gmm6/c/z;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->a(ZZ)V

    return-void
.end method


# virtual methods
.method public final synthetic a(IIII)Lcom/google/maps/api/android/lib6/c/as;
    .locals 6

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/c/w;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->A()Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/c/w;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;IIII)V

    return-object v0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->x:Lcom/google/maps/api/android/lib6/gmm6/c/ag;

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/y;->a()Lcom/google/g/a/d/g;

    move-result-object v0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/a;->a()V

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/e;->a:Lcom/google/maps/api/android/lib6/gmm6/e;

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/a;->a(Lcom/google/maps/api/android/lib6/gmm6/e;Lcom/google/g/a/d/g;)V

    invoke-super {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->a()V

    return-void
.end method

.method public final a(I)V
    .locals 4

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    :goto_0
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->G:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->G:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {p0, v3}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->b(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->G:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->w:Lcom/google/maps/api/android/lib6/gmm6/c/ai;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/c/ai;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;Landroid/content/res/Resources;)Lcom/google/maps/api/android/lib6/gmm6/o/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->G:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->G:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->a(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->b(Lcom/google/maps/api/android/lib6/gmm6/o/bh;)V

    return-void

    :pswitch_1
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->e:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    move-object v1, v2

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->d:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->e:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->d:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    goto :goto_0

    :pswitch_4
    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->e:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->d:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/maps/internal/am;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->B:Lcom/google/android/gms/maps/internal/am;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->K()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/internal/as;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->C:Lcom/google/android/gms/maps/internal/as;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->K()V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/c/ap;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->c:Lcom/google/maps/api/android/lib6/gmm6/o/cb;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/c/af;

    invoke-direct {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/c/af;-><init>(Lcom/google/maps/api/android/lib6/gmm6/c/ap;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->c:Lcom/google/maps/api/android/lib6/gmm6/o/cb;

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->E:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->w:Lcom/google/maps/api/android/lib6/gmm6/c/ai;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/ai;->a(Landroid/content/res/Resources;)Lcom/google/maps/api/android/lib6/gmm6/o/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->E:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->E:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->a(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->J:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->E:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eq p1, v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->E:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->E:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->b(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->E:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->x:Lcom/google/maps/api/android/lib6/gmm6/c/ag;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/a;->b()V

    invoke-super {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->b()V

    return-void
.end method

.method public final b(Z)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->y:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->p()Z

    move-result v0

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->y:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->w:Lcom/google/maps/api/android/lib6/gmm6/c/ai;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/c/ai;->a(Landroid/content/Context;Landroid/content/res/Resources;)Lcom/google/maps/api/android/lib6/gmm6/o/df;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->H:Lcom/google/maps/api/android/lib6/gmm6/o/df;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->H:Lcom/google/maps/api/android/lib6/gmm6/o/df;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->a(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->r:Lcom/google/maps/api/android/lib6/gmm6/o/aq;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/c/ah;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->y:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/c/ah;-><init>(Lcom/google/maps/api/android/lib6/gmm6/c/m;B)V

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->d:Lcom/google/maps/api/android/lib6/gmm6/o/ar;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->p()Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->r:Lcom/google/maps/api/android/lib6/gmm6/o/aq;

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->d:Lcom/google/maps/api/android/lib6/gmm6/o/ar;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->H:Lcom/google/maps/api/android/lib6/gmm6/o/df;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->b(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->H:Lcom/google/maps/api/android/lib6/gmm6/o/df;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/df;->m()V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->H:Lcom/google/maps/api/android/lib6/gmm6/o/df;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->y:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->b()V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->b(Z)Z

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->j(Z)V

    invoke-super {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->c()V

    return-void
.end method

.method public final c(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->F:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->w:Lcom/google/maps/api/android/lib6/gmm6/c/ai;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->h()Lcom/google/maps/api/android/lib6/gmm6/o/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/c/ai;->a(Lcom/google/maps/api/android/lib6/gmm6/o/x;Landroid/content/res/Resources;)Lcom/google/maps/api/android/lib6/gmm6/o/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->F:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->F:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->a(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->J:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->F:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eq p1, v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->F:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->F:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->b(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->F:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    return-void
.end method

.method public canScrollHorizontally(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->d:Lcom/google/maps/api/android/lib6/gmm6/o/am;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/am;->a()Z

    move-result v0

    return v0
.end method

.method public canScrollVertically(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->d:Lcom/google/maps/api/android/lib6/gmm6/o/am;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/am;->a()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->v:Lcom/google/maps/api/android/lib6/gmm6/c/q;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/q;->a()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->s:Lcom/google/maps/api/android/lib6/c/ef;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ef;->a()V

    return-void
.end method

.method public final d(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->I:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->I:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->D:Lcom/google/maps/api/android/lib6/gmm6/o/bc;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->a(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->D:Lcom/google/maps/api/android/lib6/gmm6/o/bc;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->b(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    goto :goto_0
.end method

.method public final e()Lcom/google/maps/api/android/lib6/gmm6/o/bo;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->f()Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    move-result-object v0

    return-object v0
.end method

.method public final f()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final g()Lcom/google/maps/api/android/lib6/c/cw;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->p:Lcom/google/maps/api/android/lib6/gmm6/c/c;

    return-object v0
.end method

.method public final h()Lcom/google/maps/api/android/lib6/c/af;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->u:Lcom/google/maps/api/android/lib6/c/af;

    return-object v0
.end method

.method public final i()Lcom/google/maps/api/android/lib6/c/am;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->q:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    return-object v0
.end method

.method public final j()Lcom/google/maps/api/android/lib6/c/aj;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->z:Lcom/google/maps/api/android/lib6/c/aj;

    return-object v0
.end method

.method public final k()Lcom/google/maps/api/android/lib6/c/el;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->y:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    return-object v0
.end method

.method public final l()Lcom/google/maps/api/android/lib6/c/ba;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->A:Lcom/google/maps/api/android/lib6/gmm6/c/x;

    return-object v0
.end method

.method public final m()Lcom/google/maps/api/android/lib6/c/x;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->v:Lcom/google/maps/api/android/lib6/gmm6/c/q;

    return-object v0
.end method

.method public final n()Lcom/google/maps/api/android/lib6/c/dl;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->D:Lcom/google/maps/api/android/lib6/gmm6/o/bc;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->E:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->onSizeChanged(IIII)V

    return-void
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->y:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->y:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->F:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->I:Z

    return v0
.end method

.method public setPadding(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ca;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(II)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/z;->D:Lcom/google/maps/api/android/lib6/gmm6/o/bc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->a(III)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/z;->d()V

    return-void
.end method
