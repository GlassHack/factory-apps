.class public Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;
.super Ljava/lang/Object;
.source "StreamItemGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/clockwork/stream/StreamItemGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mId:Lcom/google/android/clockwork/stream/StreamItemGroupId;

.field private mMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/clockwork/stream/StreamItemGroup;)V
    .locals 2
    .param p1, "original"    # Lcom/google/android/clockwork/stream/StreamItemGroup;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-static {p1}, Lcom/google/android/clockwork/stream/StreamItemGroup;->access$100(Lcom/google/android/clockwork/stream/StreamItemGroup;)Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->mId:Lcom/google/android/clockwork/stream/StreamItemGroupId;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getMembers()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->mMembers:Ljava/util/List;

    .line 140
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/clockwork/stream/StreamItemGroup;Lcom/google/android/clockwork/stream/StreamItemGroup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/clockwork/stream/StreamItemGroup;
    .param p2, "x1"    # Lcom/google/android/clockwork/stream/StreamItemGroup$1;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;-><init>(Lcom/google/android/clockwork/stream/StreamItemGroup;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/clockwork/stream/StreamItemGroupId;)V
    .locals 1
    .param p1, "id"    # Lcom/google/android/clockwork/stream/StreamItemGroupId;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->mId:Lcom/google/android/clockwork/stream/StreamItemGroupId;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->mMembers:Ljava/util/List;

    .line 135
    return-void
.end method


# virtual methods
.method public addMember(Lcom/google/android/clockwork/stream/StreamItemEntry;)Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;
    .locals 1
    .param p1, "member"    # Lcom/google/android/clockwork/stream/StreamItemEntry;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->mMembers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-object p0
.end method

.method public build()Lcom/google/android/clockwork/stream/StreamItemGroup;
    .locals 4

    .prologue
    .line 173
    new-instance v0, Lcom/google/android/clockwork/stream/StreamItemGroup;

    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->mId:Lcom/google/android/clockwork/stream/StreamItemGroupId;

    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->mMembers:Ljava/util/List;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/clockwork/stream/StreamItemGroup;-><init>(Lcom/google/android/clockwork/stream/StreamItemGroupId;Lcom/google/common/collect/ImmutableList;Lcom/google/android/clockwork/stream/StreamItemGroup$1;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->mMembers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeMember(Lcom/google/android/clockwork/stream/StreamItemEntry;)Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;
    .locals 1
    .param p1, "member"    # Lcom/google/android/clockwork/stream/StreamItemEntry;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->mMembers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 149
    return-object p0
.end method

.method public setChildren(Ljava/util/Collection;)Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemEntry;",
            ">;)",
            "Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "children":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/clockwork/stream/StreamItemEntry;>;"
    const/4 v2, 0x0

    .line 154
    .local v2, "summary":Lcom/google/android/clockwork/stream/StreamItemEntry;
    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->mMembers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 155
    .local v0, "entry":Lcom/google/android/clockwork/stream/StreamItemEntry;
    invoke-virtual {v0}, Lcom/google/android/clockwork/stream/StreamItemEntry;->isGroupSummary()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    move-object v2, v0

    .line 160
    .end local v0    # "entry":Lcom/google/android/clockwork/stream/StreamItemEntry;
    :cond_1
    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->mMembers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 161
    if-eqz v2, :cond_2

    .line 162
    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->mMembers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_2
    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->mMembers:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    return-object p0
.end method
