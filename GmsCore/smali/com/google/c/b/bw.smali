.class public final Lcom/google/c/b/bw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/c/b/bx;


# instance fields
.field private final a:Lcom/google/c/b/eh;

.field private final b:Lcom/google/c/b/eh;

.field private final c:Lcom/google/c/b/eh;

.field private final d:Lcom/google/c/b/eh;

.field private final e:Lcom/google/c/b/eh;

.field private final f:Lcom/google/c/b/eh;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/c/b/ei;->a()Lcom/google/c/b/eh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/bw;->a:Lcom/google/c/b/eh;

    invoke-static {}, Lcom/google/c/b/ei;->a()Lcom/google/c/b/eh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/bw;->b:Lcom/google/c/b/eh;

    invoke-static {}, Lcom/google/c/b/ei;->a()Lcom/google/c/b/eh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/bw;->c:Lcom/google/c/b/eh;

    invoke-static {}, Lcom/google/c/b/ei;->a()Lcom/google/c/b/eh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/bw;->d:Lcom/google/c/b/eh;

    invoke-static {}, Lcom/google/c/b/ei;->a()Lcom/google/c/b/eh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/bw;->e:Lcom/google/c/b/eh;

    invoke-static {}, Lcom/google/c/b/ei;->a()Lcom/google/c/b/eh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/bw;->f:Lcom/google/c/b/eh;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/c/b/bw;->a:Lcom/google/c/b/eh;

    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3}, Lcom/google/c/b/eh;->a(J)V

    return-void
.end method

.method public final a(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/bw;->c:Lcom/google/c/b/eh;

    invoke-interface {v0}, Lcom/google/c/b/eh;->a()V

    iget-object v0, p0, Lcom/google/c/b/bw;->e:Lcom/google/c/b/eh;

    invoke-interface {v0, p1, p2}, Lcom/google/c/b/eh;->a(J)V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/google/c/b/bw;->b:Lcom/google/c/b/eh;

    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3}, Lcom/google/c/b/eh;->a(J)V

    return-void
.end method

.method public final b(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/bw;->d:Lcom/google/c/b/eh;

    invoke-interface {v0}, Lcom/google/c/b/eh;->a()V

    iget-object v0, p0, Lcom/google/c/b/bw;->e:Lcom/google/c/b/eh;

    invoke-interface {v0, p1, p2}, Lcom/google/c/b/eh;->a(J)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/bw;->f:Lcom/google/c/b/eh;

    invoke-interface {v0}, Lcom/google/c/b/eh;->a()V

    return-void
.end method
