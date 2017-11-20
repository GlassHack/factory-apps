.class final Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/protobuf/ProtoParser$Provider;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provide()Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic provide()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$1;->provide()Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    move-result-object v0

    return-object v0
.end method
