.class public interface abstract Lcom/google/android/wearable/gmsclient/NodeManager$GetConnectedNodesCallback;
.super Ljava/lang/Object;
.source "NodeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/wearable/gmsclient/NodeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetConnectedNodesCallback"
.end annotation


# virtual methods
.method public abstract onGetConnectedNodesComplete(Lcom/google/android/wearable/gmsclient/WearableFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/wearable/gmsclient/WearableFuture",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/Node;",
            ">;>;)V"
        }
    .end annotation
.end method
