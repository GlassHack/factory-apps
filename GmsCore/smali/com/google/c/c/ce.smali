.class final Lcom/google/c/c/ce;
.super Lcom/google/c/c/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Lcom/google/c/c/ce;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/c/c/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/google/c/c/ce;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/google/c/c/ce;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
