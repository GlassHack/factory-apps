.class public final Lcom/google/glass/timeline/AttachmentUtils;
.super Ljava/lang/Object;
.source "AttachmentUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 3
    .param p0, "original"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .prologue
    .line 58
    if-nez p0, :cond_0

    .line 59
    const/4 v1, 0x0

    .line 63
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t clone attachment"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getThumbnailFilename(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;
    .locals 3
    .param p0, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasClientCachePath()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhoto(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z
    .locals 2
    .param p0, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .prologue
    .line 50
    const-string v0, "null attachment"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "image/jpeg"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z
    .locals 2
    .param p0, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .prologue
    .line 40
    const-string v0, "null attachment"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "video/mp4"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
