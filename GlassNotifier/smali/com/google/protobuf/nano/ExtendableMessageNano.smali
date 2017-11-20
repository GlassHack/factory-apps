.class public abstract Lcom/google/protobuf/nano/ExtendableMessageNano;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ExtendableMessageNano.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<TM;>;>",
        "Lcom/google/protobuf/nano/MessageNano;"
    }
.end annotation


# instance fields
.field protected unknownFieldData:Lcom/google/protobuf/nano/FieldArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    .local p0, "this":Lcom/google/protobuf/nano/ExtendableMessageNano;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    return-void
.end method

.method private storeUnknownFieldData(ILcom/google/protobuf/nano/UnknownFieldData;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "unknownField"    # Lcom/google/protobuf/nano/UnknownFieldData;

    .prologue
    .line 173
    .local p0, "this":Lcom/google/protobuf/nano/ExtendableMessageNano;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    const/4 v0, 0x0

    .line 174
    .local v0, "field":Lcom/google/protobuf/nano/FieldData;
    iget-object v1, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-nez v1, :cond_1

    .line 175
    new-instance v1, Lcom/google/protobuf/nano/FieldArray;

    invoke-direct {v1}, Lcom/google/protobuf/nano/FieldArray;-><init>()V

    iput-object v1, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 179
    :goto_0
    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/google/protobuf/nano/FieldData;

    .end local v0    # "field":Lcom/google/protobuf/nano/FieldData;
    invoke-direct {v0}, Lcom/google/protobuf/nano/FieldData;-><init>()V

    .line 181
    .restart local v0    # "field":Lcom/google/protobuf/nano/FieldData;
    iget-object v1, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, p1, v0}, Lcom/google/protobuf/nano/FieldArray;->put(ILcom/google/protobuf/nano/FieldData;)V

    .line 183
    :cond_0
    invoke-virtual {v0, p2}, Lcom/google/protobuf/nano/FieldData;->addUnknownField(Lcom/google/protobuf/nano/UnknownFieldData;)V

    .line 184
    return-void

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/nano/FieldArray;->get(I)Lcom/google/protobuf/nano/FieldData;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lcom/google/protobuf/nano/ExtendableMessageNano;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->clone()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/ExtendableMessageNano;

    .line 231
    .local v0, "cloned":Lcom/google/protobuf/nano/ExtendableMessageNano;, "TM;"
    invoke-static {p0, v0}, Lcom/google/protobuf/nano/InternalNano;->cloneUnknownFieldData(Lcom/google/protobuf/nano/ExtendableMessageNano;Lcom/google/protobuf/nano/ExtendableMessageNano;)V

    .line 232
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/google/protobuf/nano/ExtendableMessageNano;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/google/protobuf/nano/ExtendableMessageNano;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 49
    .local p0, "this":Lcom/google/protobuf/nano/ExtendableMessageNano;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    const/4 v2, 0x0

    .line 50
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    .line 51
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 52
    iget-object v3, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3, v1}, Lcom/google/protobuf/nano/FieldArray;->dataAt(I)Lcom/google/protobuf/nano/FieldData;

    move-result-object v0

    .line 53
    .local v0, "field":Lcom/google/protobuf/nano/FieldData;
    invoke-virtual {v0}, Lcom/google/protobuf/nano/FieldData;->computeSerializedSize()I

    move-result v3

    add-int/2addr v2, v3

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "field":Lcom/google/protobuf/nano/FieldData;
    .end local v1    # "i":I
    :cond_0
    return v2
.end method

.method protected computeSerializedSizeAsMessageSet()I
    .locals 4

    .prologue
    .line 60
    .local p0, "this":Lcom/google/protobuf/nano/ExtendableMessageNano;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    const/4 v2, 0x0

    .line 61
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    .line 62
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 63
    iget-object v3, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3, v1}, Lcom/google/protobuf/nano/FieldArray;->dataAt(I)Lcom/google/protobuf/nano/FieldData;

    move-result-object v0

    .line 64
    .local v0, "field":Lcom/google/protobuf/nano/FieldData;
    invoke-virtual {v0}, Lcom/google/protobuf/nano/FieldData;->computeSerializedSizeAsMessageSet()I

    move-result v3

    add-int/2addr v2, v3

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "field":Lcom/google/protobuf/nano/FieldData;
    .end local v1    # "i":I
    :cond_0
    return v2
