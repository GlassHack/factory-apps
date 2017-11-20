.class Lcom/google/c/b/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/b/ba;


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1732
    iput-object p1, p0, Lcom/google/c/b/ax;->a:Ljava/lang/Object;

    .line 1733
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1742
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Lcom/google/c/b/am;)Lcom/google/c/b/ba;
    .locals 0

    .prologue
    .line 1752
    return-object p0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1771
    return-void
.end method

.method public final b()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 1747
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 1757
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1762
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1767
    invoke-virtual {p0}, Lcom/google/c/b/ax;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/google/c/b/ax;->a:Ljava/lang/Object;

    return-object v0
.end method
