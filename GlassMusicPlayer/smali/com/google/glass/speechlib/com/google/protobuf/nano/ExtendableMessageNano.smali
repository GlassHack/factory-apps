.class public abstract Lcom/google/glass/speechlib/com/google/protobuf/nano/ExtendableMessageNano;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field protected unknownFieldData:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtension(Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getExtension(Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Ljava/util/List;

    invoke-static {v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v0

    .line 50
    iput v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/ExtendableMessageNano;->cachedSize:I

    .line 51
    return v0
.end method

.method public setExtension(Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Ljava/util/List;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Ljava/util/List;

    invoke-static {p1, p2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->setExtension(Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;Ljava/lang/Object;Ljava/util/List;)V

    .line 69
    return-void
.end method
