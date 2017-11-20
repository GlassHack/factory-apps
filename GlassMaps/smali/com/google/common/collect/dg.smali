.class public final Lcom/google/common/collect/dg;
.super Lcom/google/common/collect/dr;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/google/common/collect/dr;-><init>()V

    return-void
.end method

.method private b(Ljava/util/Map;)Lcom/google/common/collect/dg;
    .locals 0

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/google/common/collect/dr;->a(Ljava/util/Map;)Lcom/google/common/collect/dr;

    .line 159
    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableBiMap;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/common/collect/dg;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableBiMap;->fromEntries(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;
    .locals 0

    .prologue
    .line 145
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/dr;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dr;

    .line 146
    return-object p0
.end method

.method public final synthetic a(Ljava/util/Map;)Lcom/google/common/collect/dr;
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/google/common/collect/dg;->b(Ljava/util/Map;)Lcom/google/common/collect/dg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/common/collect/dg;->a()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dr;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    move-result-object v0

    return-object v0
.end method
