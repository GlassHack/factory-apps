.class public final Lcom/google/common/logging/MusicLogNano$Music;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "MusicLogNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/MusicLogNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Music"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/MusicLogNano$Music$ErrorCode;,
        Lcom/google/common/logging/MusicLogNano$Music$SeedType;,
        Lcom/google/common/logging/MusicLogNano$Music$UiType;,
        Lcom/google/common/logging/MusicLogNano$Music$PlayerCommand;,
        Lcom/google/common/logging/MusicLogNano$Music$Type;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/common/logging/MusicLogNano$Music;


# instance fields
.field private bitField0_:I

.field private errorCode_:I

.field private inputType_:I

.field private musicErrorCodeExtra_:I

.field private numberOfTracks_:I

.field private playerCommand_:I

.field private previousCommand_:I

.field private seedType_:I

.field private success_:Z

.field private swipe_:I

.field private timeSincePreviousCommand_:J

.field private timeSpent_:J

.field private type_:I

.field private uiType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/MusicLogNano$Music;

    sput-object v0, Lcom/google/common/logging/MusicLogNano$Music;->EMPTY_ARRAY:[Lcom/google/common/logging/MusicLogNano$Music;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 69
    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->type_:I

    .line 88
    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->playerCommand_:I

    .line 107
    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->uiType_:I

    .line 126
    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->previousCommand_:I

    .line 145
    iput-wide v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->timeSincePreviousCommand_:J

    .line 164
    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->numberOfTracks_:I

    .line 183
    iput-wide v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->timeSpent_:J

    .line 202
    iput-boolean v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->success_:Z

    .line 221
    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->seedType_:I

    .line 240
    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->inputType_:I

    .line 259
    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->swipe_:I

    .line 278
    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->errorCode_:I

    .line 297
    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->musicErrorCodeExtra_:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    new-instance v0, Lcom/google/common/logging/MusicLogNano$Music;

    invoke-direct {v0}, Lcom/google/common/logging/MusicLogNano$Music;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/MusicLogNano$Music;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/MusicLogNano$Music;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 638
    new-instance v0, Lcom/google/common/logging/MusicLogNano$Music;

    invoke-direct {v0}, Lcom/google/common/logging/MusicLogNano$Music;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/MusicLogNano$Music;

    return-object v0
.end method


# virtual methods
.method public clearErrorCode()Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->errorCode_:I

    .line 292
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 293
    return-object p0
.end method

.method public clearInputType()Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->inputType_:I

    .line 254
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 255
    return-object p0
.end method

.method public clearMusicErrorCodeExtra()Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->musicErrorCodeExtra_:I

    .line 311
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 312
    return-object p0
.end method

.method public clearNumberOfTracks()Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->numberOfTracks_:I

    .line 178
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 179
    return-object p0
.end method

.method public clearPlayerCommand()Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->playerCommand_:I

    .line 102
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 103
    return-object p0
.end method

.method public clearPreviousCommand()Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->previousCommand_:I

    .line 140
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 141
    return-object p0
.end method

.method public clearSeedType()Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->seedType_:I

    .line 235
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 236
    return-object p0
.end method

.method public clearSuccess()Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->success_:Z

    .line 216
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 217
    return-object p0
.end method

.method public clearSwipe()Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->swipe_:I

    .line 273
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 274
    return-object p0
.end method

.method public clearTimeSincePreviousCommand()Lcom/google/common/logging/MusicLogNano$Music;
    .locals 2

    .prologue
    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->timeSincePreviousCommand_:J

    .line 159
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 160
    return-object p0
.end method

.method public clearTimeSpent()Lcom/google/common/logging/MusicLogNano$Music;
    .locals 2

    .prologue
    .line 196
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->timeSpent_:J

    .line 197
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 198
    return-object p0
.end method

.method public clearType()Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->type_:I

    .line 83
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 84
    return-object p0
.end method

.method public clearUiType()Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->uiType_:I

    .line 121
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 122
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 317
    if-ne p1, p0, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v1

    .line 318
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/MusicLogNano$Music;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 319
    check-cast v0, Lcom/google/common/logging/MusicLogNano$Music;

    .line 320
    .local v0, "other":Lcom/google/common/logging/MusicLogNano$Music;
    iget v3, p0, Lcom/google/common/logging/MusicLogNano$Music;->type_:I

    iget v4, v0, Lcom/google/common/logging/MusicLogNano$Music;->type_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/MusicLogNano$Music;->playerCommand_:I

    iget v4, v0, Lcom/google/common/logging/MusicLogNano$Music;->playerCommand_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/MusicLogNano$Music;->uiType_:I

    iget v4, v0, Lcom/google/common/logging/MusicLogNano$Music;->uiType_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/MusicLogNano$Music;->previousCommand_:I

    iget v4, v0, Lcom/google/common/logging/MusicLogNano$Music;->previousCommand_:I

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Lcom/google/common/logging/MusicLogNano$Music;->timeSincePreviousCommand_:J

    iget-wide v5, v0, Lcom/google/common/logging/MusicLogNano$Music;->timeSincePreviousCommand_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/common/logging/MusicLogNano$Music;->numberOfTracks_:I

    iget v4, v0, Lcom/google/common/logging/MusicLogNano$Music;->numberOfTracks_:I

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Lcom/google/common/logging/MusicLogNano$Music;->timeSpent_:J

    iget-wide v5, v0, Lcom/google/common/logging/MusicLogNano$Music;->timeSpent_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/google/common/logging/MusicLogNano$Music;->success_:Z

    iget-boolean v4, v0, Lcom/google/common/logging/MusicLogNano$Music;->success_:Z

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/MusicLogNano$Music;->seedType_:I

    iget v4, v0, Lcom/google/common/logging/MusicLogNano$Music;->seedType_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/MusicLogNano$Music;->inputType_:I

    iget v4, v0, Lcom/google/common/logging/MusicLogNano$Music;->inputType_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/MusicLogNano$Music;->swipe_:I

    iget v4, v0, Lcom/google/common/logging/MusicLogNano$Music;->swipe_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/MusicLogNano$Music;->errorCode_:I

    iget v4, v0, Lcom/google/common/logging/MusicLogNano$Music;->errorCode_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/MusicLogNano$Music;->musicErrorCodeExtra_:I

    iget v4, v0, Lcom/google/common/logging/MusicLogNano$Music;->musicErrorCodeExtra_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/MusicLogNano$Music;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/common/logging/MusicLogNano$Music;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 333
    goto :goto_0

    .line 320
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/MusicLogNano$Music;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/common/logging/MusicLogNano$Music;->unknownFieldData:Ljava/util/List;

    .line 333
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->errorCode_:I

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->inputType_:I

    return v0
.end method

.method public getMusicErrorCodeExtra()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->musicErrorCodeExtra_:I

    return v0
.end method

.method public getNumberOfTracks()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->numberOfTracks_:I

    return v0
.end method

.method public getPlayerCommand()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->playerCommand_:I

    return v0
.end method

.method public getPreviousCommand()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->previousCommand_:I

    return v0
.end method

.method public getSeedType()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->seedType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 404
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->type_:I

    .line 405
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 407
    :cond_0
    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 408
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->playerCommand_:I

    .line 409
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 411
    :cond_1
    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 412
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->uiType_:I

    .line 413
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 415
    :cond_2
    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 416
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->previousCommand_:I

    .line 417
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 419
    :cond_3
    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 420
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->timeSincePreviousCommand_:J

    .line 421
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 423
    :cond_4
    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 424
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->numberOfTracks_:I

    .line 425
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 427
    :cond_5
    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 428
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->timeSpent_:J

    .line 429
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 431
    :cond_6
    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 432
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->success_:Z

    .line 433
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 435
    :cond_7
    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 436
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->seedType_:I

    .line 437
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 439
    :cond_8
    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 440
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->inputType_:I

    .line 441
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 443
    :cond_9
    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    .line 444
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->swipe_:I

    .line 445
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 447
    :cond_a
    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    .line 448
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->errorCode_:I

    .line 449
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 451
    :cond_b
    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    .line 452
    const/16 v1, 0xd

    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->musicErrorCodeExtra_:I

    .line 453
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 455
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 456
    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->cachedSize:I

    .line 457
    return v0
.end method

.method public getSuccess()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->success_:Z

    return v0
.end method

.method public getSwipe()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->swipe_:I

    return v0
.end method

.method public getTimeSincePreviousCommand()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->timeSincePreviousCommand_:J

    return-wide v0
.end method

.method public getTimeSpent()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->timeSpent_:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->type_:I

    return v0
.end method

.method public getUiType()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->uiType_:I

    return v0
.end method

.method public hasErrorCode()Z
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInputType()Z
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMusicErrorCodeExtra()Z
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumberOfTracks()Z
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPlayerCommand()Z
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPreviousCommand()Z
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSeedType()Z
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSuccess()Z
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSwipe()Z
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeSincePreviousCommand()Z
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeSpent()Z
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUiType()Z
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

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
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 337
    const/16 v0, 0x11

    .line 338
    .local v0, "result":I
    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->type_:I

    add-int/lit16 v0, v1, 0x20f

    .line 339
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->playerCommand_:I

    add-int v0, v1, v2

    .line 340
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->uiType_:I

    add-int v0, v1, v2

    .line 341
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->previousCommand_:I

    add-int v0, v1, v2

    .line 342
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->timeSincePreviousCommand_:J

    iget-wide v4, p0, Lcom/google/common/logging/MusicLogNano$Music;->timeSincePreviousCommand_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 343
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->numberOfTracks_:I

    add-int v0, v1, v2

    .line 344
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->timeSpent_:J

    iget-wide v4, p0, Lcom/google/common/logging/MusicLogNano$Music;->timeSpent_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 345
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->success_:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 346
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->seedType_:I

    add-int v0, v1, v2

    .line 347
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->inputType_:I

    add-int v0, v1, v2

    .line 348
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->swipe_:I

    add-int v0, v1, v2

    .line 349
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->errorCode_:I

    add-int v0, v1, v2

    .line 350
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->musicErrorCodeExtra_:I

    add-int v0, v1, v2

    .line 351
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    add-int v0, v2, v1

    .line 352
    return v0

    .line 345
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/MusicLogNano$Music;
    .locals 9
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 465
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 466
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 470
    iget-object v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 471
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->unknownFieldData:Ljava/util/List;

    .line 474
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 476
    :sswitch_0
    return-object p0

    .line 481
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 482
    .local v1, "temp":I
    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_2

    if-eq v1, v6, :cond_2

    if-eq v1, v7, :cond_2

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 487
    :cond_2
    iput v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->type_:I

    .line 488
    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    goto :goto_0

    .line 490
    :cond_3
    iput v4, p0, Lcom/google/common/logging/MusicLogNano$Music;->type_:I

    goto :goto_0

    .line 495
    .end local v1    # "temp":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 496
    .restart local v1    # "temp":I
    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_4

    if-eq v1, v6, :cond_4

    if-eq v1, v7, :cond_4

    if-eq v1, v8, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 503
    :cond_4
    iput v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->playerCommand_:I

    .line 504
    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    goto :goto_0

    .line 506
    :cond_5
    iput v4, p0, Lcom/google/common/logging/MusicLogNano$Music;->playerCommand_:I

    goto :goto_0

    .line 511
    .end local v1    # "temp":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 512
    .restart local v1    # "temp":I
    if-eqz v1, :cond_6

    if-eq v1, v5, :cond_6

    if-eq v1, v6, :cond_6

    if-eq v1, v7, :cond_6

    if-ne v1, v8, :cond_7

    .line 517
    :cond_6
    iput v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->uiType_:I

    .line 518
    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    goto :goto_0

    .line 520
    :cond_7
    iput v4, p0, Lcom/google/common/logging/MusicLogNano$Music;->uiType_:I

    goto :goto_0

    .line 525
    .end local v1    # "temp":I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 526
    .restart local v1    # "temp":I
    if-eqz v1, :cond_8

    if-eq v1, v5, :cond_8

    if-eq v1, v6, :cond_8

    if-eq v1, v7, :cond_8

    if-eq v1, v8, :cond_8

    const/4 v2, 0x5

    if-eq v1, v2, :cond_8

    const/4 v2, 0x6

    if-ne v1, v2, :cond_9

    .line 533
    :cond_8
    iput v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->previousCommand_:I

    .line 534
    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    goto/16 :goto_0

    .line 536
    :cond_9
    iput v4, p0, Lcom/google/common/logging/MusicLogNano$Music;->previousCommand_:I

    goto/16 :goto_0

    .line 541
    .end local v1    # "temp":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->timeSincePreviousCommand_:J

    .line 542
    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    goto/16 :goto_0

    .line 546
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->numberOfTracks_:I

    .line 547
    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    goto/16 :goto_0

    .line 551
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->timeSpent_:J

    .line 552
    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    goto/16 :goto_0

    .line 556
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->success_:Z

    .line 557
    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    goto/16 :goto_0

    .line 561
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 562
    .restart local v1    # "temp":I
    if-eqz v1, :cond_a

    if-eq v1, v5, :cond_a

    if-eq v1, v6, :cond_a

    if-eq v1, v7, :cond_a

    if-eq v1, v8, :cond_a

    const/4 v2, 0x5

    if-ne v1, v2, :cond_b

    .line 568
    :cond_a
    iput v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->seedType_:I

    .line 569
    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    goto/16 :goto_0

    .line 571
    :cond_b
    iput v4, p0, Lcom/google/common/logging/MusicLogNano$Music;->seedType_:I

    goto/16 :goto_0

    .line 576
    .end local v1    # "temp":I
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 577
    .restart local v1    # "temp":I
    if-eqz v1, :cond_c

    if-eq v1, v5, :cond_c

    if-ne v1, v6, :cond_d

    .line 580
    :cond_c
    iput v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->inputType_:I

    .line 581
    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    goto/16 :goto_0

    .line 583
    :cond_d
    iput v4, p0, Lcom/google/common/logging/MusicLogNano$Music;->inputType_:I

    goto/16 :goto_0

    .line 588
    .end local v1    # "temp":I
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 589
    .restart local v1    # "temp":I
    if-eqz v1, :cond_e

    if-eq v1, v5, :cond_e

    if-eq v1, v6, :cond_e

    if-eq v1, v7, :cond_e

    if-eq v1, v8, :cond_e

    const/4 v2, 0x5

    if-ne v1, v2, :cond_f

    .line 595
    :cond_e
    iput v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->swipe_:I

    .line 596
    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    goto/16 :goto_0

    .line 598
    :cond_f
    iput v4, p0, Lcom/google/common/logging/MusicLogNano$Music;->swipe_:I

    goto/16 :goto_0

    .line 603
    .end local v1    # "temp":I
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 604
    .restart local v1    # "temp":I
    if-eqz v1, :cond_10

    if-eq v1, v5, :cond_10

    if-eq v1, v6, :cond_10

    if-eq v1, v7, :cond_10

    if-eq v1, v8, :cond_10

    const/4 v2, 0x5

    if-eq v1, v2, :cond_10

    const/4 v2, 0x6

    if-eq v1, v2, :cond_10

    const/4 v2, 0x7

    if-eq v1, v2, :cond_10

    const/16 v2, 0x8

    if-eq v1, v2, :cond_10

    const/16 v2, 0x9

    if-eq v1, v2, :cond_10

    const/16 v2, 0xa

    if-eq v1, v2, :cond_10

    const/16 v2, 0xb

    if-eq v1, v2, :cond_10

    const/16 v2, 0xc

    if-eq v1, v2, :cond_10

    const/16 v2, 0xd

    if-eq v1, v2, :cond_10

    const/16 v2, 0xe

    if-eq v1, v2, :cond_10

    const/16 v2, 0xf

    if-ne v1, v2, :cond_11

    .line 620
    :cond_10
    iput v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->errorCode_:I

    .line 621
    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    goto/16 :goto_0

    .line 623
    :cond_11
    iput v4, p0, Lcom/google/common/logging/MusicLogNano$Music;->errorCode_:I

    goto/16 :goto_0

    .line 628
    .end local v1    # "temp":I
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->musicErrorCodeExtra_:I

    .line 629
    iget v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    goto/16 :goto_0

    .line 466
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
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
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/common/logging/MusicLogNano$Music;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/MusicLogNano$Music;

    move-result-object v0

    return-object v0
.end method

.method public setErrorCode(I)Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 283
    iput p1, p0, Lcom/google/common/logging/MusicLogNano$Music;->errorCode_:I

    .line 284
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 285
    return-object p0
.end method

.method public setInputType(I)Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 245
    iput p1, p0, Lcom/google/common/logging/MusicLogNano$Music;->inputType_:I

    .line 246
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 247
    return-object p0
.end method

.method public setMusicErrorCodeExtra(I)Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 302
    iput p1, p0, Lcom/google/common/logging/MusicLogNano$Music;->musicErrorCodeExtra_:I

    .line 303
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 304
    return-object p0
.end method

.method public setNumberOfTracks(I)Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/google/common/logging/MusicLogNano$Music;->numberOfTracks_:I

    .line 170
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 171
    return-object p0
.end method

.method public setPlayerCommand(I)Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/google/common/logging/MusicLogNano$Music;->playerCommand_:I

    .line 94
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 95
    return-object p0
.end method

.method public setPreviousCommand(I)Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/google/common/logging/MusicLogNano$Music;->previousCommand_:I

    .line 132
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 133
    return-object p0
.end method

.method public setSeedType(I)Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 226
    iput p1, p0, Lcom/google/common/logging/MusicLogNano$Music;->seedType_:I

    .line 227
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 228
    return-object p0
.end method

.method public setSuccess(Z)Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/google/common/logging/MusicLogNano$Music;->success_:Z

    .line 208
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 209
    return-object p0
.end method

.method public setSwipe(I)Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 264
    iput p1, p0, Lcom/google/common/logging/MusicLogNano$Music;->swipe_:I

    .line 265
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 266
    return-object p0
.end method

.method public setTimeSincePreviousCommand(J)Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/google/common/logging/MusicLogNano$Music;->timeSincePreviousCommand_:J

    .line 151
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 152
    return-object p0
.end method

.method public setTimeSpent(J)Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 188
    iput-wide p1, p0, Lcom/google/common/logging/MusicLogNano$Music;->timeSpent_:J

    .line 189
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 190
    return-object p0
.end method

.method public setType(I)Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/google/common/logging/MusicLogNano$Music;->type_:I

    .line 75
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 76
    return-object p0
.end method

.method public setUiType(I)Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/google/common/logging/MusicLogNano$Music;->uiType_:I

    .line 113
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    .line 114
    return-object p0
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
    .line 357
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 360
    :cond_0
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 361
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->playerCommand_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 363
    :cond_1
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 364
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->uiType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 366
    :cond_2
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 367
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->previousCommand_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 369
    :cond_3
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 370
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->timeSincePreviousCommand_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 372
    :cond_4
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 373
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->numberOfTracks_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 375
    :cond_5
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 376
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->timeSpent_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 378
    :cond_6
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 379
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->success_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 381
    :cond_7
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 382
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->seedType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 384
    :cond_8
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 385
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->inputType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 387
    :cond_9
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 388
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->swipe_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 390
    :cond_a
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    .line 391
    const/16 v0, 0xc

    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->errorCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 393
    :cond_b
    iget v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 394
    const/16 v0, 0xd

    iget v1, p0, Lcom/google/common/logging/MusicLogNano$Music;->musicErrorCodeExtra_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 396
    :cond_c
    iget-object v0, p0, Lcom/google/common/logging/MusicLogNano$Music;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 398
    return-void
.end method
