.class final Lcom/google/common/collect/ae;
.super Lcom/google/common/collect/jd;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ab;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ab;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/common/collect/ae;->a:Lcom/google/common/collect/ab;

    invoke-direct {p0}, Lcom/google/common/collect/jd;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/common/collect/ae;->a:Lcom/google/common/collect/ab;

    invoke-virtual {v0}, Lcom/google/common/collect/ab;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