.end method

.method public final getExtension(Lcom/google/protobuf/nano/Extension;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/nano/Extension",
            "<TM;TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/protobuf/nano/ExtendableMessageNano;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    .local p1, "extension":Lcom/google/protobuf/nano/Extension;, "Lcom/google/protobuf/nano/Extension<TM;TT;>;"
    const/4 v1, 0x0

    .line 107
    iget-object v2, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-nez v2, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-object v1

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget v3, p1, Lcom/google/protobuf/nano/Extension;->tag:I

    invoke-static {v3}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/protobuf/nano/FieldArray;->get(I)Lcom/google/protobuf/nano/FieldData;

    move-result-object v0

    .line 111
    .local v0, "field":Lcom/google/protobuf/nano/FieldData;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/nano/FieldData;->getValue(Lcom/google/protobuf/nano/Extension;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final getUnknownFieldArray()Lcom/google/protobuf/nano/FieldArray;
    .locals 1

    .prologue
    .line 239
    .local p0, "this":Lcom/google/protobuf/nano/ExtendableMessageNano;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    iget-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    return-object v0
.end method

.method public final hasExtension(Lcom/google/protobuf/nano/Extension;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/nano/Extension",
            "<TM;*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/protobuf/nano/ExtendableMessageNano;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    .local p1, "extension":Lcom/google/protobuf/nano/Extension;, "Lcom/google/protobuf/nano/Extension<TM;*>;"
    const/4 v1, 0x0

    .line 96
    iget-object v2, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-nez v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v1

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget v3, p1, Lcom/google/protobuf/nano/Extension;->tag:I

    invoke-static {v3}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/protobuf/nano/FieldArray;->get(I)Lcom/google/protobuf/nano/FieldData;

    move-result-object v0

    .line 100
    .local v0, "field":Lcom/google/protobuf/nano/FieldData;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final setExtension(Lcom/google/protobuf/nano/Extension;Ljava/lang/Object;)Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/nano/Extension",
            "<TM;TT;>;TT;)TM;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/google/protobuf/nano/ExtendableMessageNano;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    .local p1, "extension":Lcom/google/protobuf/nano/Extension;, "Lcom/google/protobuf/nano/Extension<TM;TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget v3, p1, Lcom/google/protobuf/nano/Extension;->tag:I

    invoke-static {v3}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v1

    .line 119
    .local v1, "fieldNumber":I
    if-nez p2, :cond_1

    .line 120
    iget-object v3, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    .line 121
    iget-object v3, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3, v1}, Lcom/google/protobuf/nano/FieldArray;->remove(I)V

    .line 122
    iget-object v3, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 141
    :cond_0
    :goto_0
    move-object v2, p0

    .line 142
    .local v2, "typedThis":Lcom/google/protobuf/nano/ExtendableMessageNano;, "TM;"
    return-object v2

    .line 127
    .end local v2    # "typedThis":Lcom/google/protobuf/nano/ExtendableMessageNano;, "TM;"
    :cond_1
    const/4 v0, 0x0

    .line 128
    .local v0, "field":Lcom/google/protobuf/nano/FieldData;
    iget-object v3, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-nez v3, :cond_2

    .line 129
    new-instance v3, Lcom/google/protobuf/nano/FieldArray;

    invoke-direct {v3}, Lcom/google/protobuf/nano/FieldArray;-><init>()V

    iput-object v3, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 133
    :goto_1
    if-nez v0, :cond_3

    .line 134
    iget-object v3, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    new-instance v4, Lcom/google/protobuf/nano/FieldData;

    invoke-direct {v4, p1, p2}, Lcom/google/protobuf/nano/FieldData;-><init>(Lcom/google/protobuf/nano/Extension;Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v4}, Lcom/google/protobuf/nano/FieldArray;->put(ILcom/google/protobuf/nano/FieldData;)V

    goto :goto_0

    .line 131
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3, v1}, Lcom/google/protobuf/nano/FieldArray;->get(I)Lcom/google/protobuf/nano/FieldData;

    move-result-object v0

    goto :goto_1

    .line 136
    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/nano/FieldData;->setValue(Lcom/google/protobuf/nano/Extension;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z
    .locals 5
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lcom/google/protobuf/nano/ExtendableMessageNano;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v3

    .line 162
    .local v3, "startPos":I
    invoke-virtual {p1, p2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 163
    const/4 v4, 0x0

    .line 169
    :goto_0
    return v4

    .line 165
    :cond_0
    invoke-static {p2}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v2

    .line 166
    .local v2, "fieldNumber":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 167
    .local v1, "endPos":I
    sub-int v4, v1, v3

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getData(II)[B

    move-result-object v0

    .line 168
    .local v0, "bytes":[B
    new-instance v4, Lcom/google/protobuf/nano/UnknownFieldData;

    invoke-direct {v4, p2, v0}, Lcom/google/protobuf/nano/UnknownFieldData;-><init>(I[B)V

    invoke-direct {p0, v2, v4}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownFieldData(ILcom/google/protobuf/nano/UnknownFieldData;)V

    .line 169
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected final storeUnknownFieldAsMessageSet(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .param p2, "maybeMessageSetItemTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lcom/google/protobuf/nano/ExtendableMessageNano;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    sget v5, Lcom/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_ITEM_TAG:I

    if-eq p2, v5, :cond_0

    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    .line 225
    :goto_0
    return v5

    .line 193
    :cond_0
    const/4 v4, 0x0

    .line 194
    .local v4, "typeId":I
    const/4 v1, 0x0

    .line 199
    .local v1, "rawBytes":[B
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 200
    .local v3, "tag":I
    if-nez v3, :cond_3

    .line 218
    :goto_2
    sget v5, Lcom/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_ITEM_END_TAG:I

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    .line 221
    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 222
    new-instance v5, Lcom/google/protobuf/nano/UnknownFieldData;

    invoke-direct {v5, v4, v1}, Lcom/google/protobuf/nano/UnknownFieldData;-><init>(I[B)V

    invoke-direct {p0, v4, v5}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownFieldData(ILcom/google/protobuf/nano/UnknownFieldData;)V

    .line 225
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 204
    :cond_3
    sget v5, Lcom/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_TYPE_ID_TAG:I

    if-ne v3, v5, :cond_4

    .line 205
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v4

    goto :goto_1

    .line 206
    :cond_4
    sget v5, Lcom/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_MESSAGE_TAG:I

    if-ne v3, v5, :cond_5

    .line 208
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 209
    .local v2, "startPos":I
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    .line 210
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 211
    .local v0, "endPos":I
    sub-int v5, v0, v2

    invoke-virtual {p1, v2, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getData(II)[B

    move-result-object v1

    .line 212
    goto :goto_1

    .line 213
    .end local v0    # "endPos":I
    .end local v2    # "startPos":I
    :cond_5
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2
.end method

.method protected writeAsMessageSetTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/google/protobuf/nano/ExtendableMessageNano;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    iget-object v2, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-nez v2, :cond_1

    .line 89
    :cond_0
    return-void

    .line 85
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/nano/FieldArray;->dataAt(I)Lcom/google/protobuf/nano/FieldData;

    move-result-object v0

    .line 87
    .local v0, "field":Lcom/google/protobuf/nano/FieldData;
    invoke-virtual {v0, p1}, Lcom/google/protobuf/nano/FieldData;->writeAsMessageSetTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/google/protobuf/nano/ExtendableMessageNano;, "Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;"
    iget-object v2, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-nez v2, :cond_1

    .line 79
    :cond_0
    return-void

    .line 75
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/nano/FieldArray;->dataAt(I)Lcom/google/protobuf/nano/FieldData;

    move-result-object v0

    .line 77
    .local v0, "field":Lcom/google/protobuf/nano/FieldData;
    invoke-virtual {v0, p1}, Lcom/google/protobuf/nano/FieldData;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
