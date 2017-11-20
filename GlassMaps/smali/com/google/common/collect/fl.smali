.class final Lcom/google/common/collect/fl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/common/collect/fq;

.field b:Lcom/google/common/collect/fq;

.field c:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/fq;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/google/common/collect/fl;->a:Lcom/google/common/collect/fq;

    .line 137
    iput-object p1, p0, Lcom/google/common/collect/fl;->b:Lcom/google/common/collect/fq;

    .line 138
    iput-object v0, p1, Lcom/google/common/collect/fq;->f:Lcom/google/common/collect/fq;

    .line 139
    iput-object v0, p1, Lcom/google/common/collect/fq;->e:Lcom/google/common/collect/fq;

    .line 140
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/common/collect/fl;->c:I

    .line 141
    return-void
.end method
