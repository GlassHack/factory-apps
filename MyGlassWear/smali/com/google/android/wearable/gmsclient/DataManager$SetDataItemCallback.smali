.class public interface abstract Lcom/google/android/wearable/gmsclient/DataManager$SetDataItemCallback;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/wearable/gmsclient/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SetDataItemCallback"
.end annotation


# virtual methods
.method public abstract onSetDataItemComplete(Lcom/google/android/wearable/gmsclient/WearableFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/wearable/gmsclient/WearableFuture",
            "<",
            "Lcom/google/android/gms/wearable/DataItem;",
            ">;)V"
        }
    .end annotation
.end method
