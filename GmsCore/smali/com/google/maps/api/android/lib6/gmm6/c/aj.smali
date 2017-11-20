.class public final Lcom/google/maps/api/android/lib6/gmm6/c/aj;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;


# instance fields
.field final a:Ljava/util/Set;

.field private final c:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

.field private final d:Lcom/google/android/gms/maps/model/w;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Ljava/util/Set;

.field private volatile g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

.field private final h:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

.field private volatile i:Lcom/google/maps/api/android/lib6/gmm6/c/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/av;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/av;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/w;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->a:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->d:Lcom/google/android/gms/maps/model/w;

    const-string v0, "\\D"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->a(I)Lcom/google/maps/api/android/lib6/gmm6/n/a;

    move-result-object v0

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/l/av;->t:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Ljava/util/Set;Lcom/google/maps/api/android/lib6/gmm6/n/a;)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->c:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/google/g/a/d;

    invoke-direct {v0}, Lcom/google/g/a/d;-><init>()V

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(Lcom/google/g/a/d;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a()Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->h:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/c/aj;)Lcom/google/android/gms/maps/model/w;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->d:Lcom/google/android/gms/maps/model/w;

    return-object v0
.end method

.method private static a(I)Lcom/google/maps/api/android/lib6/gmm6/n/a;
    .locals 6

    const/16 v5, 0x20

    const/4 v3, 0x0

    new-array v4, v5, [I

    move v2, v3

    move v1, v3

    :goto_0
    if-ge v2, v5, :cond_0

    const/4 v0, 0x1

    shl-int/2addr v0, v2

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    aput v2, v4, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    invoke-static {v4, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/n/a;->a([I)Lcom/google/maps/api/android/lib6/gmm6/n/a;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Z)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->h:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->c:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Z)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/c/aj;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/cj;->b(Z)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    invoke-direct {p0, p1, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/c/aj;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/cu;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/cj;->b(Z)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ae;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;

    move-result-object v0

    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->h:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->h:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->c:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    invoke-virtual {v0, p3, v1, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->i:Lcom/google/maps/api/android/lib6/gmm6/c/ak;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/ak;->b(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/gmm6/c/aj;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->e:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Z)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/cj;->b(Z)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->h:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->c:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/c/ak;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->i:Lcom/google/maps/api/android/lib6/gmm6/c/ak;

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/cj;->a(Z)V

    :goto_1
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->i:Lcom/google/maps/api/android/lib6/gmm6/c/ak;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    :goto_2
    invoke-static {v0}, Lcom/google/c/a/cj;->a(Z)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    const-string v0, "state must not be null."

    invoke-static {p1, v0}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/cj;->b(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    if-eq v0, v3, :cond_0

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->h:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->c:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;Ljava/util/List;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->h:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(Z)V

    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Z)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/c/al;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-direct {v1, p0, p1, v2}, Lcom/google/maps/api/android/lib6/gmm6/c/al;-><init>(Lcom/google/maps/api/android/lib6/gmm6/c/aj;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Ljava/util/Random;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/cj;->b(Z)V

    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/a/b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->h:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->c:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/cj;->b(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    if-eq v0, v3, :cond_0

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->h:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->c:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;Ljava/util/List;)V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->h:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->c:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->a:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/c/al;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/al;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->h:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->c:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    invoke-virtual {v1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->h:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->b()V

    return-void
.end method
