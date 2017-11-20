.class final Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$1;
.super Ljava/lang/Object;
.source "GlasswareResourceLoadingTask.java"

# interfaces
.implements Lcom/google/glass/protobuf/ProtoParser$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;
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
        "Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provide()Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic provide()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$1;->provide()Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;

    move-result-object v0

    return-object v0
.end method
