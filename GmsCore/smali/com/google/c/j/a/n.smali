.class public final Lcom/google/c/j/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/c/c/cz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1236
    invoke-static {}, Lcom/google/c/c/cz;->b()Lcom/google/c/c/cz;

    move-result-object v0

    new-instance v1, Lcom/google/c/j/a/r;

    invoke-direct {v1}, Lcom/google/c/j/a/r;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/c/c/cz;->a(Lcom/google/c/a/y;)Lcom/google/c/c/cz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/cz;->a()Lcom/google/c/c/cz;

    move-result-object v0

    sput-object v0, Lcom/google/c/j/a/n;->a:Lcom/google/c/c/cz;

    return-void
.end method

.method public static a(Lcom/google/c/j/a/v;Lcom/google/c/a/y;)Lcom/google/c/j/a/f;
    .locals 2

    .prologue
    .line 81
    new-instance v1, Lcom/google/c/j/a/u;

    invoke-static {p0}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/j/a/v;

    invoke-direct {v1, v0, p1}, Lcom/google/c/j/a/u;-><init>(Lcom/google/c/j/a/v;Lcom/google/c/a/y;)V

    return-object v1
.end method

.method public static a(Lcom/google/c/j/a/v;Lcom/google/c/j/a/e;Ljava/util/concurrent/Executor;)Lcom/google/c/j/a/v;
    .locals 2

    .prologue
    .line 391
    new-instance v0, Lcom/google/c/j/a/s;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/google/c/j/a/s;-><init>(Lcom/google/c/j/a/e;Lcom/google/c/j/a/v;B)V

    .line 393
    invoke-interface {p0, v0, p2}, Lcom/google/c/j/a/v;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 394
    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/c/j/a/v;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/google/c/j/a/ad;->a()Lcom/google/c/j/a/ad;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p0}, Lcom/google/c/j/a/ad;->a(Ljava/lang/Object;)Z

    .line 93
    return-object v0
.end method

.method public static a(Lcom/google/c/j/a/v;Lcom/google/c/j/a/m;)V
    .locals 2

    .prologue
    .line 915
    invoke-static {}, Lcom/google/c/j/a/z;->a()Lcom/google/c/j/a/x;

    move-result-object v0

    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/c/j/a/q;

    invoke-direct {v1, p0, p1}, Lcom/google/c/j/a/q;-><init>(Lcom/google/c/j/a/v;Lcom/google/c/j/a/m;)V

    invoke-interface {p0, v1, v0}, Lcom/google/c/j/a/v;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 916
    return-void
.end method

.method public static b(Lcom/google/c/j/a/v;Lcom/google/c/a/y;)Lcom/google/c/j/a/v;
    .locals 4

    .prologue
    .line 446
    invoke-static {}, Lcom/google/c/j/a/z;->a()Lcom/google/c/j/a/x;

    move-result-object v0

    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/c/j/a/p;

    invoke-direct {v1, p1}, Lcom/google/c/j/a/p;-><init>(Lcom/google/c/a/y;)V

    invoke-static {v1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/c/j/a/s;

    new-instance v3, Lcom/google/c/j/a/o;

    invoke-direct {v3, v1}, Lcom/google/c/j/a/o;-><init>(Lcom/google/c/a/y;)V

    const/4 v1, 0x0

    invoke-direct {v2, v3, p0, v1}, Lcom/google/c/j/a/s;-><init>(Lcom/google/c/j/a/e;Lcom/google/c/j/a/v;B)V

    invoke-interface {p0, v2, v0}, Lcom/google/c/j/a/v;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v2
.end method
