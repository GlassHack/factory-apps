.class public interface abstract Lcom/google/android/wearable/gmsclient/AssetManager$GetInputStreamForAssetCallback;
.super Ljava/lang/Object;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/wearable/gmsclient/AssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetInputStreamForAssetCallback"
.end annotation


# virtual methods
.method public abstract onGetInputStreamForAssetComplete(Lcom/google/android/wearable/gmsclient/WearableFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/wearable/gmsclient/WearableFuture",
            "<",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation
.end method
