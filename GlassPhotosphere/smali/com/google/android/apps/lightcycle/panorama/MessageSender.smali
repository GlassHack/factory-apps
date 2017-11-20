.class public Lcom/google/android/apps/lightcycle/panorama/MessageSender;
.super Ljava/lang/Object;
.source "MessageSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;
    }
.end annotation


# instance fields
.field protected mSubscribers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageSender;->mSubscribers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public notifyAll(IFLjava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "value"    # F
    .param p3, "string"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/MessageSender;->mSubscribers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;

    .line 30
    .local v1, "subscriber":Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;
    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;->message(IFLjava/lang/String;)V

    goto :goto_0

    .line 32
    .end local v1    # "subscriber":Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;
    :cond_0
    return-void
.end method

.method public subscribe(Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;)V
    .locals 1
    .param p1, "subscriber"    # Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageSender;->mSubscribers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method
