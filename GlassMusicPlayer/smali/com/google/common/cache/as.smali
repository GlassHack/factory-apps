.class final Lcom/google/common/cache/as;
.super Lcom/google/common/cache/n;
.source "SourceFile"


# instance fields
.field a:Lcom/google/common/cache/y;

.field b:Lcom/google/common/cache/y;

.field final synthetic c:Lcom/google/common/cache/ar;


# direct methods
.method constructor <init>(Lcom/google/common/cache/ar;)V
    .locals 0

    .prologue
    .line 3538
    iput-object p1, p0, Lcom/google/common/cache/as;->c:Lcom/google/common/cache/ar;

    invoke-direct {p0}, Lcom/google/common/cache/n;-><init>()V

    .line 3548
    iput-object p0, p0, Lcom/google/common/cache/as;->a:Lcom/google/common/cache/y;

    .line 3560
    iput-object p0, p0, Lcom/google/common/cache/as;->b:Lcom/google/common/cache/y;

    return-void
.end method


# virtual methods
.method public final getNextInWriteQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 3552
    iget-object v0, p0, Lcom/google/common/cache/as;->a:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final getPreviousInWriteQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 3564
    iget-object v0, p0, Lcom/google/common/cache/as;->b:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final getWriteTime()J
    .locals 2

    .prologue
    .line 3542
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public final setNextInWriteQueue(Lcom/google/common/cache/y;)V
    .locals 0

    .prologue
    .line 3557
    iput-object p1, p0, Lcom/google/common/cache/as;->a:Lcom/google/common/cache/y;

    .line 3558
    return-void
.end method

.method public final setPreviousInWriteQueue(Lcom/google/common/cache/y;)V
    .locals 0

    .prologue
    .line 3569
    iput-object p1, p0, Lcom/google/common/cache/as;->b:Lcom/google/common/cache/y;

    .line 3570
    return-void
.end method

.method public final setWriteTime(J)V
    .locals 0

    .prologue
    .line 3546
    return-void
.end method
