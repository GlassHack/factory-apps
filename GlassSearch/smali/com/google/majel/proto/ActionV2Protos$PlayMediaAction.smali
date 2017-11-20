.class public final Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayMediaAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;,
        Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;,
        Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;,
        Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;,
        Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;
    }
.end annotation


# static fields
.field public static final INTENT_FLAG_INTENT_PURCHASE:I = 0x1

.field public static final INTENT_FLAG_INTENT_RENT:I = 0x2

.field public static final MEDIA_OWNERSHIP_NOT_OWNED:I = 0x2

.field public static final MEDIA_OWNERSHIP_OWNED:I = 0x3

.field public static final MEDIA_OWNERSHIP_OWNERSHIP_UNKNOWN:I = 0x1

.field public static final MEDIA_OWNERSHIP_RENTED:I = 0x4

.field public static final MEDIA_SOURCE_PLAY_STORE:I = 0x3

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;


# instance fields
.field public appItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

.field public argument:[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

.field private bitField0_:I

.field public bookItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

.field private dEPRECATEDHighConfidenceInterpretation_:Z

.field private finskyDocid_:Ljava/lang/String;

.field private finskyFetchDocid_:Ljava/lang/String;

.field public intentFlag:[I

.field private isFromSoundSearch_:Z

.field private itemImageUrl_:Ljava/lang/String;

.field private itemImage_:[B

.field private itemNumberOfRatings_:I

.field private itemPreviewUrl_:Ljava/lang/String;

.field public itemPriceTag:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

.field private itemRating_:D

.field private itemRemainingRentalSeconds_:J

.field private mediaSource_:I

.field public movieItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

.field public musicItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

.field private name_:Ljava/lang/String;

.field private ownershipStatus_:I

.field private suggestedQueryForPlayMusic_:Ljava/lang/String;

.field private suggestedQuery_:Ljava/lang/String;

.field private target_:Ljava/lang/String;

.field private url_:Ljava/lang/String;

.field public whitelistedAppPackage:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7141
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 7142
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->clear()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 7143
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 2

    .prologue
    .line 6751
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    if-nez v0, :cond_1

    .line 6752
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6754
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    if-nez v0, :cond_0

    .line 6755
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    .line 6757
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6759
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    return-object v0

    .line 6757
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7643
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 7637
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7146
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 7147
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->name_:Ljava/lang/String;

    .line 7148
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->mediaSource_:I

    .line 7149
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->musicItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    .line 7150
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->movieItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    .line 7151
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bookItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    .line 7152
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->appItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    .line 7153
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->suggestedQuery_:Ljava/lang/String;

    .line 7154
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->suggestedQueryForPlayMusic_:Ljava/lang/String;

    .line 7155
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->url_:Ljava/lang/String;

    .line 7156
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemImage_:[B

    .line 7157
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemImageUrl_:Ljava/lang/String;

    .line 7158
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPreviewUrl_:Ljava/lang/String;

    .line 7159
    iput v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->ownershipStatus_:I

    .line 7160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemRemainingRentalSeconds_:J

    .line 7161
    invoke-static {}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;->emptyArray()[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPriceTag:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    .line 7162
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemRating_:D

    .line 7163
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemNumberOfRatings_:I

    .line 7164
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->finskyDocid_:Ljava/lang/String;

    .line 7165
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->finskyFetchDocid_:Ljava/lang/String;

    .line 7166
    iput-boolean v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->isFromSoundSearch_:Z

    .line 7167
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->target_:Ljava/lang/String;

    .line 7168
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag:[I

    .line 7169
    iput-boolean v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->dEPRECATEDHighConfidenceInterpretation_:Z

    .line 7170
    invoke-static {}, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;->emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->argument:[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    .line 7171
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->whitelistedAppPackage:[Ljava/lang/String;

    .line 7172
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->cachedSize:I

    .line 7173
    return-object p0
.end method

.method public clearDEPRECATEDHighConfidenceInterpretation()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 2

    .prologue
    .line 7130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->dEPRECATEDHighConfidenceInterpretation_:Z

    .line 7131
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 7132
    return-object p0
.end method

.method public clearFinskyDocid()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 7045
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->finskyDocid_:Ljava/lang/String;

    .line 7046
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 7047
    return-object p0
.end method

.method public clearFinskyFetchDocid()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 7067
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->finskyFetchDocid_:Ljava/lang/String;

    .line 7068
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 7069
    return-object p0
.end method

.method public clearIsFromSoundSearch()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 7086
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->isFromSoundSearch_:Z

    .line 7087
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 7088
    return-object p0
.end method

.method public clearItemImage()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 6900
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemImage_:[B

    .line 6901
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 6902
    return-object p0
.end method

.method public clearItemImageUrl()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 6922
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemImageUrl_:Ljava/lang/String;

    .line 6923
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 6924
    return-object p0
.end method

.method public clearItemNumberOfRatings()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 7023
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemNumberOfRatings_:I

    .line 7024
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 7025
    return-object p0
.end method

.method public clearItemPreviewUrl()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 6944
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPreviewUrl_:Ljava/lang/String;

    .line 6945
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 6946
    return-object p0
.end method

.method public clearItemRating()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 2

    .prologue
    .line 7004
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemRating_:D

    .line 7005
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 7006
    return-object p0
.end method

.method public clearItemRemainingRentalSeconds()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 2

    .prologue
    .line 6982
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemRemainingRentalSeconds_:J

    .line 6983
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 6984
    return-object p0
.end method

.method public clearMediaSource()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 6800
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->mediaSource_:I

    .line 6801
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 6802
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 6781
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->name_:Ljava/lang/String;

    .line 6782
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 6783
    return-object p0
.end method

.method public clearOwnershipStatus()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 6963
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->ownershipStatus_:I

    .line 6964
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 6965
    return-object p0
.end method

.method public clearSuggestedQuery()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 6834
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->suggestedQuery_:Ljava/lang/String;

    .line 6835
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 6836
    return-object p0
.end method

.method public clearSuggestedQueryForPlayMusic()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 6856
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->suggestedQueryForPlayMusic_:Ljava/lang/String;

    .line 6857
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 6858
    return-object p0
.end method

.method public clearTarget()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 2

    .prologue
    .line 7108
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->target_:Ljava/lang/String;

    .line 7109
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 7110
    return-object p0
.end method

.method public clearUrl()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1

    .prologue
    .line 6878
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->url_:Ljava/lang/String;

    .line 6879
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 6880
    return-object p0
.end method

.method public getDEPRECATEDHighConfidenceInterpretation()Z
    .locals 1

    .prologue
    .line 7119
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->dEPRECATEDHighConfidenceInterpretation_:Z

    return v0
.end method

.method public getFinskyDocid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7031
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->finskyDocid_:Ljava/lang/String;

    return-object v0
.end method

.method public getFinskyFetchDocid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7053
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->finskyFetchDocid_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsFromSoundSearch()Z
    .locals 1

    .prologue
    .line 7075
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->isFromSoundSearch_:Z

    return v0
.end method

.method public getItemImage()[B
    .locals 1

    .prologue
    .line 6886
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemImage_:[B

    return-object v0
.end method

.method public getItemImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6908
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getItemNumberOfRatings()I
    .locals 1

    .prologue
    .line 7012
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemNumberOfRatings_:I

    return v0
.end method

.method public getItemPreviewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6930
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPreviewUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getItemRating()D
    .locals 2

    .prologue
    .line 6993
    iget-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemRating_:D

    return-wide v0
.end method

.method public getItemRemainingRentalSeconds()J
    .locals 2

    .prologue
    .line 6971
    iget-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemRemainingRentalSeconds_:J

    return-wide v0
.end method

.method public getMediaSource()I
    .locals 1

    .prologue
    .line 6789
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->mediaSource_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6767
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnershipStatus()I
    .locals 1

    .prologue
    .line 6952
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->ownershipStatus_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 7275
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 7276
    .local v4, "size":I
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 7277
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->name_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7280
    :cond_0
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 7281
    const/4 v5, 0x3

    iget v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->mediaSource_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 7284
    :cond_1
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_2

    .line 7285
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->url_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7288
    :cond_2
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    const v6, 0x8000

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    .line 7289
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->target_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7292
    :cond_3
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->musicItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    if-eqz v5, :cond_4

    .line 7293
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->musicItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7296
    :cond_4
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->movieItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    if-eqz v5, :cond_5

    .line 7297
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->movieItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7300
    :cond_5
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bookItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    if-eqz v5, :cond_6

    .line 7301
    const/16 v5, 0x8

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bookItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7304
    :cond_6
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_7

    .line 7305
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->suggestedQuery_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7308
    :cond_7
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_8

    .line 7309
    const/16 v5, 0xa

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemImage_:[B

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v5

    add-int/2addr v4, v5

    .line 7312
    :cond_8
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_9

    .line 7313
    const/16 v5, 0xb

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemImageUrl_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7316
    :cond_9
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_a

    .line 7317
    const/16 v5, 0xc

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPreviewUrl_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7320
    :cond_a
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_b

    .line 7321
    const/16 v5, 0xe

    iget-wide v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemRemainingRentalSeconds_:J

    invoke-static {v5, v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 7324
    :cond_b
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPriceTag:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPriceTag:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    array-length v5, v5

    if-lez v5, :cond_d

    .line 7325
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPriceTag:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    array-length v5, v5

    if-ge v3, v5, :cond_d

    .line 7326
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPriceTag:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    aget-object v2, v5, v3

    .line 7327
    .local v2, "element":Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    if-eqz v2, :cond_c

    .line 7328
    const/16 v5, 0xf

    invoke-static {v5, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7325
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7333
    .end local v2    # "element":Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    .end local v3    # "i":I
    :cond_d
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_e

    .line 7334
    const/16 v5, 0x10

    iget-wide v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemRating_:D

    invoke-static {v5, v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v5

    add-int/2addr v4, v5

    .line 7337
    :cond_e
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_f

    .line 7338
    const/16 v5, 0x11

    iget v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemNumberOfRatings_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 7341
    :cond_f
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_10

    .line 7342
    const/16 v5, 0x12

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->finskyDocid_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7345
    :cond_10
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v5, v5, 0x2000

    if-eqz v5, :cond_11

    .line 7346
    const/16 v5, 0x13

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->finskyFetchDocid_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7349
    :cond_11
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_12

    .line 7350
    const/16 v5, 0x14

    iget-boolean v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->isFromSoundSearch_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 7353
    :cond_12
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->appItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    if-eqz v5, :cond_13

    .line 7354
    const/16 v5, 0x15

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->appItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7357
    :cond_13
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag:[I

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag:[I

    array-length v5, v5

    if-lez v5, :cond_15

    .line 7358
    const/4 v1, 0x0

    .line 7359
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag:[I

    array-length v5, v5

    if-ge v3, v5, :cond_14

    .line 7360
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag:[I

    aget v2, v5, v3

    .line 7361
    .local v2, "element":I
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 7359
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7364
    .end local v2    # "element":I
    :cond_14
    add-int/2addr v4, v1

    .line 7365
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 7367
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_15
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    const/high16 v6, 0x10000

    and-int/2addr v5, v6

    if-eqz v5, :cond_16

    .line 7368
    const/16 v5, 0x17

    iget-boolean v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->dEPRECATEDHighConfidenceInterpretation_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 7371
    :cond_16
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->argument:[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->argument:[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    array-length v5, v5

    if-lez v5, :cond_18

    .line 7372
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->argument:[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    array-length v5, v5

    if-ge v3, v5, :cond_18

    .line 7373
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->argument:[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    aget-object v2, v5, v3

    .line 7374
    .local v2, "element":Lcom/google/majel/proto/ActionV2Protos$ParseArgument;
    if-eqz v2, :cond_17

    .line 7375
    const/16 v5, 0x18

    invoke-static {v5, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7372
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 7380
    .end local v2    # "element":Lcom/google/majel/proto/ActionV2Protos$ParseArgument;
    .end local v3    # "i":I
    :cond_18
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_19

    .line 7381
    const/16 v5, 0x19

    iget v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->ownershipStatus_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 7384
    :cond_19
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_1a

    .line 7385
    const/16 v5, 0x1a

    iget-object v6, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->suggestedQueryForPlayMusic_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7388
    :cond_1a
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->whitelistedAppPackage:[Ljava/lang/String;

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->whitelistedAppPackage:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_1d

    .line 7389
    const/4 v0, 0x0

    .line 7390
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 7391
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->whitelistedAppPackage:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_1c

    .line 7392
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->whitelistedAppPackage:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 7393
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_1b

    .line 7394
    add-int/lit8 v0, v0, 0x1

    .line 7395
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 7391
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 7399
    .end local v2    # "element":Ljava/lang/String;
    :cond_1c
    add-int/2addr v4, v1

    .line 7400
    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    .line 7402
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_1d
    iput v4, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->cachedSize:I

    .line 7403
    return v4
.end method

.method public getSuggestedQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6820
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->suggestedQuery_:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestedQueryForPlayMusic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6842
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->suggestedQueryForPlayMusic_:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7094
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->target_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6864
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDEPRECATEDHighConfidenceInterpretation()Z
    .locals 2

    .prologue
    .line 7127
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFinskyDocid()Z
    .locals 1

    .prologue
    .line 7042
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFinskyFetchDocid()Z
    .locals 1

    .prologue
    .line 7064
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsFromSoundSearch()Z
    .locals 1

    .prologue
    .line 7083
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasItemImage()Z
    .locals 1

    .prologue
    .line 6897
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasItemImageUrl()Z
    .locals 1

    .prologue
    .line 6919
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasItemNumberOfRatings()Z
    .locals 1

    .prologue
    .line 7020
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasItemPreviewUrl()Z
    .locals 1

    .prologue
    .line 6941
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasItemRating()Z
    .locals 1

    .prologue
    .line 7001
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasItemRemainingRentalSeconds()Z
    .locals 1

    .prologue
    .line 6979
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMediaSource()Z
    .locals 1

    .prologue
    .line 6797
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 6778
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOwnershipStatus()Z
    .locals 1

    .prologue
    .line 6960
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSuggestedQuery()Z
    .locals 1

    .prologue
    .line 6831
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSuggestedQueryForPlayMusic()Z
    .locals 1

    .prologue
    .line 6853
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTarget()Z
    .locals 2

    .prologue
    .line 7105
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 6875
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 5451
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 10
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 7411
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 7412
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 7416
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 7417
    :sswitch_0
    return-object p0

    .line 7422
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->name_:Ljava/lang/String;

    .line 7423
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    goto :goto_0

    .line 7427
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->mediaSource_:I

    .line 7428
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    goto :goto_0

    .line 7432
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->url_:Ljava/lang/String;

    .line 7433
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    goto :goto_0

    .line 7437
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->target_:Ljava/lang/String;

    .line 7438
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    const v9, 0x8000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    goto :goto_0

    .line 7442
    :sswitch_5
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->musicItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    if-nez v8, :cond_1

    .line 7443
    new-instance v8, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    invoke-direct {v8}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;-><init>()V

    iput-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->musicItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    .line 7445
    :cond_1
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->musicItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7449
    :sswitch_6
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->movieItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    if-nez v8, :cond_2

    .line 7450
    new-instance v8, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    invoke-direct {v8}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;-><init>()V

    iput-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->movieItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    .line 7452
    :cond_2
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->movieItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7456
    :sswitch_7
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bookItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    if-nez v8, :cond_3

    .line 7457
    new-instance v8, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    invoke-direct {v8}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;-><init>()V

    iput-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bookItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    .line 7459
    :cond_3
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bookItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7463
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->suggestedQuery_:Ljava/lang/String;

    .line 7464
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    goto/16 :goto_0

    .line 7468
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemImage_:[B

    .line 7469
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    goto/16 :goto_0

    .line 7473
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemImageUrl_:Ljava/lang/String;

    .line 7474
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    goto/16 :goto_0

    .line 7478
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPreviewUrl_:Ljava/lang/String;

    .line 7479
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    goto/16 :goto_0

    .line 7483
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemRemainingRentalSeconds_:J

    .line 7484
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit16 v8, v8, 0x200

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    goto/16 :goto_0

    .line 7488
    :sswitch_d
    const/16 v8, 0x7a

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 7490
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPriceTag:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    if-nez v8, :cond_5

    move v1, v7

    .line 7491
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    .line 7493
    .local v4, "newArray":[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    if-eqz v1, :cond_4

    .line 7494
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPriceTag:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7496
    :cond_4
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_6

    .line 7497
    new-instance v8, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    invoke-direct {v8}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;-><init>()V

    aput-object v8, v4, v1

    .line 7498
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7499
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7496
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7490
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    :cond_5
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPriceTag:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    array-length v1, v8

    goto :goto_1

    .line 7502
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    :cond_6
    new-instance v8, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    invoke-direct {v8}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;-><init>()V

    aput-object v8, v4, v1

    .line 7503
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7504
    iput-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPriceTag:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    goto/16 :goto_0

    .line 7508
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemRating_:D

    .line 7509
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit16 v8, v8, 0x400

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    goto/16 :goto_0

    .line 7513
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemNumberOfRatings_:I

    .line 7514
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit16 v8, v8, 0x800

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    goto/16 :goto_0

    .line 7518
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->finskyDocid_:Ljava/lang/String;

    .line 7519
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit16 v8, v8, 0x1000

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    goto/16 :goto_0

    .line 7523
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->finskyFetchDocid_:Ljava/lang/String;

    .line 7524
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit16 v8, v8, 0x2000

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    goto/16 :goto_0

    .line 7528
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->isFromSoundSearch_:Z

    .line 7529
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit16 v8, v8, 0x4000

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    goto/16 :goto_0

    .line 7533
    :sswitch_13
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->appItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    if-nez v8, :cond_7

    .line 7534
    new-instance v8, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    invoke-direct {v8}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;-><init>()V

    iput-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->appItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    .line 7536
    :cond_7
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->appItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7540
    :sswitch_14
    const/16 v8, 0xb0

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 7542
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag:[I

    if-nez v8, :cond_9

    move v1, v7

    .line 7543
    .restart local v1    # "i":I
    :goto_3
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 7544
    .local v4, "newArray":[I
    if-eqz v1, :cond_8

    .line 7545
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7547
    :cond_8
    :goto_4
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_a

    .line 7548
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 7549
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7547
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 7542
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_9
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag:[I

    array-length v1, v8

    goto :goto_3

    .line 7552
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 7553
    iput-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag:[I

    goto/16 :goto_0

    .line 7557
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 7558
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 7560
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 7561
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 7562
    .local v5, "startPos":I
    :goto_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_b

    .line 7563
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 7564
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 7566
    :cond_b
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 7567
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag:[I

    if-nez v8, :cond_d

    move v1, v7

    .line 7568
    .restart local v1    # "i":I
    :goto_6
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 7569
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_c

    .line 7570
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7572
    :cond_c
    :goto_7
    array-length v8, v4

    if-ge v1, v8, :cond_e

    .line 7573
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 7572
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 7567
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_d
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag:[I

    array-length v1, v8

    goto :goto_6

    .line 7575
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_e
    iput-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag:[I

    .line 7576
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 7580
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->dEPRECATEDHighConfidenceInterpretation_:Z

    .line 7581
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    const/high16 v9, 0x10000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    goto/16 :goto_0

    .line 7585
    :sswitch_17
    const/16 v8, 0xc2

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 7587
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->argument:[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    if-nez v8, :cond_10

    move v1, v7

    .line 7588
    .restart local v1    # "i":I
    :goto_8
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    .line 7590
    .local v4, "newArray":[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;
    if-eqz v1, :cond_f

    .line 7591
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->argument:[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7593
    :cond_f
    :goto_9
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_11

    .line 7594
    new-instance v8, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    invoke-direct {v8}, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;-><init>()V

    aput-object v8, v4, v1

    .line 7595
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7596
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7593
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 7587
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;
    :cond_10
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->argument:[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    array-length v1, v8

    goto :goto_8

    .line 7599
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;
    :cond_11
    new-instance v8, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    invoke-direct {v8}, Lcom/google/majel/proto/ActionV2Protos$ParseArgument;-><init>()V

    aput-object v8, v4, v1

    .line 7600
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7601
    iput-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->argument:[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    goto/16 :goto_0

    .line 7605
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->ownershipStatus_:I

    .line 7606
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    goto/16 :goto_0

    .line 7610
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->suggestedQueryForPlayMusic_:Ljava/lang/String;

    .line 7611
    iget v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    goto/16 :goto_0

    .line 7615
    :sswitch_1a
    const/16 v8, 0xda

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 7617
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->whitelistedAppPackage:[Ljava/lang/String;

    if-nez v8, :cond_13

    move v1, v7

    .line 7618
    .restart local v1    # "i":I
    :goto_a
    add-int v8, v1, v0

    new-array v4, v8, [Ljava/lang/String;

    .line 7619
    .local v4, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_12

    .line 7620
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->whitelistedAppPackage:[Ljava/lang/String;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7622
    :cond_12
    :goto_b
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_14

    .line 7623
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 7624
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7622
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 7617
    .end local v1    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :cond_13
    iget-object v8, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->whitelistedAppPackage:[Ljava/lang/String;

    array-length v1, v8

    goto :goto_a

    .line 7627
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Ljava/lang/String;
    :cond_14
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 7628
    iput-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->whitelistedAppPackage:[Ljava/lang/String;

    goto/16 :goto_0

    .line 7412
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x18 -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x70 -> :sswitch_c
        0x7a -> :sswitch_d
        0x81 -> :sswitch_e
        0x88 -> :sswitch_f
        0x92 -> :sswitch_10
        0x9a -> :sswitch_11
        0xa0 -> :sswitch_12
        0xaa -> :sswitch_13
        0xb0 -> :sswitch_14
        0xb2 -> :sswitch_15
        0xb8 -> :sswitch_16
        0xc2 -> :sswitch_17
        0xc8 -> :sswitch_18
        0xd2 -> :sswitch_19
        0xda -> :sswitch_1a
    .end sparse-switch
.end method

.method public setDEPRECATEDHighConfidenceInterpretation(Z)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 7122
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->dEPRECATEDHighConfidenceInterpretation_:Z

    .line 7123
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 7124
    return-object p0
.end method

.method public setFinskyDocid(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7034
    if-nez p1, :cond_0

    .line 7035
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7037
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->finskyDocid_:Ljava/lang/String;

    .line 7038
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 7039
    return-object p0
.end method

.method public setFinskyFetchDocid(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7056
    if-nez p1, :cond_0

    .line 7057
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7059
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->finskyFetchDocid_:Ljava/lang/String;

    .line 7060
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 7061
    return-object p0
.end method

.method public setIsFromSoundSearch(Z)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 7078
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->isFromSoundSearch_:Z

    .line 7079
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 7080
    return-object p0
.end method

.method public setItemImage([B)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 6889
    if-nez p1, :cond_0

    .line 6890
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6892
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemImage_:[B

    .line 6893
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 6894
    return-object p0
.end method

.method public setItemImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6911
    if-nez p1, :cond_0

    .line 6912
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6914
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemImageUrl_:Ljava/lang/String;

    .line 6915
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 6916
    return-object p0
.end method

.method public setItemNumberOfRatings(I)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7015
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemNumberOfRatings_:I

    .line 7016
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 7017
    return-object p0
.end method

.method public setItemPreviewUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6933
    if-nez p1, :cond_0

    .line 6934
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6936
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPreviewUrl_:Ljava/lang/String;

    .line 6937
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 6938
    return-object p0
.end method

.method public setItemRating(D)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 6996
    iput-wide p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemRating_:D

    .line 6997
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 6998
    return-object p0
.end method

.method public setItemRemainingRentalSeconds(J)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 6974
    iput-wide p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemRemainingRentalSeconds_:J

    .line 6975
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 6976
    return-object p0
.end method

.method public setMediaSource(I)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6792
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->mediaSource_:I

    .line 6793
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 6794
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6770
    if-nez p1, :cond_0

    .line 6771
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6773
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->name_:Ljava/lang/String;

    .line 6774
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 6775
    return-object p0
.end method

.method public setOwnershipStatus(I)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6955
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->ownershipStatus_:I

    .line 6956
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 6957
    return-object p0
.end method

.method public setSuggestedQuery(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6823
    if-nez p1, :cond_0

    .line 6824
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6826
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->suggestedQuery_:Ljava/lang/String;

    .line 6827
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 6828
    return-object p0
.end method

.method public setSuggestedQueryForPlayMusic(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6845
    if-nez p1, :cond_0

    .line 6846
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6848
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->suggestedQueryForPlayMusic_:Ljava/lang/String;

    .line 6849
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 6850
    return-object p0
.end method

.method public setTarget(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7097
    if-nez p1, :cond_0

    .line 7098
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7100
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->target_:Ljava/lang/String;

    .line 7101
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 7102
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6867
    if-nez p1, :cond_0

    .line 6868
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6870
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->url_:Ljava/lang/String;

    .line 6871
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    .line 6872
    return-object p0
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
    .line 7179
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 7180
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->name_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7182
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 7183
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->mediaSource_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7185
    :cond_1
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    .line 7186
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->url_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7188
    :cond_2
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 7189
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->target_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7191
    :cond_3
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->musicItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    if-eqz v2, :cond_4

    .line 7192
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->musicItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MusicItem;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7194
    :cond_4
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->movieItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    if-eqz v2, :cond_5

    .line 7195
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->movieItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$MovieItem;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7197
    :cond_5
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bookItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    if-eqz v2, :cond_6

    .line 7198
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bookItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7200
    :cond_6
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_7

    .line 7201
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->suggestedQuery_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7203
    :cond_7
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_8

    .line 7204
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemImage_:[B

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 7206
    :cond_8
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_9

    .line 7207
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemImageUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7209
    :cond_9
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_a

    .line 7210
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPreviewUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7212
    :cond_a
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_b

    .line 7213
    const/16 v2, 0xe

    iget-wide v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemRemainingRentalSeconds_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 7215
    :cond_b
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPriceTag:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPriceTag:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    array-length v2, v2

    if-lez v2, :cond_d

    .line 7216
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPriceTag:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    .line 7217
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemPriceTag:[Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;

    aget-object v0, v2, v1

    .line 7218
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    if-eqz v0, :cond_c

    .line 7219
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7216
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7223
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$PriceTag;
    .end local v1    # "i":I
    :cond_d
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_e

    .line 7224
    const/16 v2, 0x10

    iget-wide v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemRating_:D

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 7226
    :cond_e
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_f

    .line 7227
    const/16 v2, 0x11

    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->itemNumberOfRatings_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7229
    :cond_f
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_10

    .line 7230
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->finskyDocid_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7232
    :cond_10
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_11

    .line 7233
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->finskyFetchDocid_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7235
    :cond_11
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_12

    .line 7236
    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->isFromSoundSearch_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 7238
    :cond_12
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->appItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    if-eqz v2, :cond_13

    .line 7239
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->appItem:Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7241
    :cond_13
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag:[I

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag:[I

    array-length v2, v2

    if-lez v2, :cond_14

    .line 7242
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag:[I

    array-length v2, v2

    if-ge v1, v2, :cond_14

    .line 7243
    const/16 v2, 0x16

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->intentFlag:[I

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7242
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7246
    .end local v1    # "i":I
    :cond_14
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-eqz v2, :cond_15

    .line 7247
    const/16 v2, 0x17

    iget-boolean v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->dEPRECATEDHighConfidenceInterpretation_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 7249
    :cond_15
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->argument:[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->argument:[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    array-length v2, v2

    if-lez v2, :cond_17

    .line 7250
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->argument:[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    array-length v2, v2

    if-ge v1, v2, :cond_17

    .line 7251
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->argument:[Lcom/google/majel/proto/ActionV2Protos$ParseArgument;

    aget-object v0, v2, v1

    .line 7252
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$ParseArgument;
    if-eqz v0, :cond_16

    .line 7253
    const/16 v2, 0x18

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7250
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7257
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$ParseArgument;
    .end local v1    # "i":I
    :cond_17
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_18

    .line 7258
    const/16 v2, 0x19

    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->ownershipStatus_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7260
    :cond_18
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_19

    .line 7261
    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->suggestedQueryForPlayMusic_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7263
    :cond_19
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->whitelistedAppPackage:[Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->whitelistedAppPackage:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1b

    .line 7264
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->whitelistedAppPackage:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1b

    .line 7265
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;->whitelistedAppPackage:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 7266
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_1a

    .line 7267
    const/16 v2, 0x1b

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7264
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 7271
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method
