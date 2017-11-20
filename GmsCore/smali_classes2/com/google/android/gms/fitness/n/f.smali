.class final Lcom/google/android/gms/fitness/n/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final h:Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/fitness/n/ax;

.field private final b:Lcom/google/android/gms/fitness/n/g;

.field private final c:Lcom/google/android/gms/fitness/n/ax;

.field private final d:Lcom/google/android/gms/fitness/n/i;

.field private final e:Lcom/google/android/gms/fitness/n/ax;

.field private final f:Lcom/google/android/gms/fitness/n/h;

.field private final g:Lcom/google/c/b/d;

.field private final i:Lcom/google/android/gms/fitness/n/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/n/f;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/n/g;Lcom/google/android/gms/fitness/n/i;Lcom/google/android/gms/fitness/n/h;Lcom/google/android/gms/fitness/n/j;)V
    .locals 4

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v1, Lcom/google/android/gms/fitness/n/ax;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->u:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/fitness/n/ax;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/fitness/n/f;->a:Lcom/google/android/gms/fitness/n/ax;

    .line 45
    new-instance v1, Lcom/google/android/gms/fitness/n/ax;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->u:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/fitness/n/ax;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/fitness/n/f;->c:Lcom/google/android/gms/fitness/n/ax;

    .line 50
    new-instance v1, Lcom/google/android/gms/fitness/n/ax;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->u:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/fitness/n/ax;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/fitness/n/f;->e:Lcom/google/android/gms/fitness/n/ax;

    .line 59
    invoke-static {}, Lcom/google/c/b/e;->a()Lcom/google/c/b/e;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->v:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/c/b/e;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/c/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/e;->e()Lcom/google/c/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/e;->p()Lcom/google/c/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/n/f;->g:Lcom/google/c/b/d;

    .line 69
    iput-object p1, p0, Lcom/google/android/gms/fitness/n/f;->b:Lcom/google/android/gms/fitness/n/g;

    .line 70
    iput-object p2, p0, Lcom/google/android/gms/fitness/n/f;->d:Lcom/google/android/gms/fitness/n/i;

    .line 71
    iput-object p3, p0, Lcom/google/android/gms/fitness/n/f;->f:Lcom/google/android/gms/fitness/n/h;

    .line 72
    iput-object p4, p0, Lcom/google/android/gms/fitness/n/f;->i:Lcom/google/android/gms/fitness/n/j;

    .line 73
    return-void
.end method


# virtual methods
.method public final a(J)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/f;->a:Lcom/google/android/gms/fitness/n/ax;

    iget-object v1, p0, Lcom/google/android/gms/fitness/n/f;->b:Lcom/google/android/gms/fitness/n/g;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/fitness/n/ax;->a(JLcom/google/android/gms/fitness/n/ay;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/f;->a:Lcom/google/android/gms/fitness/n/ax;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/n/ax;->a(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataType;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/f;->c:Lcom/google/android/gms/fitness/n/ax;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/n/ax;->a(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/util/Map;
    .locals 3

    .prologue
    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/f;->g:Lcom/google/c/b/d;

    sget-object v1, Lcom/google/android/gms/fitness/n/f;->h:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/fitness/n/f;->i:Lcom/google/android/gms/fitness/n/j;

    invoke-interface {v0, v1, v2}, Lcom/google/c/b/d;->a(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/fitness/n/aw;

    invoke-static {v1, v2}, Lcom/google/c/a/bb;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 141
    invoke-static {v0}, Lcom/google/c/a/bb;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final a(JLcom/google/android/gms/fitness/data/DataSource;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/f;->a:Lcom/google/android/gms/fitness/n/ax;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/fitness/n/ax;->a(JLjava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public final a(JLcom/google/android/gms/fitness/data/DataType;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/f;->c:Lcom/google/android/gms/fitness/n/ax;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/fitness/n/ax;->a(JLjava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;J)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/f;->g:Lcom/google/c/b/d;

    sget-object v1, Lcom/google/android/gms/fitness/n/f;->h:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/c/b/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 159
    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/d/d;

    .line 164
    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/f;->g:Lcom/google/c/b/d;

    sget-object v1, Lcom/google/android/gms/fitness/n/f;->h:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/c/b/d;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/fitness/d/d;->a(J)V

    goto :goto_0
.end method

.method public final b(J)Lcom/google/android/gms/fitness/data/DataType;
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/f;->c:Lcom/google/android/gms/fitness/n/ax;

    iget-object v1, p0, Lcom/google/android/gms/fitness/n/f;->d:Lcom/google/android/gms/fitness/n/i;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/fitness/n/ax;->a(JLcom/google/android/gms/fitness/n/ay;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/f;->a:Lcom/google/android/gms/fitness/n/ax;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/n/ax;->a(I)V

    .line 176
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/f;->c:Lcom/google/android/gms/fitness/n/ax;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/n/ax;->a(I)V

    .line 177
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/f;->e:Lcom/google/android/gms/fitness/n/ax;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/n/ax;->a(I)V

    .line 178
    return-void
.end method

.method public final c(J)Ljava/util/Map;
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/f;->e:Lcom/google/android/gms/fitness/n/ax;

    iget-object v1, p0, Lcom/google/android/gms/fitness/n/f;->f:Lcom/google/android/gms/fitness/n/h;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/fitness/n/ax;->a(JLcom/google/android/gms/fitness/n/ay;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method
