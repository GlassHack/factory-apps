.class public abstract Lcom/google/protobuf/AbstractMutableMessageLite;
.super Ljava/lang/Object;
.source "AbstractMutableMessageLite.java"

# interfaces
.implements Lcom/google/protobuf/MutableMessageLite;


# instance fields
.field protected cachedSize:I

.field private isMutable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/AbstractMutableMessageLite;->isMutable:Z

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/AbstractMutableMessageLite;->cachedSize:I

    return-void
.end method

.method protected static addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/util/Collection",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    invoke-static {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 353
    return-void
.end method

.method protected static internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MutableMessageLite;",
            ">(TT;)",
            "Lcom/google/protobuf/Parser",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "defaultInstance":Lcom/google/protobuf/MutableMessageLite;, "TT;"
    new-instance v0, Lcom/google/protobuf/AbstractMutableMessageLite$1;

    invoke-direct {v0, p0}, Lcom/google/protobuf/AbstractMutableMessageLite$1;-><init>(Lcom/google/protobuf/MutableMessageLite;)V

    return-object v0
.end method

.method protected static newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;
    .locals 1
    .param p0, "message"    # Lcom/google/protobuf/MessageLite;

    .prologue
    .line 324
    new-instance v0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Lcom/google/protobuf/UninitializedMessageException;-><init>(Lcom/google/protobuf/MessageLite;)V

    return-object v0
.end method


# virtual methods
.method protected assertMutable()V
    .locals 2

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/protobuf/AbstractMutableMessageLite;->isMutable:Z

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Try to modify an immutable message."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    return-void
.end method

.method public clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "clone() should be implemented by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clone()Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public final getCachedSize()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/google/protobuf/AbstractMutableMessageLite;->cachedSize:I

    return v0
.end method

