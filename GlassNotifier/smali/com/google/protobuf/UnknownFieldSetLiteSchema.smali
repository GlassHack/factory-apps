.class Lcom/google/protobuf/UnknownFieldSetLiteSchema;
.super Lcom/google/protobuf/UnknownFieldSchema;
.source "UnknownFieldSetLiteSchema.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/UnknownFieldSchema",
        "<",
        "Lcom/google/protobuf/UnknownFieldSetLite;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/UnknownFieldSchema;-><init>()V

    return-void
.end method


# virtual methods
.method public addFixed32(Lcom/google/protobuf/UnknownFieldSetLite;II)V
    .locals 2
    .param p1, "fields"    # Lcom/google/protobuf/UnknownFieldSetLite;
    .param p2, "number"    # I
    .param p3, "value"    # I

    .prologue
    .line 19
    const/4 v0, 0x5

    .line 20
    invoke-static {p2, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 21
    return-void
.end method

.method public bridge synthetic addFixed32(Ljava/lang/Object;II)V
    .locals 0

    .prologue
    .line 3
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->addFixed32(Lcom/google/protobuf/UnknownFieldSetLite;II)V

    return-void
.end method

.method public addFixed64(Lcom/google/protobuf/UnknownFieldSetLite;IJ)V
    .locals 3
    .param p1, "fields"    # Lcom/google/protobuf/UnknownFieldSetLite;
    .param p2, "number"    # I
    .param p3, "value"    # J

    .prologue
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-static {p2, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 25
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 27
    return-void
.end method

.method public bridge synthetic addFixed64(Ljava/lang/Object;IJ)V
    .locals 1

    .prologue
    .line 3
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->addFixed64(Lcom/google/protobuf/UnknownFieldSetLite;IJ)V

    return-void
.end method

.method public addGroup(Lcom/google/protobuf/UnknownFieldSetLite;ILcom/google/protobuf/UnknownFieldSetLite;)V
    .locals 1
    .param p1, "fields"    # Lcom/google/protobuf/UnknownFieldSetLite;
    .param p2, "number"    # I
    .param p3, "subFieldSet"    # Lcom/google/protobuf/UnknownFieldSetLite;

    .prologue
    .line 37
    const/4 v0, 0x3

    .line 38
    invoke-static {p2, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 37
    invoke-virtual {p1, v0, p3}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 39
    return-void
.end method

.method public bridge synthetic addGroup(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 3
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    check-cast p3, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->addGroup(Lcom/google/protobuf/UnknownFieldSetLite;ILcom/google/protobuf/UnknownFieldSetLite;)V

    return-void
.end method

.method public addLengthDelimited(Lcom/google/protobuf/UnknownFieldSetLite;ILcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "fields"    # Lcom/google/protobuf/UnknownFieldSetLite;
    .param p2, "number"    # I
    .param p3, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 31
    const/4 v0, 0x2

    .line 32
    invoke-static {p2, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 31
    invoke-virtual {p1, v0, p3}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 33
    return-void
.end method

.method public bridge synthetic addLengthDelimited(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V
    .locals 0

    .prologue
    .line 3
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->addLengthDelimited(Lcom/google/protobuf/UnknownFieldSetLite;ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public addVarint(Lcom/google/protobuf/UnknownFieldSetLite;IJ)V
    .locals 3
    .param p1, "fields"    # Lcom/google/protobuf/UnknownFieldSetLite;
    .param p2, "number"    # I
    .param p3, "value"    # J

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 15
    return-void
.end method

.method public bridge synthetic addVarint(Ljava/lang/Object;IJ)V
    .locals 1

    .prologue
    .line 3
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->addVarint(Lcom/google/protobuf/UnknownFieldSetLite;IJ)V

    return-void
.end method

.method public getFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    .end local p1    # "message":Ljava/lang/Object;
    iget-object v0, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    return-object v0
.end method

.method public bridge synthetic getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->getFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    return-object v0
.end method

.method merge(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/UnknownFieldSetLite;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 1
    .param p1, "message"    # Lcom/google/protobuf/UnknownFieldSetLite;
    .param p2, "other"    # Lcom/google/protobuf/UnknownFieldSetLite;

    .prologue
    .line 69
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "message":Lcom/google/protobuf/UnknownFieldSetLite;
    :goto_0
    return-object p1

    .line 71
    .restart local p1    # "message":Lcom/google/protobuf/UnknownFieldSetLite;
    :cond_0
    invoke-static {p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->mutableCopyOf(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/UnknownFieldSetLite;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object p1

    goto :goto_0
.end method

.method bridge synthetic merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    check-cast p2, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->merge(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/UnknownFieldSetLite;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 1

    .prologue
    .line 9
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    return-object v0
.end method

.method public setToMessage(Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSetLite;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "fields"    # Lcom/google/protobuf/UnknownFieldSetLite;

    .prologue
    .line 49
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    .end local p1    # "message":Ljava/lang/Object;
    iput-object p2, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 50
    return-void
.end method

.method public bridge synthetic setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3
    check-cast p2, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->setToMessage(Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSetLite;)V

    return-void
.end method

.method public toImmutable(Lcom/google/protobuf/UnknownFieldSetLite;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 0
    .param p1, "fields"    # Lcom/google/protobuf/UnknownFieldSetLite;

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/google/protobuf/UnknownFieldSetLite;->makeImmutable()V

    .line 44
    return-object p1
.end method

.method public bridge synthetic toImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->toImmutable(Lcom/google/protobuf/UnknownFieldSetLite;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    return-object v0
.end method

.method writeAsMessageSetTo(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/Writer;)V
    .locals 0
    .param p1, "fields"    # Lcom/google/protobuf/UnknownFieldSetLite;
    .param p2, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 64
    invoke-virtual {p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->writeAsMessageSetTo(Lcom/google/protobuf/Writer;)V

    .line 65
    return-void
.end method

.method bridge synthetic writeAsMessageSetTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0

    .prologue
    .line 3
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->writeAsMessageSetTo(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method public writeTo(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/Writer;)V
    .locals 0
    .param p1, "fields"    # Lcom/google/protobuf/UnknownFieldSetLite;
    .param p2, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 59
    invoke-virtual {p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/Writer;)V

    .line 60
    return-void
.end method

.method public bridge synthetic writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0

    .prologue
    .line 3
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->writeTo(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/Writer;)V

    return-void
.end method
