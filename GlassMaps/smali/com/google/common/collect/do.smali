.class public final Lcom/google/common/collect/do;
.super Lcom/google/common/collect/dt;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/google/common/collect/dt;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableListMultimap;
    .locals 1

    .prologue
    .line 221
    invoke-super {p0}, Lcom/google/common/collect/dt;->b()Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableListMultimap;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/do;
    .locals 0

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/dt;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dt;

    .line 160
    return-object p0
.end method

.method public final synthetic b()Lcom/google/common/collect/ImmutableMultimap;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/common/collect/do;->a()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dt;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/do;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/do;

    move-result-object v0

    return-object v0
.end method
