.class public final Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectMenuItemEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent$MenuItemType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;


# instance fields
.field private bitField0_:I

.field private menuItemType_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 61
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->clear()Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;

    .line 62
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->_emptyArray:[Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;

    if-nez v0, :cond_1

    .line 27
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->_emptyArray:[Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;

    sput-object v0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->_emptyArray:[Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->_emptyArray:[Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->bitField0_:I

    .line 66
    iput v0, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->menuItemType_:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->cachedSize:I

    .line 69
    return-object p0
.end method

.method public clearMenuItemType()Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->bitField0_:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->menuItemType_:I

    .line 55
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 113
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 114
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 115
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->menuItemType_:I

    .line 116
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 80
    check-cast v0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;

    .line 81
    .local v0, "other":Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;
    iget v3, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->menuItemType_:I

    iget v4, v0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->menuItemType_:I

    if-ne v3, v4, :cond_0

    .line 85
    iget-object v3, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 86
    :cond_2
    iget-object v3, v0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 88
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getMenuItemType()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->menuItemType_:I

    return v0
.end method

.method public hasMenuItemType()Z
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 93
    const/16 v0, 0x11

    .line 94
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 95
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->menuItemType_:I

    add-int v0, v1, v2

    .line 96
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 97
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 98
    :goto_0
    add-int v0, v2, v1

    .line 99
    return v0

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 127
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 131
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    :sswitch_0
    return-object p0

    .line 137
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 138
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 139
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 150
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 151
    invoke-virtual {p0, p1, v1}, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 146
    :pswitch_0
    iput v2, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->menuItemType_:I

    .line 147
    iget v3, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->bitField0_:I

    goto :goto_0

    .line 127
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;

    move-result-object v0

    return-object v0
.end method

.method public setMenuItemType(I)Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->menuItemType_:I

    .line 46
    iget v0, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->bitField0_:I

    .line 47
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
    iget v0, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/nano/Maps$SelectMenuItemEvent;->menuItemType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 108
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 109
    return-void
.end method
