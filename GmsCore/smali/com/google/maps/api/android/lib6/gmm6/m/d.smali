.class public abstract Lcom/google/maps/api/android/lib6/gmm6/m/d;
.super Lcom/google/maps/api/android/lib6/gmm6/n/b;

# interfaces
.implements Lcom/google/maps/api/android/lib6/b/p;
.implements Lcom/google/maps/api/android/lib6/gmm6/m/t;
.implements Lcom/google/maps/api/android/lib6/gmm6/m/y;


# instance fields
.field protected a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

.field protected b:Lcom/google/g/a/d;

.field protected final c:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field private volatile e:Lcom/google/maps/api/android/lib6/gmm6/m/i;

.field private final f:Ljava/util/concurrent/locks/ReentrantLock;

.field private final g:Lcom/google/maps/api/android/lib6/b/o;

.field private h:Landroid/os/Handler;

.field private i:Z

.field private j:Lcom/google/maps/api/android/lib6/gmm6/m/h;

.field private final k:Ljava/util/List;

.field private final l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

.field private final m:Ljava/util/Map;

.field private final n:I

.field private volatile o:I

.field private volatile p:I

.field private volatile q:I

.field private r:Z

.field private s:Lcom/google/maps/api/android/lib6/gmm6/g;

.field private final t:Ljava/util/ArrayList;

.field private volatile u:Z

.field private final v:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;


