.class public Lcom/google/common/reflect/TypeToken$TypeSet;
.super Lcom/google/common/collect/cp;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lcom/google/common/reflect/TypeToken;

.field private transient types:Lcom/google/common/collect/ImmutableSet;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeToken;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$TypeSet;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-direct {p0}, Lcom/google/common/collect/cp;-><init>()V

    return-void
.end method


# virtual methods
.method public classes()Lcom/google/common/reflect/TypeToken$TypeSet;
    .locals 3

    .prologue
    .line 543
    new-instance v0, Lcom/google/common/reflect/TypeToken$ClassSet;

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$TypeSet;->this$0:Lcom/google/common/reflect/TypeToken;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/TypeToken$ClassSet;-><init>(Lcom/google/common/reflect/TypeToken;Lcom/google/common/reflect/k;)V

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$TypeSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$TypeSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$TypeSet;->types:Lcom/google/common/collect/ImmutableSet;

    .line 549
    if-nez v0, :cond_0

    .line 552
    sget-object v0, Lcom/google/common/reflect/n;->a:Lcom/google/common/reflect/n;

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$TypeSet;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/n;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 554
    invoke-static {v0}, Lcom/google/common/collect/cd;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/cd;

    move-result-object v0

    sget-object v1, Lcom/google/common/reflect/TypeToken$TypeFilter;->IGNORE_TYPE_VARIABLE_OR_WILDCARD:Lcom/google/common/reflect/TypeToken$TypeFilter;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/cd;->a(Lcom/google/common/base/aj;)Lcom/google/common/collect/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/cd;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeToken$TypeSet;->types:Lcom/google/common/collect/ImmutableSet;

    .line 557
    :cond_0
    return-object v0
.end method

.method public interfaces()Lcom/google/common/reflect/TypeToken$TypeSet;
    .locals 2

    .prologue
    .line 538
    new-instance v0, Lcom/google/common/reflect/TypeToken$InterfaceSet;

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$TypeSet;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-direct {v0, v1, p0}, Lcom/google/common/reflect/TypeToken$InterfaceSet;-><init>(Lcom/google/common/reflect/TypeToken;Lcom/google/common/reflect/TypeToken$TypeSet;)V

    return-object v0
.end method

.method public rawTypes()Ljava/util/Set;
    .locals 2

    .prologue
    .line 565
    sget-object v0, Lcom/google/common/reflect/n;->b:Lcom/google/common/reflect/n;

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$TypeSet;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->access$200(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/n;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 567
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
