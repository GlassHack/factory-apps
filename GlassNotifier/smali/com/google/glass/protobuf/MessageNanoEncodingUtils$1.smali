.class final Lcom/google/glass/protobuf/MessageNanoEncodingUtils$1;
.super Ljava/lang/Object;
.source "MessageNanoEncodingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/protobuf/MessageNanoEncodingUtils;->lazyBase64String(Lcom/google/protobuf/nano/MessageNano;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$proto:Lcom/google/protobuf/nano/MessageNano;


# direct methods
.method constructor <init>(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/glass/protobuf/MessageNanoEncodingUtils$1;->val$proto:Lcom/google/protobuf/nano/MessageNano;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    iget-object v1, p0, Lcom/google/glass/protobuf/MessageNanoEncodingUtils$1;->val$proto:Lcom/google/protobuf/nano/MessageNano;

    if-nez v1, :cond_0

    .line 32
    const-string v1, "* null *"

    .line 36
    :goto_0
    return-object v1

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/google/glass/protobuf/MessageNanoEncodingUtils$1;->val$proto:Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 36
    .local v0, "protoBytes":[B
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
