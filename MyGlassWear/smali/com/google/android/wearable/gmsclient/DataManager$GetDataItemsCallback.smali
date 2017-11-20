.class public interface abstract Lcom/google/android/wearable/gmsclient/DataManager$GetDataItemsCallback;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/wearable/gmsclient/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetDataItemsCallback"
.end annotation


# virtual methods
.method public abstract onGetDataItemsComplete(Lcom/google/android/wearable/gmsclient/WearableFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/wearable/gmsclient/WearableFuture",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/DataItem;",
            ">;>;)V"
        }
    .end annotation
.end method
