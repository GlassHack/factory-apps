.class public interface abstract Lcom/google/android/wearable/gmsclient/NodeManager$GetLocalNodeCallback;
.super Ljava/lang/Object;
.source "NodeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/wearable/gmsclient/NodeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetLocalNodeCallback"
.end annotation


# virtual methods
.method public abstract onGetLocalNodeComplete(Lcom/google/android/wearable/gmsclient/WearableFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/wearable/gmsclient/WearableFuture",
            "<",
            "Lcom/google/android/gms/wearable/Node;",
            ">;)V"
        }
    .end annotation
.end method
