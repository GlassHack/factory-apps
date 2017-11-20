.class final Lcom/google/h/a/b/b/ap;
.super Lcom/google/h/a/b/b/c;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/h/a/b/b/t;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/google/h/a/b/b/t;)V
    .locals 2

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/google/h/a/b/b/c;-><init>()V

    .line 715
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/h/a/b/b/ap;->c:J

    .line 718
    iput-object p1, p0, Lcom/google/h/a/b/b/ap;->b:Lcom/google/h/a/b/b/t;

    .line 719
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/h/a/b/b/t;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/google/h/a/b/b/c;->a:[Lcom/google/h/a/b/b/t;

    .line 720
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/h/a/b/a/b;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/h/a/b/b/ap;->b:Lcom/google/h/a/b/b/t;

    invoke-interface {v0}, Lcom/google/h/a/b/b/t;->a()Lcom/google/h/a/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLcom/google/h/a/b/a/b;)V
    .locals 5

    .prologue
    .line 724
    iget-wide v0, p0, Lcom/google/h/a/b/b/ap;->c:J

    sget-wide v2, Lcom/google/h/a/b/b/ah;->f:J

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/google/h/a/b/b/ap;->b:Lcom/google/h/a/b/b/t;

    invoke-interface {v0}, Lcom/google/h/a/b/b/t;->c()V

    .line 727
    :cond_0
    iput-wide p1, p0, Lcom/google/h/a/b/b/ap;->c:J

    .line 728
    iget-object v0, p0, Lcom/google/h/a/b/b/ap;->b:Lcom/google/h/a/b/b/t;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/h/a/b/b/t;->a(JLcom/google/h/a/b/a/b;)V

    .line 729
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/h/a/b/b/ap;->b:Lcom/google/h/a/b/b/t;

    invoke-interface {v0}, Lcom/google/h/a/b/b/t;->b()J

    move-result-wide v0

    return-wide v0
.end method