# direct methods
.method protected constructor <init>(Lcom/google/maps/api/android/lib6/b/o;Lcom/google/maps/api/android/lib6/gmm6/l/av;Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;Lcom/google/maps/api/android/lib6/gmm6/m/b/f;IZILjava/util/Locale;Ljava/io/File;)V
    .locals 7

    invoke-direct {p0, p3}, Lcom/google/maps/api/android/lib6/gmm6/n/b;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->f:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->k:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->m:Ljava/util/Map;

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->b()Lcom/google/g/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->b:Lcom/google/g/a/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->r:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->t:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->u:Z

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/e;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/m/e;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/d;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->v:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->c:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p4

    move-object v3, p5

    move v4, p7

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/m/aa;-><init>(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;Lcom/google/maps/api/android/lib6/gmm6/m/b/f;ZLjava/util/Locale;Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    iput p6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->n:I

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->g:Lcom/google/maps/api/android/lib6/b/o;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->h()Lcom/google/maps/api/android/lib6/gmm6/m/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->j:Lcom/google/maps/api/android/lib6/gmm6/m/h;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->j:Lcom/google/maps/api/android/lib6/gmm6/m/h;

    invoke-static {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/m/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/h;Lcom/google/maps/api/android/lib6/gmm6/m/d;)Lcom/google/maps/api/android/lib6/gmm6/m/d;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/f;

    invoke-direct {v0, p0, p8}, Lcom/google/maps/api/android/lib6/gmm6/m/f;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/d;I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    return-void
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/m/k;ZZ)Landroid/util/Pair;
    .locals 7

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->i()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    invoke-interface {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;->c(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->b:Lcom/google/g/a/d;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->d()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    invoke-interface {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ae;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    move v1, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-boolean v2, p1, Lcom/google/maps/api/android/lib6/gmm6/m/k;->c:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->s:Lcom/google/maps/api/android/lib6/gmm6/g;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->s:Lcom/google/maps/api/android/lib6/gmm6/g;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/g;->b()V

    :cond_1
    invoke-direct {p0, v1, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ae;Lcom/google/maps/api/android/lib6/gmm6/m/k;Z)Lcom/google/maps/api/android/lib6/gmm6/m/k;

    move-result-object v2

    if-nez p3, :cond_3

    iget-boolean v5, p1, Lcom/google/maps/api/android/lib6/gmm6/m/k;->c:Z

    if-eqz v5, :cond_2

    :goto_2
    invoke-virtual {p0, p1, v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    move-object v0, v2

    move v1, v3

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    move v1, v4

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_b

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a()Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-boolean v5, p1, Lcom/google/maps/api/android/lib6/gmm6/m/k;->c:Z

    if-eqz v5, :cond_5

    invoke-interface {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/f;->b(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0, p1, v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-interface {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/f;->c(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->b:Lcom/google/g/a/d;

    invoke-interface {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->d()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-interface {v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/f;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ae;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p1, Lcom/google/maps/api/android/lib6/gmm6/m/k;->c:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->s:Lcom/google/maps/api/android/lib6/gmm6/g;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->s:Lcom/google/maps/api/android/lib6/gmm6/g;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/g;->d()V

    :cond_6
    invoke-direct {p0, p1, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)V

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    :cond_7
    iget-boolean v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/k;->c:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->s:Lcom/google/maps/api/android/lib6/gmm6/g;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->s:Lcom/google/maps/api/android/lib6/gmm6/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/g;->c()V

    :cond_8
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    invoke-interface {v0, v2, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    :cond_9
    invoke-direct {p0, v5, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ae;Lcom/google/maps/api/android/lib6/gmm6/m/k;Z)Lcom/google/maps/api/android/lib6/gmm6/m/k;

    move-result-object v0

    if-nez p3, :cond_a

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    goto :goto_3

    :cond_a
    move v3, v4

    goto :goto_3

    :cond_b
    iget-boolean v1, p1, Lcom/google/maps/api/android/lib6/gmm6/m/k;->c:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->s:Lcom/google/maps/api/android/lib6/gmm6/g;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->s:Lcom/google/maps/api/android/lib6/gmm6/g;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/g;->d()V

    :cond_c
    const/4 v1, -0x1

    iput v1, p1, Lcom/google/maps/api/android/lib6/gmm6/m/k;->i:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/l/ae;Lcom/google/maps/api/android/lib6/gmm6/m/k;Z)Lcom/google/maps/api/android/lib6/gmm6/m/k;
    .locals 10

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->b()I

    move-result v2

    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->c()I

    move-result v3

    if-eq v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/k;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->c:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    iget-object v2, p2, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->c:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->v:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/m/c;->b:Lcom/google/maps/api/android/lib6/gmm6/m/c;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/m/k;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;Lcom/google/maps/api/android/lib6/gmm6/m/c;ZZIZ)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->a()Lcom/google/maps/api/android/lib6/gmm6/f;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->a()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->g:Lcom/google/maps/api/android/lib6/b/o;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/b/o;->l()J

    move-result-wide v4

    const-wide/16 v8, 0x64

    rem-long/2addr v4, v8

    const-wide/16 v8, 0x8

    cmp-long v1, v4, v8

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-eq v7, v1, :cond_4

    const/4 v1, 0x1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "v="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "d="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->p()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "z="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x6d

    const-string v5, "u"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v3, v6, v1

    const/4 v1, 0x2

    aput-object v2, v6, v1

    invoke-static {v6}, Lcom/google/maps/api/android/lib6/b/z;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/google/maps/api/android/lib6/b/z;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->a()Lcom/google/maps/api/android/lib6/gmm6/f;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p2, Lcom/google/maps/api/android/lib6/gmm6/m/k;->c:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->b:Lcom/google/g/a/d;

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->f()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p3, :cond_0

    :cond_3
    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->e()I

    move-result v7

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/m/d;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->i:Z

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->j()V

    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/m/d;Lcom/google/maps/api/android/lib6/gmm6/l/ae;)V
    .locals 4

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->t:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/z;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/z;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    move v0, v1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->t:Ljava/util/ArrayList;

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/m/d;Lcom/google/maps/api/android/lib6/gmm6/l/ai;Lcom/google/maps/api/android/lib6/gmm6/m/c;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/u;->a(Lcom/google/maps/api/android/lib6/gmm6/m/c;Z)I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a()Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    move-result-object v1

    :goto_0
    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ai;->a()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    invoke-interface {v1, v2, p3, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/f;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-interface {p3, v2, v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->u:Z

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->k()V

    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/m/d;Lcom/google/maps/api/android/lib6/gmm6/m/h;)V
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->r:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->r:Z

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :goto_1
    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/m/k;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->b(Lcom/google/maps/api/android/lib6/gmm6/m/k;)V

    goto :goto_0

    :cond_0
    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/n/i;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/m/h;->i()I

    move-result v3

    const/4 v2, -0x1

    if-eq v3, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->b()I

    move-result v2

    if-eq v3, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a()Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/f;->a(I)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v2, 0x0

    :cond_2
    iput v3, v4, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->d:I

    iget-boolean v3, v4, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->e:Z

    if-eqz v3, :cond_c

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/f;->a()Z

    :cond_3
    iget-object v2, v4, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    if-eqz v2, :cond_4

    iget-object v2, v4, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;->a()Z

    :cond_4
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->c()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->k:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a()Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/m/h;->j()I

    move-result v14

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v8, v5

    move v9, v6

    move v10, v7

    move v5, v2

    move v6, v3

    move v2, v4

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/m/h;->j()I

    move-result v3

    if-ge v5, v3, :cond_1d

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/h;->a(I)Lcom/google/maps/api/android/lib6/gmm6/m/k;

    move-result-object v15

    iget-object v3, v15, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget-object v4, v15, Lcom/google/maps/api/android/lib6/gmm6/m/k;->h:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v16

    iget v3, v15, Lcom/google/maps/api/android/lib6/gmm6/m/k;->i:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_22

    add-int/lit8 v7, v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->m:Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->o:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->o:I

    :try_start_0
    iget-boolean v2, v15, Lcom/google/maps/api/android/lib6/gmm6/m/k;->c:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->q:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->q:I

    :goto_5
    const/4 v2, 0x0

    if-eqz v13, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/h;->c(I)[B

    move-result-object v3

    if-eqz v3, :cond_6

    array-length v2, v3

    new-array v2, v2, [B

    const/4 v4, 0x0

    const/4 v11, 0x0

    array-length v12, v3

    invoke-static {v3, v4, v2, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    invoke-static {v15}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->c(Lcom/google/maps/api/android/lib6/gmm6/m/k;)Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/h;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    move-result-object v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    if-eqz v3, :cond_8

    iget-boolean v3, v15, Lcom/google/maps/api/android/lib6/gmm6/m/k;->c:Z

    if-nez v3, :cond_8

    invoke-interface {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->b()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->b()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v3

    move-object/from16 v0, v17

    if-eq v3, v0, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    move-object/from16 v0, v16

    invoke-interface {v3, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    :cond_8
    if-eqz v13, :cond_a

    invoke-interface {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->b()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-interface {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->b()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v3

    move-object/from16 v0, v17

    if-eq v3, v0, :cond_a

    :cond_9
    move-object/from16 v0, v16

    invoke-interface {v13, v0, v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/f;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/ae;[B)V

    :cond_a
    invoke-interface {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->b()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-interface {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->b()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v2

    move-object/from16 v0, v17

    if-ne v2, v0, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->c:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    invoke-interface {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;->c(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    move-result-object v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    invoke-interface {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ae;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_b
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    move v3, v6

    move v4, v8

    move v6, v9

    move v8, v10

    :goto_6
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v9, v6

    move v10, v8

    move v8, v4

    move v6, v3

    move v2, v7

    goto/16 :goto_3

    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->p:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->p:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Could not parse tile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    move v3, v6

    move v4, v8

    move v6, v9

    move v8, v10

    goto :goto_6

    :cond_e
    :try_start_1
    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/l/by;

    move-object v0, v4

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/by;

    move-object v3, v0

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/by;)Lcom/google/maps/api/android/lib6/gmm6/l/e;

    move-result-object v18

    iget-object v0, v3, Lcom/google/maps/api/android/lib6/gmm6/l/by;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/4 v2, 0x0

    move v12, v2

    :goto_7
    move/from16 v0, v20

    if-ge v12, v0, :cond_12

    aget-object v21, v19, v12

    invoke-interface/range {v21 .. v21}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->a()I

    move-result v2

    const/4 v11, 0x6

    if-ne v2, v11, :cond_11

    const/4 v2, 0x0

    move v11, v2

    :goto_8
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_10

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->a()I

    move-result v2

    const/16 v22, 0x6

    move/from16 v0, v22

    if-ne v2, v0, :cond_f

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v2, v11, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_9
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_7

    :cond_f
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_8

    :cond_10
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_12
    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/by;Lcom/google/maps/api/android/lib6/gmm6/l/by;)Lcom/google/maps/api/android/lib6/gmm6/l/by;

    move-result-object v2

    :goto_a
    iget-boolean v3, v15, Lcom/google/maps/api/android/lib6/gmm6/m/k;->c:Z

    if-eqz v3, :cond_13

    add-int/lit8 v9, v9, 0x1

    :goto_b
    if-eqz v17, :cond_14

    invoke-interface {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->b()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->c:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-ne v3, v4, :cond_14

    move v3, v6

    move v4, v8

    move v6, v9

    move v8, v10

    goto/16 :goto_6

    :cond_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_14
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    move v3, v6

    move v4, v8

    move v6, v9

    move v8, v10

    goto/16 :goto_6

    :cond_15
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->a()Lcom/google/maps/api/android/lib6/gmm6/f;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->f()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;->b(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;->c(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    move-result-object v2

    :cond_16
    :goto_c
    if-eqz v2, :cond_1a

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->e()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->b:Lcom/google/g/a/d;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->g()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    if-eqz v3, :cond_17

    iget-boolean v3, v15, Lcom/google/maps/api/android/lib6/gmm6/m/k;->c:Z

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    move-object/from16 v0, v16

    invoke-interface {v3, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a()Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    move-result-object v3

    if-eqz v3, :cond_18

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/f;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)[B

    move-result-object v4

    if-eqz v4, :cond_18

    move-object/from16 v0, v16

    invoke-interface {v3, v0, v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/f;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/ae;[B)V

    :cond_18
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    const/4 v2, 0x1

    :goto_d
    if-eqz v2, :cond_1b

    add-int/lit8 v8, v8, 0x1

    move v3, v6

    move v4, v8

    move v6, v9

    move v8, v10

    goto/16 :goto_6

    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a()Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    move-result-object v3

    if-eqz v3, :cond_16

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/f;->b(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/f;->c(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    move-result-object v2

    goto :goto_c

    :cond_1a
    const/4 v2, 0x0

    goto :goto_d

    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)V

    add-int/lit8 v6, v6, 0x1

    move v3, v6

    move v4, v8

    move v6, v9

    move v8, v10

    goto/16 :goto_6

    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v6, v6, 0x1

    move v3, v6

    move v4, v8

    move v6, v9

    move v8, v10

    goto/16 :goto_6

    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->k()V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->a()Lcom/google/maps/api/android/lib6/gmm6/f;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->f()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->i()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v3

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->i()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v3

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/l/av;->b:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->i()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v3

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/l/av;->o:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_1e
    const/4 v3, 0x1

    :goto_e
    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->g:Lcom/google/maps/api/android/lib6/b/o;

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/b/o;->l()J

    move-result-wide v4

    const-wide/16 v12, 0x64

    rem-long/2addr v4, v12

    const-wide/16 v12, 0x8

    cmp-long v3, v4, v12

    if-nez v3, :cond_1f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "t="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "f="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "p="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "r="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "n="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "v="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "d="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->p()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x6d

    const-string v10, "b"

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    const/4 v3, 0x1

    aput-object v4, v11, v3

    const/4 v3, 0x2

    aput-object v5, v11, v3

    const/4 v3, 0x3

    aput-object v7, v11, v3

    const/4 v3, 0x4

    aput-object v6, v11, v3

    const/4 v3, 0x5

    aput-object v2, v11, v3

    const/4 v2, 0x6

    aput-object v8, v11, v2

    invoke-static {v11}, Lcom/google/maps/api/android/lib6/b/z;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v10, v2}, Lcom/google/maps/api/android/lib6/b/z;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return-void

    :cond_20
    const/4 v3, 0x0

    goto/16 :goto_e

    :cond_21
    move-object v2, v4

    goto/16 :goto_a

    :cond_22
    move v7, v2

    goto/16 :goto_4
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/m/d;Lcom/google/maps/api/android/lib6/gmm6/m/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->b(Lcom/google/maps/api/android/lib6/gmm6/m/k;)V

    return-void
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/m/k;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->e:Lcom/google/maps/api/android/lib6/gmm6/m/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->e:Lcom/google/maps/api/android/lib6/gmm6/m/i;

    iput-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/i;->a:Z

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/m/k;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    invoke-interface {v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;->a_(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)V

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    return-void
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/gmm6/m/d;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->r:Z

    return-void
.end method

.method private b(Lcom/google/maps/api/android/lib6/gmm6/m/k;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->c:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v5

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/y;->d:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v7, v8}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->m:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/k;

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->c(Lcom/google/maps/api/android/lib6/gmm6/m/k;)Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v1

    if-eqz v1, :cond_3

    move v3, v9

    :goto_1
    iget-boolean v4, p1, Lcom/google/maps/api/android/lib6/gmm6/m/k;->f:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p1, Lcom/google/maps/api/android/lib6/gmm6/m/k;->e:Z

    invoke-direct {p0, p1, v9, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;ZZ)Landroid/util/Pair;

    move-result-object v6

    iget-object v2, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v2, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/m/k;

    move-object v10, v2

    :goto_2
    if-nez v4, :cond_2

    invoke-virtual {p0, p1, v7, v8}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    :cond_2
    if-eqz v10, :cond_0

    if-eqz v0, :cond_9

    iget-boolean v1, v10, Lcom/google/maps/api/android/lib6/gmm6/m/k;->g:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, v10}, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;)V

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    iget-boolean v4, p1, Lcom/google/maps/api/android/lib6/gmm6/m/k;->e:Z

    if-eqz v4, :cond_6

    :cond_5
    :goto_3
    move v4, v2

    move-object v10, p1

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->j:Lcom/google/maps/api/android/lib6/gmm6/m/k;

    if-eqz v4, :cond_8

    move v4, v9

    :goto_4
    if-nez v4, :cond_5

    iget-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->g:Z

    if-eqz v4, :cond_5

    :cond_7
    invoke-direct {p0, p1, v9, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;ZZ)Landroid/util/Pair;

    move-result-object v6

    iget-object v2, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v2, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/m/k;

    move-object v10, v2

    goto :goto_2

    :cond_8
    move v4, v2

    goto :goto_4

    :cond_9
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->r:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, v10, Lcom/google/maps/api/android/lib6/gmm6/m/k;->c:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/k;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v10}, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0, v5, v10}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->m:Ljava/util/Map;

    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->j:Lcom/google/maps/api/android/lib6/gmm6/m/h;

    invoke-virtual {v0, v10}, Lcom/google/maps/api/android/lib6/gmm6/m/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v3, :cond_d

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->j:Lcom/google/maps/api/android/lib6/gmm6/m/h;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/h;->b(Lcom/google/maps/api/android/lib6/gmm6/m/h;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->j()V

    :cond_d
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->j:Lcom/google/maps/api/android/lib6/gmm6/m/h;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->i()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v2, v10}, Lcom/google/maps/api/android/lib6/gmm6/m/h;->a(Landroid/util/Pair;Lcom/google/maps/api/android/lib6/gmm6/m/k;)V

    if-eqz v3, :cond_e

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/k;

    iget-object v3, v10, Lcom/google/maps/api/android/lib6/gmm6/m/k;->b:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    iget-object v4, v10, Lcom/google/maps/api/android/lib6/gmm6/m/k;->d:Lcom/google/maps/api/android/lib6/gmm6/m/c;

    iget-boolean v5, v10, Lcom/google/maps/api/android/lib6/gmm6/m/k;->e:Z

    iget-boolean v6, v10, Lcom/google/maps/api/android/lib6/gmm6/m/k;->f:Z

    iget v7, v10, Lcom/google/maps/api/android/lib6/gmm6/m/k;->i:I

    iget-boolean v8, v10, Lcom/google/maps/api/android/lib6/gmm6/m/k;->g:Z

    invoke-direct/range {v0 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/m/k;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;Lcom/google/maps/api/android/lib6/gmm6/m/c;ZZIZ)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->j:Lcom/google/maps/api/android/lib6/gmm6/m/h;

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->h:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-static {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/h;->a(Landroid/util/Pair;Lcom/google/maps/api/android/lib6/gmm6/m/k;)V

    :cond_e
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->o:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->j:Lcom/google/maps/api/android/lib6/gmm6/m/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/h;->k()Z

    move-result v0

    if-nez v0, :cond_f

    iget-boolean v0, v10, Lcom/google/maps/api/android/lib6/gmm6/m/k;->e:Z

    if-eqz v0, :cond_10

    :cond_f
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->j()V

    goto/16 :goto_0

    :cond_10
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->h:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v9, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->i:Z

    goto/16 :goto_0

    :cond_11
    move v2, v4

    goto/16 :goto_3
.end method

.method private static c(Lcom/google/maps/api/android/lib6/gmm6/m/k;)Lcom/google/maps/api/android/lib6/gmm6/l/av;
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->j()Lcom/google/maps/api/android/lib6/gmm6/l/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/al;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/al;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/al;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 4

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->t:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/z;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/z;->a()V

    move v0, v1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->t:Ljava/util/ArrayList;

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic c(Lcom/google/maps/api/android/lib6/gmm6/m/d;)V
    .locals 5

    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/h;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/h;->j()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/h;->a(I)Lcom/google/maps/api/android/lib6/gmm6/m/k;

    move-result-object v3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->m:Ljava/util/Map;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->o:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->o:I

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/h;->a(I)Lcom/google/maps/api/android/lib6/gmm6/m/k;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->b(Lcom/google/maps/api/android/lib6/gmm6/m/k;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/google/maps/api/android/lib6/gmm6/m/d;)I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->n:I

    return v0
.end method

.method static synthetic e(Lcom/google/maps/api/android/lib6/gmm6/m/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->u:Z

    return v0
.end method

.method static synthetic f(Lcom/google/maps/api/android/lib6/gmm6/m/d;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->u:Z

    return v0
.end method

.method static synthetic g(Lcom/google/maps/api/android/lib6/gmm6/m/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->k()V

    return-void
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->j:Lcom/google/maps/api/android/lib6/gmm6/m/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/h;->j()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/g/b;

    const-string v1, "addRequest"

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->j:Lcom/google/maps/api/android/lib6/gmm6/m/h;

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/g/b;-><init>(Ljava/lang/String;Lcom/google/maps/api/android/lib6/b/g;)V

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/g/a;->a:Lcom/google/maps/api/android/lib6/gmm6/g/a;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->g:Lcom/google/maps/api/android/lib6/b/o;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->j:Lcom/google/maps/api/android/lib6/gmm6/m/h;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/b/o;->c(Lcom/google/maps/api/android/lib6/b/g;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->j:Lcom/google/maps/api/android/lib6/gmm6/m/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->h()Lcom/google/maps/api/android/lib6/gmm6/m/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->j:Lcom/google/maps/api/android/lib6/gmm6/m/h;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->j:Lcom/google/maps/api/android/lib6/gmm6/m/h;

    invoke-static {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/m/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/h;Lcom/google/maps/api/android/lib6/gmm6/m/d;)Lcom/google/maps/api/android/lib6/gmm6/m/d;

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->e:Lcom/google/maps/api/android/lib6/gmm6/m/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->e:Lcom/google/maps/api/android/lib6/gmm6/m/i;

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/i;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/i;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/m/i;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/d;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->e:Lcom/google/maps/api/android/lib6/gmm6/m/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Z)Lcom/google/maps/api/android/lib6/gmm6/l/ae;
    .locals 5

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/m/j;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/m/j;-><init>()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/k;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->c:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-direct {v0, v2, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/k;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, p2, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;ZZ)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/k;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->h:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->h:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/m/j;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    return-object v0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(IZLjava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Network Error! "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->h:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/b/g;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->s:Lcom/google/maps/api/android/lib6/gmm6/g;

    return-void
.end method

.method public a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/k;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->c:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/k;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;)V

    return-void
.end method

.method final a(Lcom/google/maps/api/android/lib6/gmm6/m/k;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    move-object v2, p1

    :goto_0
    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/m/k;->d:Lcom/google/maps/api/android/lib6/gmm6/m/c;

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/m/u;->a(Lcom/google/maps/api/android/lib6/gmm6/m/c;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p3}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a()Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    move-result-object v0

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget-object v4, v2, Lcom/google/maps/api/android/lib6/gmm6/m/k;->b:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    iget-object v5, v2, Lcom/google/maps/api/android/lib6/gmm6/m/k;->d:Lcom/google/maps/api/android/lib6/gmm6/m/c;

    invoke-static {v5, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/u;->a(Lcom/google/maps/api/android/lib6/gmm6/m/c;Z)I

    move-result v5

    invoke-interface {v0, v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/f;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;I)V

    move v0, v1

    :goto_1
    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/m/k;->j:Lcom/google/maps/api/android/lib6/gmm6/m/k;

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    invoke-static {v2, v3, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    goto :goto_1

    :cond_1
    invoke-static {v2, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->u:Z

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->k()V

    :cond_3
    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/m/z;)V
    .locals 3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->t:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->t:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/b/g;)V
    .locals 3

    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/h;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/h;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/h;)Lcom/google/maps/api/android/lib6/gmm6/m/d;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->h:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V
    .locals 3

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/k;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->c:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/k;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;B)V

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/k;)V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;->a()Z

    :cond_0
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a()Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/f;->a()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/f;->e()V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->g:Ljava/lang/String;

    const-string v2, "Unable to clear disk cache"

    invoke-static {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    :cond_1
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->c()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->g:Lcom/google/maps/api/android/lib6/b/o;

    invoke-interface {v0, p0}, Lcom/google/maps/api/android/lib6/b/o;->a(Lcom/google/maps/api/android/lib6/b/p;)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->start()V

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->h:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    return-void

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;->a()Z

    :cond_0
    return-void
.end method

.method public g()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/ad;->d()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/g;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/m/g;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/d;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->h:Landroid/os/Handler;

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a:Lcom/google/maps/api/android/lib6/gmm6/m/aa;

    iget-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->h:Ljava/io/File;

    invoke-interface {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/f;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    :cond_0
    iget-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->f:Ljava/util/Locale;

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/f;->d()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->f:Ljava/util/Locale;

    invoke-interface {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/f;->a(Ljava/util/Locale;)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/maps/api/android/lib6/gmm6/m/aa;->c:Z

    :cond_2
    monitor-enter v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not set thread priority: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected abstract h()Lcom/google/maps/api/android/lib6/gmm6/m/h;
.end method

.method public i()Lcom/google/maps/api/android/lib6/gmm6/l/av;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d;->c:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    return-object v0
.end method