.method protected isProto1Group()Z
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method protected makeImmutable()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/AbstractMutableMessageLite;->isMutable:Z

    .line 28
    return-void
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;

    .prologue
    .line 210
    .line 211
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 210
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 6
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .prologue
    const/4 v4, 0x0

    .line 217
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 218
    .local v1, "firstByte":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 226
    .end local v1    # "firstByte":I
    :goto_0
    return v4

    .line 221
    .restart local v1    # "firstByte":I
    :cond_0
    invoke-static {v1, p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v3

    .line 222
    .local v3, "size":I
    new-instance v2, Lcom/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v2, p1, v3}, Lcom/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 224
    .local v2, "limitedInput":Ljava/io/InputStream;
    invoke-virtual {p0, v2, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 225
    .end local v1    # "firstByte":I
    .end local v2    # "limitedInput":Ljava/io/InputStream;
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/ByteString;)Z
    .locals 2
    .param p1, "data"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 149
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->newCodedInput()Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 150
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    invoke-virtual {p0, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getLastTag()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 2
    .param p1, "data"    # Lcom/google/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .prologue
    .line 155
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->newCodedInput()Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 156
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getLastTag()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;)Z
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;

    .prologue
    .line 135
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Ljava/io/InputStream;)Z
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;

    .prologue
    .line 197
    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 198
    .local v0, "codedInput":Lcom/google/protobuf/CodedInputStream;
    invoke-virtual {p0, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getLastTag()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .prologue
    .line 203
    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 204
    .local v0, "codedInput":Lcom/google/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getLastTag()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 204
    :goto_0
    return v1

    .line 205
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Ljava/nio/ByteBuffer;)Z
    .locals 2
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 185
    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 186
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    invoke-virtual {p0, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getLastTag()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 2
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .prologue
    .line 191
    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 192
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getLastTag()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mergeFrom([B)Z
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 161
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom([BII)Z

    move-result v0

    return v0
.end method

.method public mergeFrom([BII)Z
    .locals 2
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 166
    .line 167
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/CodedInputStream;->newInstance([BII)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 168
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    invoke-virtual {p0, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getLastTag()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 2
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .prologue
    .line 178
    .line 179
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/CodedInputStream;->newInstance([BII)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 180
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p4}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getLastTag()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 2
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .prologue
    .line 173
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .prologue
    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public mutableCopy()Lcom/google/protobuf/MutableMessageLite;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mutableCopy() is not supported in mutable messages. Use clone() if you need to make a copy of the mutable message."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "newBuilderForType() is not supported in mutable messages."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method newUninitializedMessageException()Lcom/google/protobuf/UninitializedMessageException;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Lcom/google/protobuf/UninitializedMessageException;-><init>(Lcom/google/protobuf/MessageLite;)V

    return-object v0
.end method

.method public parseDelimitedFrom(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 311
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 318
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public parseFrom(Lcom/google/protobuf/ByteString;)Z
    .locals 1
    .param p1, "data"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 246
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    return v0
.end method

.method public parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 1
    .param p1, "data"    # Lcom/google/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public parseFrom(Lcom/google/protobuf/CodedInputStream;)Z
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 234
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Z

    move-result v0

    return v0
.end method

.method public parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public parseFrom(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 298
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 305
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public parseFrom(Ljava/nio/ByteBuffer;)Z
    .locals 1
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 285
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method public parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 1
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public parseFrom([B)Z
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 259
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom([BII)Z

    move-result v0

    return v0
.end method

.method public parseFrom([BII)Z
    .locals 1
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 265
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom([BII)Z

    move-result v0

    return v0
.end method

.method public parseFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 1
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 279
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 2
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->clear()Lcom/google/protobuf/MutableMessageLite;

    .line 272
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/protobuf/AbstractMutableMessageLite;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "toBuilder() is not supported in mutable messages."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toByteArray()[B
    .locals 5

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->getSerializedSize()I

    move-result v3

    new-array v2, v3, [B

    .line 80
    .local v2, "result":[B
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->newInstance([B)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 81
    .local v1, "output":Lcom/google/protobuf/CodedOutputStream;
    invoke-virtual {p0, v1}, Lcom/google/protobuf/AbstractMutableMessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 82
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->checkNoSpaceLeft()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-object v2

    .line 84
    .end local v1    # "output":Lcom/google/protobuf/CodedOutputStream;
    .end local v2    # "result":[B
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public toByteString()Lcom/google/protobuf/ByteString;
    .locals 4

    .prologue
    .line 65
    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->getSerializedSize()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->newCodedBuilder(I)Lcom/google/protobuf/ByteString$CodedBuilder;

    move-result-object v1

    .line 67
    .local v1, "out":Lcom/google/protobuf/ByteString$CodedBuilder;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/google/protobuf/CodedOutputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 68
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString$CodedBuilder;->build()Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 69
    .end local v1    # "out":Lcom/google/protobuf/ByteString$CodedBuilder;
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Serializing to a ByteString threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public writeDelimitedTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->getSerializedSize()I

    move-result v2

    .line 105
    .local v2, "serialized":I
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 104
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v0

    .line 107
    .local v0, "bufferSize":I
    invoke-static {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 108
    .local v1, "codedOutput":Lcom/google/protobuf/CodedOutputStream;
    invoke-virtual {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 109
    invoke-virtual {p0, v1}, Lcom/google/protobuf/AbstractMutableMessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 110
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    .line 111
    return-void
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 0
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->getSerializedSize()I

    .line 130
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMutableMessageLite;->writeToWithCachedSizes(Lcom/google/protobuf/CodedOutputStream;)V

    .line 131
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMutableMessageLite;->getSerializedSize()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v0

    .line 96
    .local v0, "bufferSize":I
    invoke-static {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 97
    .local v1, "codedOutput":Lcom/google/protobuf/CodedOutputStream;
    invoke-virtual {p0, v1}, Lcom/google/protobuf/AbstractMutableMessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 98
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    .line 99
    return-void
.end method
