.class final Lcom/google/glass/deferredcontent/ImageProxyDownloadTask$1;
.super Ljava/lang/Object;
.source "ImageProxyDownloadTask.java"

# interfaces
.implements Lcom/google/glass/protobuf/ProtoParser$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/glass/protobuf/ProtoParser$Provider",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provide()Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic provide()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask$1;->provide()Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;

    move-result-object v0

    return-object v0
.end method
