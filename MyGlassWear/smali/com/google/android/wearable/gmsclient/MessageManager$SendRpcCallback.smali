.class public interface abstract Lcom/google/android/wearable/gmsclient/MessageManager$SendRpcCallback;
.super Ljava/lang/Object;
.source "MessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/wearable/gmsclient/MessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SendRpcCallback"
.end annotation


# virtual methods
.method public abstract onSendRpc(Lcom/google/android/wearable/gmsclient/WearableFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/wearable/gmsclient/WearableFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
