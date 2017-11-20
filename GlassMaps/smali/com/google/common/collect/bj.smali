.class final Lcom/google/common/collect/bj;
.super Lcom/google/common/collect/bh;
.source "SourceFile"


# instance fields
.field final a:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/bh;-><init>(Lcom/google/common/collect/bi;)V

    .line 128
    iput p1, p0, Lcom/google/common/collect/bj;->a:I

    .line 129
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/bh;
    .locals 0

    .prologue
    .line 133
    return-object p0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/google/common/collect/bj;->a:I

    return v0
.end method
