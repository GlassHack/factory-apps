.class public final Lcom/google/speech/recognizer/api/Network$NetworkParams;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkParams"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/speech/recognizer/api/Network$NetworkParams;


# instance fields
.field private addRestartArcs_:Z

.field private addSilLoops_:Z

.field private allowMissingPaths_:Z

.field private bitField0_:I

.field private closure_:Z

.field private maxInsertions_:I

.field private minFrequency_:I

.field public path:[Lcom/google/speech/recognizer/api/Network$PathParams;

.field private pinch_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/recognizer/api/Network$NetworkParams;

    sput-object v0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->EMPTY_ARRAY:[Lcom/google/speech/recognizer/api/Network$NetworkParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 15
    sget-object v0, Lcom/google/speech/recognizer/api/Network$PathParams;->EMPTY_ARRAY:[Lcom/google/speech/recognizer/api/Network$PathParams;

    iput-object v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    .line 18
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->minFrequency_:I

    .line 37
    iput v1, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->maxInsertions_:I

    .line 56
    iput-boolean v2, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->pinch_:Z

    .line 75
    iput-boolean v2, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addSilLoops_:Z

    .line 94
    iput-boolean v1, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->closure_:Z

    .line 113
    iput-boolean v2, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addRestartArcs_:Z

    .line 132
    iput-boolean v1, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->allowMissingPaths_:Z

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    new-instance v0, Lcom/google/speech/recognizer/api/Network$NetworkParams;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/Network$NetworkParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 328
    new-instance v0, Lcom/google/speech/recognizer/api/Network$NetworkParams;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/Network$NetworkParams;

    return-object v0
.end method


# virtual methods
.method public clearAddRestartArcs()Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addRestartArcs_:Z

    .line 127
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    .line 128
    return-object p0
.end method

.method public clearAddSilLoops()Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addSilLoops_:Z

    .line 89
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    .line 90
    return-object p0
.end method

.method public clearAllowMissingPaths()Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->allowMissingPaths_:Z

    .line 146
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    .line 147
    return-object p0
.end method

.method public clearClosure()Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->closure_:Z

    .line 108
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    .line 109
    return-object p0
.end method

.method public clearMaxInsertions()Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->maxInsertions_:I

    .line 51
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    .line 52
    return-object p0
.end method

.method public clearMinFrequency()Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->minFrequency_:I

    .line 32
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    .line 33
    return-object p0
.end method

.method public clearPinch()Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->pinch_:Z

    .line 70
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    .line 71
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    if-ne p1, p0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v1

    .line 153
    :cond_1
    instance-of v3, p1, Lcom/google/speech/recognizer/api/Network$NetworkParams;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 154
    check-cast v0, Lcom/google/speech/recognizer/api/Network$NetworkParams;

    .line 155
    .local v0, "other":Lcom/google/speech/recognizer/api/Network$NetworkParams;
    iget-object v3, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    iget-object v4, v0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->minFrequency_:I

    iget v4, v0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->minFrequency_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->maxInsertions_:I

    iget v4, v0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->maxInsertions_:I

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->pinch_:Z

    iget-boolean v4, v0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->pinch_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addSilLoops_:Z

    iget-boolean v4, v0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addSilLoops_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->closure_:Z

    iget-boolean v4, v0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->closure_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addRestartArcs_:Z

    iget-boolean v4, v0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addRestartArcs_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->allowMissingPaths_:Z

    iget-boolean v4, v0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->allowMissingPaths_:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAddRestartArcs()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addRestartArcs_:Z

    return v0
.end method

.method public getAddSilLoops()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addSilLoops_:Z

    return v0
.end method

.method public getAllowMissingPaths()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->allowMissingPaths_:Z

    return v0
.end method

.method public getClosure()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->closure_:Z

    return v0
.end method

.method public getMaxInsertions()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->maxInsertions_:I

    return v0
.end method

.method public getMinFrequency()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->minFrequency_:I

    return v0
.end method

.method public getPinch()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->pinch_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 215
    const/4 v4, 0x0

    .line 216
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    if-eqz v5, :cond_0

    .line 217
    iget-object v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    .local v0, "arr$":[Lcom/google/speech/recognizer/api/Network$PathParams;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 218
    .local v1, "element":Lcom/google/speech/recognizer/api/Network$PathParams;
    const/4 v5, 0x1

    invoke-static {v5, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "arr$":[Lcom/google/speech/recognizer/api/Network$PathParams;
    .end local v1    # "element":Lcom/google/speech/recognizer/api/Network$PathParams;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    iget v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 223
    const/4 v5, 0x3

    iget v6, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->minFrequency_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 226
    :cond_1
    iget v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 227
    const/4 v5, 0x4

    iget v6, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->maxInsertions_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 230
    :cond_2
    iget v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3

    .line 231
    const/4 v5, 0x5

    iget-boolean v6, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->pinch_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 234
    :cond_3
    iget v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_4

    .line 235
    const/4 v5, 0x6

    iget-boolean v6, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addSilLoops_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 238
    :cond_4
    iget v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_5

    .line 239
    const/4 v5, 0x7

    iget-boolean v6, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->closure_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 242
    :cond_5
    iget v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_6

    .line 243
    const/16 v5, 0x8

    iget-boolean v6, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addRestartArcs_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 246
    :cond_6
    iget v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_7

    .line 247
    const/16 v5, 0x9

    iget-boolean v6, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->allowMissingPaths_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 250
    :cond_7
    iput v4, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->cachedSize:I

    .line 251
    return v4
.end method

.method public hasAddRestartArcs()Z
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAddSilLoops()Z
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAllowMissingPaths()Z
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClosure()Z
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaxInsertions()Z
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMinFrequency()Z
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPinch()Z
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

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
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 166
    const/16 v1, 0x11

    .line 167
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 173
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->minFrequency_:I

    add-int v1, v2, v5

    .line 174
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->maxInsertions_:I

    add-int v1, v2, v5

    .line 175
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->pinch_:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    add-int v1, v5, v2

    .line 176
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addSilLoops_:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    add-int v1, v5, v2

    .line 177
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->closure_:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    add-int v1, v5, v2

    .line 178
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addRestartArcs_:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_3
    add-int v1, v5, v2

    .line 179
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->allowMissingPaths_:Z

    if-eqz v5, :cond_7

    :goto_4
    add-int v1, v2, v3

    .line 180
    return v1

    .line 169
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v2, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 170
    mul-int/lit8 v5, v1, 0x1f

    iget-object v2, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_6
    add-int v1, v5, v2

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 170
    :cond_2
    iget-object v2, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/speech/recognizer/api/Network$PathParams;->hashCode()I

    move-result v2

    goto :goto_6

    .end local v0    # "i":I
    :cond_3
    move v2, v4

    .line 175
    goto :goto_0

    :cond_4
    move v2, v4

    .line 176
    goto :goto_1

    :cond_5
    move v2, v4

    .line 177
    goto :goto_2

    :cond_6
    move v2, v4

    .line 178
    goto :goto_3

    :cond_7
    move v3, v4

    .line 179
    goto :goto_4
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/Network$NetworkParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 7
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 259
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 260
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 264
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 265
    :sswitch_0
    return-object p0

    .line 270
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 271
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    if-nez v5, :cond_2

    move v1, v4

    .line 272
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/recognizer/api/Network$PathParams;

    .line 273
    .local v2, "newArray":[Lcom/google/speech/recognizer/api/Network$PathParams;
    iget-object v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    if-eqz v5, :cond_1

    .line 274
    iget-object v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    :cond_1
    iput-object v2, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    .line 277
    :goto_2
    iget-object v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 278
    iget-object v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    new-instance v6, Lcom/google/speech/recognizer/api/Network$PathParams;

    invoke-direct {v6}, Lcom/google/speech/recognizer/api/Network$PathParams;-><init>()V

    aput-object v6, v5, v1

    .line 279
    iget-object v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 280
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 271
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/recognizer/api/Network$PathParams;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    array-length v1, v5

    goto :goto_1

    .line 283
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/recognizer/api/Network$PathParams;
    :cond_3
    iget-object v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    new-instance v6, Lcom/google/speech/recognizer/api/Network$PathParams;

    invoke-direct {v6}, Lcom/google/speech/recognizer/api/Network$PathParams;-><init>()V

    aput-object v6, v5, v1

    .line 284
    iget-object v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 288
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/recognizer/api/Network$PathParams;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->minFrequency_:I

    .line 289
    iget v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    goto :goto_0

    .line 293
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->maxInsertions_:I

    .line 294
    iget v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    goto :goto_0

    .line 298
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->pinch_:Z

    .line 299
    iget v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    goto :goto_0

    .line 303
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addSilLoops_:Z

    .line 304
    iget v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    goto/16 :goto_0

    .line 308
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->closure_:Z

    .line 309
    iget v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    goto/16 :goto_0

    .line 313
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addRestartArcs_:Z

    .line 314
    iget v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    goto/16 :goto_0

    .line 318
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->allowMissingPaths_:Z

    .line 319
    iget v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    goto/16 :goto_0

    .line 260
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x18 -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x38 -> :sswitch_6
        0x40 -> :sswitch_7
        0x48 -> :sswitch_8
    .end sparse-switch
.end method

.method public setAddRestartArcs(Z)Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addRestartArcs_:Z

    .line 119
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    .line 120
    return-object p0
.end method

.method public setAddSilLoops(Z)Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addSilLoops_:Z

    .line 81
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    .line 82
    return-object p0
.end method

.method public setAllowMissingPaths(Z)Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->allowMissingPaths_:Z

    .line 138
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    .line 139
    return-object p0
.end method

.method public setClosure(Z)Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->closure_:Z

    .line 100
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    .line 101
    return-object p0
.end method

.method public setMaxInsertions(I)Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->maxInsertions_:I

    .line 43
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    .line 44
    return-object p0
.end method

.method public setMinFrequency(I)Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->minFrequency_:I

    .line 24
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    .line 25
    return-object p0
.end method

.method public setPinch(Z)Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->pinch_:Z

    .line 62
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    .line 63
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v4, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    if-eqz v4, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    .local v0, "arr$":[Lcom/google/speech/recognizer/api/Network$PathParams;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 187
    .local v1, "element":Lcom/google/speech/recognizer/api/Network$PathParams;
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "arr$":[Lcom/google/speech/recognizer/api/Network$PathParams;
    .end local v1    # "element":Lcom/google/speech/recognizer/api/Network$PathParams;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    iget v4, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 191
    const/4 v4, 0x3

    iget v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->minFrequency_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 193
    :cond_1
    iget v4, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 194
    const/4 v4, 0x4

    iget v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->maxInsertions_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 196
    :cond_2
    iget v4, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    .line 197
    const/4 v4, 0x5

    iget-boolean v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->pinch_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 199
    :cond_3
    iget v4, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_4

    .line 200
    const/4 v4, 0x6

    iget-boolean v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addSilLoops_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 202
    :cond_4
    iget v4, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_5

    .line 203
    const/4 v4, 0x7

    iget-boolean v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->closure_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 205
    :cond_5
    iget v4, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_6

    .line 206
    const/16 v4, 0x8

    iget-boolean v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addRestartArcs_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 208
    :cond_6
    iget v4, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_7

    .line 209
    const/16 v4, 0x9

    iget-boolean v5, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->allowMissingPaths_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 211
    :cond_7
    return-void
.end method
