.class final Lcom/google/common/collect/ce;
.super Lcom/google/common/collect/cd;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 90
    iput-object p2, p0, Lcom/google/common/collect/ce;->a:Ljava/lang/Iterable;

    invoke-direct {p0, p1}, Lcom/google/common/collect/cd;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/common/collect/ce;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
