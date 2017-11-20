.class Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;
.super Lcom/google/common/collect/ImmutableCollection;
.source "SourceFile"


# instance fields
.field private final elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 229
    iput-object p1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;->elements:[Ljava/lang/Object;

    .line 230
    return-void
.end method


# virtual methods
.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;->elements:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/common/collect/SingletonImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;->elements:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/collect/SingletonImmutableList;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;->elements:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/ol;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/ej;->a([Ljava/lang/Object;)Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;->iterator()Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
