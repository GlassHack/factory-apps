.class public final Lcom/google/common/logging/nano/Gallery;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Gallery$EventSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Gallery;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Gallery;


# instance fields
.field private oneof_event_:I

.field public selectMenu:Lcom/google/common/logging/nano/SelectMenuItemEvent;

.field public showMenu:Lcom/google/common/logging/nano/ShowMenuEvent;

.field public useGallery:Lcom/google/common/logging/nano/UseGalleryEvent;

.field public viewItem:Lcom/google/common/logging/nano/ViewItemEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Gallery;->oneof_event_:I

    .line 46
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Gallery;->clear()Lcom/google/common/logging/nano/Gallery;

    .line 47
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Gallery;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/google/common/logging/nano/Gallery;->_emptyArray:[Lcom/google/common/logging/nano/Gallery;

    if-nez v0, :cond_1

    .line 21
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Gallery;->_emptyArray:[Lcom/google/common/logging/nano/Gallery;

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Gallery;

    sput-object v0, Lcom/google/common/logging/nano/Gallery;->_emptyArray:[Lcom/google/common/logging/nano/Gallery;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Gallery;->_emptyArray:[Lcom/google/common/logging/nano/Gallery;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Gallery;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Lcom/google/common/logging/nano/Gallery;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Gallery;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Gallery;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Gallery;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Gallery;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Lcom/google/common/logging/nano/Gallery;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Gallery;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Gallery;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Gallery;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/google/common/logging/nano/Gallery;->useGallery:Lcom/google/common/logging/nano/UseGalleryEvent;

    .line 51
    iput-object v0, p0, Lcom/google/common/logging/nano/Gallery;->viewItem:Lcom/google/common/logging/nano/ViewItemEvent;

    .line 52
    iput-object v0, p0, Lcom/google/common/logging/nano/Gallery;->showMenu:Lcom/google/common/logging/nano/ShowMenuEvent;

    .line 53
    iput-object v0, p0, Lcom/google/common/logging/nano/Gallery;->selectMenu:Lcom/google/common/logging/nano/SelectMenuItemEvent;

    .line 54
    iput-object v0, p0, Lcom/google/common/logging/nano/Gallery;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Gallery;->cachedSize:I

    .line 56
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 148
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 149
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->useGallery:Lcom/google/common/logging/nano/UseGalleryEvent;

    if-eqz v1, :cond_0

    .line 150
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Gallery;->useGallery:Lcom/google/common/logging/nano/UseGalleryEvent;

    .line 151
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->viewItem:Lcom/google/common/logging/nano/ViewItemEvent;

    if-eqz v1, :cond_1

    .line 154
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Gallery;->viewItem:Lcom/google/common/logging/nano/ViewItemEvent;

    .line 155
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->showMenu:Lcom/google/common/logging/nano/ShowMenuEvent;

    if-eqz v1, :cond_2

    .line 158
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Gallery;->showMenu:Lcom/google/common/logging/nano/ShowMenuEvent;

    .line 159
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 161
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->selectMenu:Lcom/google/common/logging/nano/SelectMenuItemEvent;

    if-eqz v1, :cond_3

    .line 162
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Gallery;->selectMenu:Lcom/google/common/logging/nano/SelectMenuItemEvent;

    .line 163
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    :cond_3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 64
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/Gallery;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 67
    check-cast v0, Lcom/google/common/logging/nano/Gallery;

    .line 68
    .local v0, "other":Lcom/google/common/logging/nano/Gallery;
    iget-object v3, p0, Lcom/google/common/logging/nano/Gallery;->useGallery:Lcom/google/common/logging/nano/UseGalleryEvent;

    if-nez v3, :cond_8

    .line 69
    iget-object v3, v0, Lcom/google/common/logging/nano/Gallery;->useGallery:Lcom/google/common/logging/nano/UseGalleryEvent;

    if-nez v3, :cond_0

    .line 77
    :cond_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Gallery;->viewItem:Lcom/google/common/logging/nano/ViewItemEvent;

    if-nez v3, :cond_9

    .line 78
    iget-object v3, v0, Lcom/google/common/logging/nano/Gallery;->viewItem:Lcom/google/common/logging/nano/ViewItemEvent;

    if-nez v3, :cond_0

    .line 86
    :cond_3
    iget-object v3, p0, Lcom/google/common/logging/nano/Gallery;->showMenu:Lcom/google/common/logging/nano/ShowMenuEvent;

    if-nez v3, :cond_a

    .line 87
    iget-object v3, v0, Lcom/google/common/logging/nano/Gallery;->showMenu:Lcom/google/common/logging/nano/ShowMenuEvent;

    if-nez v3, :cond_0

    .line 95
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/nano/Gallery;->selectMenu:Lcom/google/common/logging/nano/SelectMenuItemEvent;

    if-nez v3, :cond_b

    .line 96
    iget-object v3, v0, Lcom/google/common/logging/nano/Gallery;->selectMenu:Lcom/google/common/logging/nano/SelectMenuItemEvent;

    if-nez v3, :cond_0

    .line 104
    :cond_5
    iget-object v3, p0, Lcom/google/common/logging/nano/Gallery;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/common/logging/nano/Gallery;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 105
    :cond_6
    iget-object v3, v0, Lcom/google/common/logging/nano/Gallery;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/google/common/logging/nano/Gallery;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_7
    move v1, v2

    goto :goto_0

    .line 73
    :cond_8
    iget-object v3, p0, Lcom/google/common/logging/nano/Gallery;->useGallery:Lcom/google/common/logging/nano/UseGalleryEvent;

    iget-object v4, v0, Lcom/google/common/logging/nano/Gallery;->useGallery:Lcom/google/common/logging/nano/UseGalleryEvent;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/UseGalleryEvent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 82
    :cond_9
    iget-object v3, p0, Lcom/google/common/logging/nano/Gallery;->viewItem:Lcom/google/common/logging/nano/ViewItemEvent;

    iget-object v4, v0, Lcom/google/common/logging/nano/Gallery;->viewItem:Lcom/google/common/logging/nano/ViewItemEvent;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/ViewItemEvent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 91
    :cond_a
    iget-object v3, p0, Lcom/google/common/logging/nano/Gallery;->showMenu:Lcom/google/common/logging/nano/ShowMenuEvent;

    iget-object v4, v0, Lcom/google/common/logging/nano/Gallery;->showMenu:Lcom/google/common/logging/nano/ShowMenuEvent;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/ShowMenuEvent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 100
    :cond_b
    iget-object v3, p0, Lcom/google/common/logging/nano/Gallery;->selectMenu:Lcom/google/common/logging/nano/SelectMenuItemEvent;

    iget-object v4, v0, Lcom/google/common/logging/nano/Gallery;->selectMenu:Lcom/google/common/logging/nano/SelectMenuItemEvent;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/SelectMenuItemEvent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 107
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/Gallery;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 112
    const/16 v0, 0x11

    .line 113
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 114
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->useGallery:Lcom/google/common/logging/nano/UseGalleryEvent;

    if-nez v1, :cond_1

    move v1, v2

    .line 115
    :goto_0
    add-int v0, v3, v1

    .line 116
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->viewItem:Lcom/google/common/logging/nano/ViewItemEvent;

    if-nez v1, :cond_2

    move v1, v2

    .line 117
    :goto_1
    add-int v0, v3, v1

    .line 118
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->showMenu:Lcom/google/common/logging/nano/ShowMenuEvent;

    if-nez v1, :cond_3

    move v1, v2

    .line 119
    :goto_2
    add-int v0, v3, v1

    .line 120
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->selectMenu:Lcom/google/common/logging/nano/SelectMenuItemEvent;

    if-nez v1, :cond_4

    move v1, v2

    .line 121
    :goto_3
    add-int v0, v3, v1

    .line 122
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/nano/Gallery;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/Gallery;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 123
    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 124
    :cond_0
    :goto_4
    add-int v0, v1, v2

    .line 125
    return v0

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->useGallery:Lcom/google/common/logging/nano/UseGalleryEvent;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/UseGalleryEvent;->hashCode()I

    move-result v1

    goto :goto_0

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->viewItem:Lcom/google/common/logging/nano/ViewItemEvent;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/ViewItemEvent;->hashCode()I

    move-result v1

    goto :goto_1

    .line 119
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->showMenu:Lcom/google/common/logging/nano/ShowMenuEvent;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/ShowMenuEvent;->hashCode()I

    move-result v1

    goto :goto_2

    .line 121
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->selectMenu:Lcom/google/common/logging/nano/SelectMenuItemEvent;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/SelectMenuItemEvent;->hashCode()I

    move-result v1

    goto :goto_3

    .line 124
    :cond_5
    iget-object v2, p0, Lcom/google/common/logging/nano/Gallery;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v2

    goto :goto_4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Gallery;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 174
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 178
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    :sswitch_0
    return-object p0

    .line 184
    :sswitch_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->useGallery:Lcom/google/common/logging/nano/UseGalleryEvent;

    if-nez v1, :cond_1

    .line 185
    new-instance v1, Lcom/google/common/logging/nano/UseGalleryEvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/UseGalleryEvent;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/nano/Gallery;->useGallery:Lcom/google/common/logging/nano/UseGalleryEvent;

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->useGallery:Lcom/google/common/logging/nano/UseGalleryEvent;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 191
    :sswitch_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->viewItem:Lcom/google/common/logging/nano/ViewItemEvent;

    if-nez v1, :cond_2

    .line 192
    new-instance v1, Lcom/google/common/logging/nano/ViewItemEvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/ViewItemEvent;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/nano/Gallery;->viewItem:Lcom/google/common/logging/nano/ViewItemEvent;

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->viewItem:Lcom/google/common/logging/nano/ViewItemEvent;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 198
    :sswitch_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->showMenu:Lcom/google/common/logging/nano/ShowMenuEvent;

    if-nez v1, :cond_3

    .line 199
    new-instance v1, Lcom/google/common/logging/nano/ShowMenuEvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/ShowMenuEvent;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/nano/Gallery;->showMenu:Lcom/google/common/logging/nano/ShowMenuEvent;

    .line 201
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->showMenu:Lcom/google/common/logging/nano/ShowMenuEvent;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 205
    :sswitch_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->selectMenu:Lcom/google/common/logging/nano/SelectMenuItemEvent;

    if-nez v1, :cond_4

    .line 206
    new-instance v1, Lcom/google/common/logging/nano/SelectMenuItemEvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/SelectMenuItemEvent;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/nano/Gallery;->selectMenu:Lcom/google/common/logging/nano/SelectMenuItemEvent;

    .line 208
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->selectMenu:Lcom/google/common/logging/nano/SelectMenuItemEvent;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 174
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Gallery;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Gallery;

    move-result-object v0

    return-object v0
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
    .line 131
    iget-object v0, p0, Lcom/google/common/logging/nano/Gallery;->useGallery:Lcom/google/common/logging/nano/UseGalleryEvent;

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->useGallery:Lcom/google/common/logging/nano/UseGalleryEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Gallery;->viewItem:Lcom/google/common/logging/nano/ViewItemEvent;

    if-eqz v0, :cond_1

    .line 135
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->viewItem:Lcom/google/common/logging/nano/ViewItemEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Gallery;->showMenu:Lcom/google/common/logging/nano/ShowMenuEvent;

    if-eqz v0, :cond_2

    .line 138
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->showMenu:Lcom/google/common/logging/nano/ShowMenuEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Gallery;->selectMenu:Lcom/google/common/logging/nano/SelectMenuItemEvent;

    if-eqz v0, :cond_3

    .line 141
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Gallery;->selectMenu:Lcom/google/common/logging/nano/SelectMenuItemEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 143
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 144
    return-void
.end method
