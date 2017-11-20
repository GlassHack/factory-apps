.class public final Lcom/google/common/util/concurrent/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/common/util/concurrent/b;

.field private static final b:Lcom/google/common/collect/Ordering;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 913
    new-instance v0, Lcom/google/common/util/concurrent/h;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/h;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/b;

    .line 1363
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/j;

    invoke-direct {v1}, Lcom/google/common/util/concurrent/j;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Ordering;->onResultOf(Lcom/google/common/base/w;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/f;->b:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method public static a(Lcom/google/common/util/concurrent/o;Lcom/google/common/util/concurrent/b;)Lcom/google/common/util/concurrent/o;
    .locals 1

    .prologue
    .line 550
    invoke-static {}, Lcom/google/common/util/concurrent/r;->a()Lcom/google/common/util/concurrent/q;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/common/util/concurrent/f;->a(Lcom/google/common/util/concurrent/o;Lcom/google/common/util/concurrent/b;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/o;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/common/util/concurrent/o;Lcom/google/common/util/concurrent/b;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/o;
    .locals 2

    .prologue
    .line 595
    new-instance v0, Lcom/google/common/util/concurrent/k;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/google/common/util/concurrent/k;-><init>(Lcom/google/common/util/concurrent/b;Lcom/google/common/util/concurrent/o;Lcom/google/common/util/concurrent/g;)V

    .line 596
    invoke-interface {p0, v0, p2}, Lcom/google/common/util/concurrent/o;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 597
    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/o;
    .locals 1

    .prologue
    .line 229
    new-instance v0, Lcom/google/common/util/concurrent/n;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/n;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lcom/google/common/util/concurrent/o;Lcom/google/common/util/concurrent/e;)V
    .locals 1

    .prologue
    .line 1054
    invoke-static {}, Lcom/google/common/util/concurrent/r;->a()Lcom/google/common/util/concurrent/q;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/common/util/concurrent/f;->a(Lcom/google/common/util/concurrent/o;Lcom/google/common/util/concurrent/e;Ljava/util/concurrent/Executor;)V

    .line 1055
    return-void
.end method

.method private static a(Lcom/google/common/util/concurrent/o;Lcom/google/common/util/concurrent/e;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 1096
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    new-instance v0, Lcom/google/common/util/concurrent/i;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/i;-><init>(Lcom/google/common/util/concurrent/o;Lcom/google/common/util/concurrent/e;)V

    .line 1118
    invoke-interface {p0, v0, p2}, Lcom/google/common/util/concurrent/o;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1119
    return-void
.end method
