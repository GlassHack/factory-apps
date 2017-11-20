.class final Lcom/google/glass/deferredcontent/ImageProxyDownloadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/protobuf/ProtoParser$Provider;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provide()Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic provide()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask$1;->provide()Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    move-result-object v0

    return-object v0
.end method
