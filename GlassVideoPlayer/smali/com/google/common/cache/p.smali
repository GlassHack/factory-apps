.class final Lcom/google/common/cache/p;
.super Lcom/google/common/cache/n;
.source "SourceFile"


# instance fields
.field a:Lcom/google/common/cache/y;

.field b:Lcom/google/common/cache/y;

.field final synthetic c:Lcom/google/common/cache/o;


# direct methods
.method constructor <init>(Lcom/google/common/cache/o;)V
    .locals 0

    .prologue
    .line 3673
    iput-object p1, p0, Lcom/google/common/cache/p;->c:Lcom/google/common/cache/o;

    invoke-direct {p0}, Lcom/google/common/cache/n;-><init>()V

    .line 3683
    iput-object p0, p0, Lcom/google/common/cache/p;->a:Lcom/google/common/cache/y;

    .line 3695
    iput-object p0, p0, Lcom/google/common/cache/p;->b:Lcom/google/common/cache/y;

    return-void
.end method


# virtual methods
.method public final getAccessTime()J
    .locals 2

    .prologue
    .line 3677
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public final getNextInAccessQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 3687
    iget-object v0, p0, Lcom/google/common/cache/p;->a:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final getPreviousInAccessQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 3699
    iget-object v0, p0, Lcom/google/common/cache/p;->b:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final setAccessTime(J)V
    .locals 0

    .prologue
    .line 3681
    return-void
.end method

.method public final setNextInAccessQueue(Lcom/google/common/cache/y;)V
    .locals 0

    .prologue
    .line 3692
    iput-object p1, p0, Lcom/google/common/cache/p;->a:Lcom/google/common/cache/y;

    .line 3693
    return-void
.end method

.method public final setPreviousInAccessQueue(Lcom/google/common/cache/y;)V
    .locals 0

    .prologue
    .line 3704
    iput-object p1, p0, Lcom/google/common/cache/p;->b:Lcom/google/common/cache/y;

    .line 3705
    return-void
.end method
