.class public abstract Lcom/google/protobuf/AbstractMessageLite;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lcom/google/protobuf/MessageLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/AbstractMessageLite$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/AbstractMessageLite",
        "<TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/protobuf/AbstractMessageLite$Builder",
        "<TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/MessageLite;"
    }
.end annotation


# static fields
.field protected static usingExperimentalRuntime:Z


# instance fields
.field protected memoizedHashCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/protobuf/AbstractMessageLite;->usingExperimentalRuntime:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    .local p0, "this":Lcom/google/protobuf/AbstractMessageLite;, "Lcom/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

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
    .line 137
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    invoke-static {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 138
    return-void
.end method

.method protected static checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p0, "byteString"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Byte string is not UTF-8."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    return-void
.end method

.method private getClassInternal()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/protobuf/AbstractMessageLite",
            "<TMessageType;TBuilderType;>;>;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/google/protobuf/AbstractMessageLite;, "Lcom/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 124
    .local p0, "this":Lcom/google/protobuf/AbstractMessageLite;, "Lcom/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3e

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Serializing "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " threw an IOException (should never happen)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static useExperimentalRuntime()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/protobuf/AbstractMessageLite;->usingExperimentalRuntime:Z

    .line 32
    return-void
.end method


# virtual methods
.method protected mergeFromInternal(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/google/protobuf/AbstractMessageLite;, "Lcom/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v1

    .line 100
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessageLite;->getClassInternal()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v1

    .line 101
    invoke-static {p1}, Lcom/google/protobuf/CodedInputStreamReader;->forCodedInput(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/CodedInputStreamReader;

    move-result-object v2

    invoke-interface {v1, p0, v2, p2}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 104
    .end local v0    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catch_1
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public mutableCopy()Lcom/google/protobuf/MutableMessageLite;
    .locals 2

    .prologue
    .line 85
    .local p0, "this":Lcom/google/protobuf/AbstractMessageLite;, "Lcom/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mutableCopy() is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method newUninitializedMessageException()Lcom/google/protobuf/UninitializedMessageException;
    .locals 1

    .prologue
    .line 120
    .local p0, "this":Lcom/google/protobuf/AbstractMessageLite;, "Lcom/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    new-instance v0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Lcom/google/protobuf/UninitializedMessageException;-><init>(Lcom/google/protobuf/MessageLite;)V

    return-object v0
.end method

.method public toByteArray()[B
    .locals 5

    .prologue
    .line 50
    .local p0, "this":Lcom/google/protobuf/AbstractMessageLite;, "Lcom/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v3

    new-array v2, v3, [B

    .line 51
    .local v2, "result":[B
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->newInstance([B)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 52
    .local v1, "output":Lcom/google/protobuf/CodedOutputStream;
    invoke-virtual {p0, v1}, Lcom/google/protobuf/AbstractMessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 53
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->checkNoSpaceLeft()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-object v2

    .line 55
    .end local v1    # "output":Lcom/google/protobuf/CodedOutputStream;
    .end local v2    # "result":[B
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "byte array"

    invoke-direct {p0, v4}, Lcom/google/protobuf/AbstractMessageLite;->getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public toByteString()Lcom/google/protobuf/ByteString;
    .locals 4

    .prologue
    .line 38
    .line 39
    .local p0, "this":Lcom/google/protobuf/AbstractMessageLite;, "Lcom/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->newCodedBuilder(I)Lcom/google/protobuf/ByteString$CodedBuilder;

    move-result-object v1

    .line 40
    .local v1, "out":Lcom/google/protobuf/ByteString$CodedBuilder;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/google/protobuf/CodedOutputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/AbstractMessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 41
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString$CodedBuilder;->build()Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 42
    .end local v1    # "out":Lcom/google/protobuf/ByteString$CodedBuilder;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ByteString"

    invoke-direct {p0, v3}, Lcom/google/protobuf/AbstractMessageLite;->getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

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
    .line 72
    .local p0, "this":Lcom/google/protobuf/AbstractMessageLite;, "Lcom/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v2

    .line 74
    .local v2, "serialized":I
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 73
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v0

    .line 76
    .local v0, "bufferSize":I
    invoke-static {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 77
    .local v1, "codedOutput":Lcom/google/protobuf/CodedOutputStream;
    invoke-virtual {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 78
    invoke-virtual {p0, v1}, Lcom/google/protobuf/AbstractMessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 79
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    .line 80
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
    .line 62
    .line 63
    .local p0, "this":Lcom/google/protobuf/AbstractMessageLite;, "Lcom/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v0

    .line 65
    .local v0, "bufferSize":I
    invoke-static {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 66
    .local v1, "codedOutput":Lcom/google/protobuf/CodedOutputStream;
    invoke-virtual {p0, v1}, Lcom/google/protobuf/AbstractMessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 67
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    .line 68
    return-void
.end method

.method protected final writeToInternal(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;

    .prologue
    .line 90
    .local p0, "this":Lcom/google/protobuf/AbstractMessageLite;, "Lcom/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    .line 91
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessageLite;->getClassInternal()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v0

    .line 92
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStreamWriter;->forCodedOutput(Lcom/google/protobuf/CodedOutputStream;)Lcom/google/protobuf/CodedOutputStreamWriter;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/google/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 93
    return-void
.end method
