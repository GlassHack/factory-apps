.class Lcom/google/common/cache/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/ah;


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1649
    iput-object p1, p0, Lcom/google/common/cache/ae;->a:Ljava/lang/Object;

    .line 1650
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1657
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/y;)Lcom/google/common/cache/ah;
    .locals 0

    .prologue
    .line 1665
    return-object p0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1680
    return-void
.end method

.method public final b()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1661
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 1669
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1673
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1677
    invoke-virtual {p0}, Lcom/google/common/cache/ae;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/google/common/cache/ae;->a:Ljava/lang/Object;

    return-object v0
.end method
