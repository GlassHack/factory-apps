.class final Lcom/google/glass/protobuf/MessageNanoEncodingUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"


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
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/protobuf/MessageNanoEncodingUtils$1;->val$proto:Lcom/google/protobuf/nano/MessageNano;

    if-nez v0, :cond_0

    .line 32
    const-string v0, "* null *"

    .line 36
    :goto_0
    return-object v0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/google/glass/protobuf/MessageNanoEncodingUtils$1;->val$proto:Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 36
    invoke-static {}, Lcom/google/common/io/b;->a()Lcom/google/common/io/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/io/b;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
