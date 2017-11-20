.class Lcom/google/c/b/bf;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/b/ba;


# instance fields
.field final a:Lcom/google/c/b/am;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 1640
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1641
    iput-object p3, p0, Lcom/google/c/b/bf;->a:Lcom/google/c/b/am;

    .line 1642
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1646
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;Lcom/google/c/b/am;)Lcom/google/c/b/ba;
    .locals 2

    .prologue
    .line 1660
    new-instance v0, Lcom/google/c/b/bf;

    invoke-virtual {p0}, Lcom/google/c/b/bf;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/google/c/b/bf;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/c/b/am;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1655
    return-void
.end method

.method public final b()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/google/c/b/bf;->a:Lcom/google/c/b/am;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 1665
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1670
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1675
    invoke-virtual {p0}, Lcom/google/c/b/bf;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
