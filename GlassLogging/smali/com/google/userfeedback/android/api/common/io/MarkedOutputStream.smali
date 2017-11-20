.class public Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;
.super Ljava/io/OutputStream;
.source "MarkedOutputStream.java"


# static fields
.field private static final MINIMUM_SIZE:I = 0x10


# instance fields
.field private contents:[B

.field private markers:[I

.field private nextContent:I

.field private nextMarker:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 30
    iput v0, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->nextContent:I

    .line 35
    iput v0, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->nextMarker:I

    .line 38
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->clear()V

    .line 39
    return-void
.end method

.method private static calculateSize(III)I
    .locals 1
    .param p0, "needed"    # I
    .param p1, "size"    # I
    .param p2, "current"    # I

    .prologue
    .line 69
    sub-int v0, p1, p2

    .line 70
    .local v0, "remaining":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 71
    add-int/2addr v0, p1

    .line 72
    shl-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    return p1
.end method

.method private expandContentsIfNecessary(I)V
    .locals 5
    .param p1, "needed"    # I

    .prologue
    const/4 v4, 0x0

    .line 123
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->contents:[B

    array-length v2, v2

    iget v3, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->nextContent:I

    invoke-static {p1, v2, v3}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->calculateSize(III)I

    move-result v1

    .line 124
    .local v1, "size":I
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->contents:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 125
    new-array v0, v1, [B

    .line 126
    .local v0, "newContents":[B
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->contents:[B

    iget v3, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->nextContent:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iput-object v0, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->contents:[B

    .line 129
    .end local v0    # "newContents":[B
    :cond_0
    return-void
.end method

.method private expandMarkersIfNecessary(I)V
    .locals 5
    .param p1, "needed"    # I

    .prologue
    const/4 v4, 0x0

    .line 78
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->markers:[I

    array-length v2, v2

    iget v3, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->nextMarker:I

    invoke-static {p1, v2, v3}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->calculateSize(III)I

    move-result v1

    .line 79
    .local v1, "size":I
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->markers:[I

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 80
    new-array v0, v1, [I

    .line 81
    .local v0, "newMarkers":[I
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->markers:[I

    iget v3, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->nextMarker:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iput-object v0, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->markers:[I

    .line 84
    .end local v0    # "newMarkers":[I
    :cond_0
    return-void
.end method


# virtual methods
.method public addMarker(I)V
    .locals 3
    .param p1, "marker"    # I

    .prologue
    .line 105
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->expandMarkersIfNecessary(I)V

    .line 106
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->markers:[I

    iget v1, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->nextMarker:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->nextMarker:I

    aput p1, v0, v1

    .line 107
    return-void
.end method

.method public availableContent()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->nextContent:I

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->reset()V

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->contents:[B

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->markers:[I

    .line 59
    return-void
.end method

.method public getMarker(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->markers:[I

    aget v0, v0, p1

    return v0
.end method

.method public numMarkers()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->nextMarker:I

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->nextContent:I

    .line 46
    iput v0, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->nextMarker:I

    .line 47
    return-void
.end method

.method public setMarker(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "marker"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->markers:[I

    aput p2, v0, p1

    .line 120
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->expandContentsIfNecessary(I)V

    .line 141
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->contents:[B

    iget v1, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->nextContent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->nextContent:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 142
    return-void
.end method

.method public write([B)V
    .locals 4
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->expandContentsIfNecessary(I)V

    .line 146
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->contents:[B

    iget v2, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->nextContent:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget v0, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->nextContent:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->nextContent:I

    .line 148
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0, p3}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->expandContentsIfNecessary(I)V

    .line 152
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->contents:[B

    iget v1, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->nextContent:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget v0, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->nextContent:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->nextContent:I

    .line 154
    return-void
.end method

.method public writeContentsTo(Ljava/io/OutputStream;II)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->contents:[B

    invoke-virtual {p1, v0, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 137
    return-void
.end method
