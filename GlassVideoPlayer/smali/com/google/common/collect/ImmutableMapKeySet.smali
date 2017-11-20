.class final Lcom/google/common/collect/ImmutableMapKeySet;
.super Lcom/google/common/collect/ImmutableSet;
.source "SourceFile"


# instance fields
.field private final map:Lcom/google/common/collect/ImmutableMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMapKeySet;->map:Lcom/google/common/collect/ImmutableMap;

    .line 39
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMapKeySet;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMapKeySet;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/google/common/collect/ImmutableMapKeySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ImmutableMapKeySet$1;-><init>(Lcom/google/common/collect/ImmutableMapKeySet;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public final iterator()Lcom/google/common/collect/ol;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMapKeySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMapKeySet;->iterator()Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMapKeySet;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method

.method final writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/google/common/collect/ImmutableMapKeySet$KeySetSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMapKeySet;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableMapKeySet$KeySetSerializedForm;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method
