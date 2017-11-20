.class public final Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "LocationDescriptorProtoNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProtoNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationDescriptorSet"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;


# instance fields
.field public descriptors:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2114
    const/4 v0, 0x0

    new-array v0, v0, [Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;

    sput-object v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->EMPTY_ARRAY:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2115
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2118
    sget-object v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->EMPTY_ARRAY:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    iput-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    .line 2115
    return-void
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2206
    new-instance v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2200
    new-instance v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2122
    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    .line 2125
    :goto_0
    return v1

    .line 2123
    :cond_0
    instance-of v1, p1, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 2124
    check-cast v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;

    .line 2125
    .local v0, "other":Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;
    iget-object v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    iget-object v2, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 2150
    const/4 v4, 0x0

    .line 2151
    .local v4, "size":I
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    if-eqz v5, :cond_0

    .line 2152
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    .local v0, "arr$":[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 2153
    .local v1, "element":Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    const/4 v5, 0x1

    invoke-static {v5, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2152
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2157
    .end local v0    # "arr$":[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .end local v1    # "element":Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    iput v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->cachedSize:I

    .line 2158
    return v4
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 2129
    const/16 v1, 0x11

    .line 2130
    .local v1, "result":I
    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 2136
    :cond_0
    return v1

    .line 2132
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 2133
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    add-int v1, v3, v2

    .line 2132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2133
    :cond_2
    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->hashCode()I

    move-result v2

    goto :goto_1
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
    .line 2111
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;
    .locals 7
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2166
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2167
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2171
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2172
    :sswitch_0
    return-object p0

    .line 2177
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2178
    .local v0, "arrayLength":I
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    if-nez v5, :cond_2

    move v1, v4

    .line 2179
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    .line 2180
    .local v2, "newArray":[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    if-eqz v5, :cond_1

    .line 2181
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2183
    :cond_1
    iput-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    .line 2184
    :goto_2
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 2185
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    new-instance v6, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    invoke-direct {v6}, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;-><init>()V

    aput-object v6, v5, v1

    .line 2186
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2187
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2184
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2178
    .end local v1    # "i":I
    .end local v2    # "newArray":[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    :cond_2
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    array-length v1, v5

    goto :goto_1

    .line 2190
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    :cond_3
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    new-instance v6, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    invoke-direct {v6}, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;-><init>()V

    aput-object v6, v5, v1

    .line 2191
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2167
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2141
    iget-object v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    if-eqz v4, :cond_0

    .line 2142
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptorSet;->descriptors:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    .local v0, "arr$":[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 2143
    .local v1, "element":Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2146
    .end local v0    # "arr$":[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .end local v1    # "element":Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-void
.end method
