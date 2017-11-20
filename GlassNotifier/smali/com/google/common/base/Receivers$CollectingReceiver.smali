.class final Lcom/google/common/base/Receivers$CollectingReceiver;
.super Ljava/lang/Object;
.source "Receivers.java"

# interfaces
.implements Lcom/google/common/base/Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Receivers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CollectingReceiver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Receiver",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/google/common/base/Receivers$CollectingReceiver;, "Lcom/google/common/base/Receivers$CollectingReceiver<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/common/base/Receivers$CollectingReceiver;->collection:Ljava/util/Collection;

    .line 149
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/google/common/base/Receivers$CollectingReceiver;, "Lcom/google/common/base/Receivers$CollectingReceiver<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/common/base/Receivers$CollectingReceiver;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/base/Receivers$CollectingReceiver;, "Lcom/google/common/base/Receivers$CollectingReceiver<TT;>;"
    const/4 v1, 0x0

    .line 158
    instance-of v2, p1, Lcom/google/common/base/Receivers$CollectingReceiver;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 159
    check-cast v0, Lcom/google/common/base/Receivers$CollectingReceiver;

    .line 160
    .local v0, "that":Lcom/google/common/base/Receivers$CollectingReceiver;, "Lcom/google/common/base/Receivers$CollectingReceiver<*>;"
    iget-object v2, p0, Lcom/google/common/base/Receivers$CollectingReceiver;->collection:Ljava/util/Collection;

    iget-object v3, v0, Lcom/google/common/base/Receivers$CollectingReceiver;->collection:Ljava/util/Collection;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 162
    .end local v0    # "that":Lcom/google/common/base/Receivers$CollectingReceiver;, "Lcom/google/common/base/Receivers$CollectingReceiver<*>;"
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 167
    .local p0, "this":Lcom/google/common/base/Receivers$CollectingReceiver;, "Lcom/google/common/base/Receivers$CollectingReceiver<TT;>;"
    iget-object v0, p0, Lcom/google/common/base/Receivers$CollectingReceiver;->collection:Ljava/util/Collection;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
