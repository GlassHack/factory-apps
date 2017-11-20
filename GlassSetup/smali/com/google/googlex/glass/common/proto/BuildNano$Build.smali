.class public final Lcom/google/googlex/glass/common/proto/BuildNano$Build;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "BuildNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BuildNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Build"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BuildNano$Build;


# instance fields
.field private bitField0_:I

.field private buildDisplayId_:Ljava/lang/String;

.field private buildType_:I

.field private buildVersion_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildType_:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId_:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion_:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    return-object v0
.end method


# virtual methods
.method public clearBuildDisplayId()Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    .locals 1

    .prologue
    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId_:Ljava/lang/String;

    .line 57
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    .line 58
    return-object p0
.end method

.method public clearBuildType()Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildType_:I

    .line 35
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    .line 36
    return-object p0
.end method

.method public clearBuildVersion()Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    .locals 1

    .prologue
    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion_:Ljava/lang/String;

    .line 79
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    .line 80
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    if-ne p1, p0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 86
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 87
    check-cast v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    .line 88
    .local v0, "other":Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildType_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildType_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 89
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 90
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 91
    goto :goto_0

    .line 88
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId_:Ljava/lang/String;

    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion_:Ljava/lang/String;

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->unknownFieldData:Ljava/util/List;

    .line 91
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getBuildDisplayId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId_:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildType()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildType_:I

    return v0
.end method

.method public getBuildVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 122
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildType_:I

    .line 123
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 126
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId_:Ljava/lang/String;

    .line 127
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 130
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion_:Ljava/lang/String;

    .line 131
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    iput v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->cachedSize:I

    .line 135
    return v0
.end method

.method public hasBuildDisplayId()Z
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBuildType()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBuildVersion()Z
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 95
    const/16 v0, 0x11

    .line 96
    .local v0, "result":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildType_:I

    add-int/lit16 v0, v1, 0x20f

    .line 97
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 98
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 99
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 100
    return v0

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 99
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 144
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 148
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->unknownFieldData:Ljava/util/List;

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    :sswitch_0
    return-object p0

    .line 159
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 160
    .local v1, "temp":I
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 163
    :cond_2
    iput v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildType_:I

    .line 164
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    goto :goto_0

    .line 166
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildType_:I

    goto :goto_0

    .line 171
    .end local v1    # "temp":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId_:Ljava/lang/String;

    .line 172
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    goto :goto_0

    .line 176
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion_:Ljava/lang/String;

    .line 177
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    goto :goto_0

    .line 144
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    move-result-object v0

    return-object v0
.end method

.method public setBuildDisplayId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId_:Ljava/lang/String;

    .line 49
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    .line 50
    return-object p0
.end method

.method public setBuildType(I)Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildType_:I

    .line 27
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    .line 28
    return-object p0
.end method

.method public setBuildVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion_:Ljava/lang/String;

    .line 71
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    .line 72
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 108
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 109
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 111
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 112
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 116
    return-void
.end method
