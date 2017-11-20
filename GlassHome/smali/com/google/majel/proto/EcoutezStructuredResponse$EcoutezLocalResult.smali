.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EcoutezLocalResult"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;


# instance fields
.field private actionBikingUrl_:Ljava/lang/String;

.field private actionDrivingUrl_:Ljava/lang/String;

.field private actionTransitUrl_:Ljava/lang/String;

.field private actionWalkingUrl_:Ljava/lang/String;

.field private address1_:Ljava/lang/String;

.field private address2_:Ljava/lang/String;

.field private addressForMapImageUrl_:Ljava/lang/String;

.field private address_:Ljava/lang/String;

.field public alias:Lcom/google/majel/proto/AliasProto$Alias;

.field private authority_:Ljava/lang/String;

.field private bitField0_:I

.field public bound:Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;

.field private businessDomain_:Ljava/lang/String;

.field private businessUrl_:Ljava/lang/String;

.field public chain:Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;

.field private clusterId_:Ljava/lang/String;

.field private deprecatedHours_:Ljava/lang/String;

.field public featureId:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

.field public hours:Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

.field private isChain_:Z

.field private latDegrees_:D

.field private latSpanDegrees_:D

.field private lngDegrees_:D

.field private lngSpanDegrees_:D

.field private mapsUrl_:Ljava/lang/String;

.field private nearLocation_:Ljava/lang/String;

.field private numHalfStars_:I

.field private numReviews_:I

.field private phoneNumber_:Ljava/lang/String;

.field private placePageUrl_:Ljava/lang/String;

.field private query_:Ljava/lang/String;

.field private radiusMeters_:D

.field public reviewSite:[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

.field private reviewSnippet_:Ljava/lang/String;

.field private reviewsText_:Ljava/lang/String;

.field private title_:Ljava/lang/String;

.field private transitStationName_:Ljava/lang/String;

.field private transitStationText_:Ljava/lang/String;

.field private transitStationType_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5143
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 5144
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 5145
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 4432
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    if-nez v0, :cond_1

    .line 4433
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4435
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    if-nez v0, :cond_0

    .line 4436
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 4438
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4440
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    return-object v0

    .line 4438
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5721
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5715
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 5148
    iput v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 5149
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->title_:Ljava/lang/String;

    .line 5150
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->businessUrl_:Ljava/lang/String;

    .line 5151
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->businessDomain_:Ljava/lang/String;

    .line 5152
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->placePageUrl_:Ljava/lang/String;

    .line 5153
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->mapsUrl_:Ljava/lang/String;

    .line 5154
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionDrivingUrl_:Ljava/lang/String;

    .line 5155
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionWalkingUrl_:Ljava/lang/String;

    .line 5156
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionTransitUrl_:Ljava/lang/String;

    .line 5157
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionBikingUrl_:Ljava/lang/String;

    .line 5158
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clusterId_:Ljava/lang/String;

    .line 5159
    iput-wide v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->latDegrees_:D

    .line 5160
    iput-wide v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->lngDegrees_:D

    .line 5161
    iput-wide v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->latSpanDegrees_:D

    .line 5162
    iput-wide v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->lngSpanDegrees_:D

    .line 5163
    iput-wide v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->radiusMeters_:D

    .line 5164
    iput-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bound:Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;

    .line 5165
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->nearLocation_:Ljava/lang/String;

    .line 5166
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->query_:Ljava/lang/String;

    .line 5167
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address_:Ljava/lang/String;

    .line 5168
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address1_:Ljava/lang/String;

    .line 5169
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address2_:Ljava/lang/String;

    .line 5170
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->phoneNumber_:Ljava/lang/String;

    .line 5171
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->addressForMapImageUrl_:Ljava/lang/String;

    .line 5172
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->deprecatedHours_:Ljava/lang/String;

    .line 5173
    iput-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hours:Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    .line 5174
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->authority_:Ljava/lang/String;

    .line 5175
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationText_:Ljava/lang/String;

    .line 5176
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationType_:Ljava/lang/String;

    .line 5177
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationName_:Ljava/lang/String;

    .line 5178
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSnippet_:Ljava/lang/String;

    .line 5179
    iput v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->numHalfStars_:I

    .line 5180
    iput v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->numReviews_:I

    .line 5181
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewsText_:Ljava/lang/String;

    .line 5182
    invoke-static {}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;->emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSite:[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    .line 5183
    iput-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->alias:Lcom/google/majel/proto/AliasProto$Alias;

    .line 5184
    iput-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->featureId:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    .line 5185
    iput-boolean v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->isChain_:Z

    .line 5186
    iput-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->chain:Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;

    .line 5187
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->cachedSize:I

    .line 5188
    return-object p0
.end method

.method public clearActionBikingUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4638
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionBikingUrl_:Ljava/lang/String;

    .line 4639
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4640
    return-object p0
.end method

.method public clearActionDrivingUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4572
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionDrivingUrl_:Ljava/lang/String;

    .line 4573
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4574
    return-object p0
.end method

.method public clearActionTransitUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4616
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionTransitUrl_:Ljava/lang/String;

    .line 4617
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4618
    return-object p0
.end method

.method public clearActionWalkingUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4594
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionWalkingUrl_:Ljava/lang/String;

    .line 4595
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4596
    return-object p0
.end method

.method public clearAddress()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 4824
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address_:Ljava/lang/String;

    .line 4825
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4826
    return-object p0
.end method

.method public clearAddress1()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 4846
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address1_:Ljava/lang/String;

    .line 4847
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4848
    return-object p0
.end method

.method public clearAddress2()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 4868
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address2_:Ljava/lang/String;

    .line 4869
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4870
    return-object p0
.end method

.method public clearAddressForMapImageUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 4912
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->addressForMapImageUrl_:Ljava/lang/String;

    .line 4913
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4914
    return-object p0
.end method

.method public clearAuthority()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 4959
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->authority_:Ljava/lang/String;

    .line 4960
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4961
    return-object p0
.end method

.method public clearBusinessDomain()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4506
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->businessDomain_:Ljava/lang/String;

    .line 4507
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4508
    return-object p0
.end method

.method public clearBusinessUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4484
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->businessUrl_:Ljava/lang/String;

    .line 4485
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4486
    return-object p0
.end method

.method public clearClusterId()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4660
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clusterId_:Ljava/lang/String;

    .line 4661
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4662
    return-object p0
.end method

.method public clearDeprecatedHours()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 4934
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->deprecatedHours_:Ljava/lang/String;

    .line 4935
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4936
    return-object p0
.end method

.method public clearIsChain()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 5135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->isChain_:Z

    .line 5136
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 5137
    return-object p0
.end method

.method public clearLatDegrees()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 4679
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->latDegrees_:D

    .line 4680
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4681
    return-object p0
.end method

.method public clearLatSpanDegrees()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 4717
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->latSpanDegrees_:D

    .line 4718
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4719
    return-object p0
.end method

.method public clearLngDegrees()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 4698
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->lngDegrees_:D

    .line 4699
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4700
    return-object p0
.end method

.method public clearLngSpanDegrees()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 4736
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->lngSpanDegrees_:D

    .line 4737
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4738
    return-object p0
.end method

.method public clearMapsUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4550
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->mapsUrl_:Ljava/lang/String;

    .line 4551
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4552
    return-object p0
.end method

.method public clearNearLocation()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 4780
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->nearLocation_:Ljava/lang/String;

    .line 4781
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4782
    return-object p0
.end method

.method public clearNumHalfStars()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 5066
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->numHalfStars_:I

    .line 5067
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 5068
    return-object p0
.end method

.method public clearNumReviews()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 5085
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->numReviews_:I

    .line 5086
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 5087
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 4890
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->phoneNumber_:Ljava/lang/String;

    .line 4891
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4892
    return-object p0
.end method

.method public clearPlacePageUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4528
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->placePageUrl_:Ljava/lang/String;

    .line 4529
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4530
    return-object p0
.end method

.method public clearQuery()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 4802
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->query_:Ljava/lang/String;

    .line 4803
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4804
    return-object p0
.end method

.method public clearRadiusMeters()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 4755
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->radiusMeters_:D

    .line 4756
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4757
    return-object p0
.end method

.method public clearReviewSnippet()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 5047
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSnippet_:Ljava/lang/String;

    .line 5048
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 5049
    return-object p0
.end method

.method public clearReviewsText()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 5107
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewsText_:Ljava/lang/String;

    .line 5108
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 5109
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1

    .prologue
    .line 4462
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->title_:Ljava/lang/String;

    .line 4463
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4464
    return-object p0
.end method

.method public clearTransitStationName()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 5025
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationName_:Ljava/lang/String;

    .line 5026
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 5027
    return-object p0
.end method

.method public clearTransitStationText()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 4981
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationText_:Ljava/lang/String;

    .line 4982
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4983
    return-object p0
.end method

.method public clearTransitStationType()Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2

    .prologue
    .line 5003
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationType_:Ljava/lang/String;

    .line 5004
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 5005
    return-object p0
.end method

.method public getActionBikingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4624
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionBikingUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getActionDrivingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4558
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionDrivingUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getActionTransitUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4602
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionTransitUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getActionWalkingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4580
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionWalkingUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4810
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4832
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address1_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4854
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address2_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressForMapImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4898
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->addressForMapImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4945
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->authority_:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4492
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->businessDomain_:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4470
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->businessUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getClusterId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4646
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clusterId_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeprecatedHours()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4920
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->deprecatedHours_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsChain()Z
    .locals 1

    .prologue
    .line 5124
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->isChain_:Z

    return v0
.end method

.method public getLatDegrees()D
    .locals 2

    .prologue
    .line 4668
    iget-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->latDegrees_:D

    return-wide v0
.end method

.method public getLatSpanDegrees()D
    .locals 2

    .prologue
    .line 4706
    iget-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->latSpanDegrees_:D

    return-wide v0
.end method

.method public getLngDegrees()D
    .locals 2

    .prologue
    .line 4687
    iget-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->lngDegrees_:D

    return-wide v0
.end method

.method public getLngSpanDegrees()D
    .locals 2

    .prologue
    .line 4725
    iget-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->lngSpanDegrees_:D

    return-wide v0
.end method

.method public getMapsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4536
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->mapsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getNearLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4766
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->nearLocation_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumHalfStars()I
    .locals 1

    .prologue
    .line 5055
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->numHalfStars_:I

    return v0
.end method

.method public getNumReviews()I
    .locals 1

    .prologue
    .line 5074
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->numReviews_:I

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4876
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->phoneNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacePageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4514
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->placePageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4788
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getRadiusMeters()D
    .locals 2

    .prologue
    .line 4744
    iget-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->radiusMeters_:D

    return-wide v0
.end method

.method public getReviewSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5033
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSnippet_:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewsText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5093
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewsText_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 5317
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 5318
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 5319
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->title_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5322
    :cond_0
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 5323
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->businessUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5326
    :cond_1
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 5327
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->businessDomain_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5330
    :cond_2
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    .line 5331
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->placePageUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5334
    :cond_3
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_4

    .line 5335
    const/4 v3, 0x5

    iget-wide v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->latDegrees_:D

    invoke-static {v3, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 5338
    :cond_4
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_5

    .line 5339
    const/4 v3, 0x6

    iget-wide v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->lngDegrees_:D

    invoke-static {v3, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 5342
    :cond_5
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const v4, 0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_6

    .line 5343
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->nearLocation_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5346
    :cond_6
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_7

    .line 5347
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->query_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5350
    :cond_7
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_8

    .line 5351
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5354
    :cond_8
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    if-eqz v3, :cond_9

    .line 5355
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address1_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5358
    :cond_9
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_a

    .line 5359
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address2_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5362
    :cond_a
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_b

    .line 5363
    const/16 v3, 0xc

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->phoneNumber_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5366
    :cond_b
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v4, 0x400000

    and-int/2addr v3, v4

    if-eqz v3, :cond_c

    .line 5367
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->deprecatedHours_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5370
    :cond_c
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    if-eqz v3, :cond_d

    .line 5371
    const/16 v3, 0xe

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->authority_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5374
    :cond_d
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v4, 0x1000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_e

    .line 5375
    const/16 v3, 0xf

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationText_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5378
    :cond_e
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v4, 0x2000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_f

    .line 5379
    const/16 v3, 0x10

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationType_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5382
    :cond_f
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v4, 0x4000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_10

    .line 5383
    const/16 v3, 0x11

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationName_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5386
    :cond_10
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v4, 0x8000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_11

    .line 5387
    const/16 v3, 0x12

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSnippet_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5390
    :cond_11
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_12

    .line 5391
    const/16 v3, 0x13

    iget v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->numHalfStars_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5394
    :cond_12
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_13

    .line 5395
    const/16 v3, 0x14

    iget v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->numReviews_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5398
    :cond_13
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-eqz v3, :cond_14

    .line 5399
    const/16 v3, 0x15

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewsText_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5402
    :cond_14
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSite:[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSite:[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    array-length v3, v3

    if-lez v3, :cond_16

    .line 5403
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSite:[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    array-length v3, v3

    if-ge v1, v3, :cond_16

    .line 5404
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSite:[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    aget-object v0, v3, v1

    .line 5405
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    if-eqz v0, :cond_15

    .line 5406
    const/16 v3, 0x16

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5403
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5411
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .end local v1    # "i":I
    :cond_16
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_17

    .line 5412
    const/16 v3, 0x17

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clusterId_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5415
    :cond_17
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_18

    .line 5416
    const/16 v3, 0x18

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->mapsUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5419
    :cond_18
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_19

    .line 5420
    const/16 v3, 0x19

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionDrivingUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5423
    :cond_19
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_1a

    .line 5424
    const/16 v3, 0x1a

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionWalkingUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5427
    :cond_1a
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1b

    .line 5428
    const/16 v3, 0x1b

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionTransitUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5431
    :cond_1b
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_1c

    .line 5432
    const/16 v3, 0x1c

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionBikingUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5435
    :cond_1c
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_1d

    .line 5436
    const/16 v3, 0x1d

    iget-wide v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->latSpanDegrees_:D

    invoke-static {v3, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 5439
    :cond_1d
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_1e

    .line 5440
    const/16 v3, 0x1e

    iget-wide v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->lngSpanDegrees_:D

    invoke-static {v3, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 5443
    :cond_1e
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hours:Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    if-eqz v3, :cond_1f

    .line 5444
    const/16 v3, 0x1f

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hours:Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5447
    :cond_1f
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_20

    .line 5448
    const/16 v3, 0x20

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->addressForMapImageUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5451
    :cond_20
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->alias:Lcom/google/majel/proto/AliasProto$Alias;

    if-eqz v3, :cond_21

    .line 5452
    const/16 v3, 0x21

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->alias:Lcom/google/majel/proto/AliasProto$Alias;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5455
    :cond_21
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->featureId:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    if-eqz v3, :cond_22

    .line 5456
    const/16 v3, 0x22

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->featureId:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5459
    :cond_22
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_23

    .line 5460
    const/16 v3, 0x23

    iget-boolean v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->isChain_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5463
    :cond_23
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->chain:Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;

    if-eqz v3, :cond_24

    .line 5464
    const/16 v3, 0x24

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->chain:Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5467
    :cond_24
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_25

    .line 5468
    const/16 v3, 0x25

    iget-wide v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->radiusMeters_:D

    invoke-static {v3, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 5471
    :cond_25
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bound:Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;

    if-eqz v3, :cond_26

    .line 5472
    const/16 v3, 0x26

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bound:Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5475
    :cond_26
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->cachedSize:I

    .line 5476
    return v2
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4448
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getTransitStationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5011
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationName_:Ljava/lang/String;

    return-object v0
.end method

.method public getTransitStationText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4967
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationText_:Ljava/lang/String;

    return-object v0
.end method

.method public getTransitStationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4989
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationType_:Ljava/lang/String;

    return-object v0
.end method

.method public hasActionBikingUrl()Z
    .locals 1

    .prologue
    .line 4635
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActionDrivingUrl()Z
    .locals 1

    .prologue
    .line 4569
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActionTransitUrl()Z
    .locals 1

    .prologue
    .line 4613
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActionWalkingUrl()Z
    .locals 1

    .prologue
    .line 4591
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAddress()Z
    .locals 2

    .prologue
    .line 4821
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAddress1()Z
    .locals 2

    .prologue
    .line 4843
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAddress2()Z
    .locals 2

    .prologue
    .line 4865
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAddressForMapImageUrl()Z
    .locals 2

    .prologue
    .line 4909
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAuthority()Z
    .locals 2

    .prologue
    .line 4956
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBusinessDomain()Z
    .locals 1

    .prologue
    .line 4503
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBusinessUrl()Z
    .locals 1

    .prologue
    .line 4481
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClusterId()Z
    .locals 1

    .prologue
    .line 4657
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeprecatedHours()Z
    .locals 2

    .prologue
    .line 4931
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsChain()Z
    .locals 2

    .prologue
    .line 5132
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatDegrees()Z
    .locals 1

    .prologue
    .line 4676
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatSpanDegrees()Z
    .locals 1

    .prologue
    .line 4714
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLngDegrees()Z
    .locals 1

    .prologue
    .line 4695
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLngSpanDegrees()Z
    .locals 1

    .prologue
    .line 4733
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMapsUrl()Z
    .locals 1

    .prologue
    .line 4547
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNearLocation()Z
    .locals 2

    .prologue
    .line 4777
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

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

.method public hasNumHalfStars()Z
    .locals 2

    .prologue
    .line 5063
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumReviews()Z
    .locals 2

    .prologue
    .line 5082
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhoneNumber()Z
    .locals 2

    .prologue
    .line 4887
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPlacePageUrl()Z
    .locals 1

    .prologue
    .line 4525
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasQuery()Z
    .locals 2

    .prologue
    .line 4799
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

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

.method public hasRadiusMeters()Z
    .locals 1

    .prologue
    .line 4752
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReviewSnippet()Z
    .locals 2

    .prologue
    .line 5044
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReviewsText()Z
    .locals 2

    .prologue
    .line 5104
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 4459
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransitStationName()Z
    .locals 2

    .prologue
    .line 5022
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransitStationText()Z
    .locals 2

    .prologue
    .line 4978
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransitStationType()Z
    .locals 2

    .prologue
    .line 5000
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

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
    .line 4426
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 7
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5484
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 5485
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 5489
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5490
    :sswitch_0
    return-object p0

    .line 5495
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->title_:Ljava/lang/String;

    .line 5496
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto :goto_0

    .line 5500
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->businessUrl_:Ljava/lang/String;

    .line 5501
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto :goto_0

    .line 5505
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->businessDomain_:Ljava/lang/String;

    .line 5506
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto :goto_0

    .line 5510
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->placePageUrl_:Ljava/lang/String;

    .line 5511
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto :goto_0

    .line 5515
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->latDegrees_:D

    .line 5516
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto :goto_0

    .line 5520
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->lngDegrees_:D

    .line 5521
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto :goto_0

    .line 5525
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->nearLocation_:Ljava/lang/String;

    .line 5526
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const v6, 0x8000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto :goto_0

    .line 5530
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->query_:Ljava/lang/String;

    .line 5531
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto :goto_0

    .line 5535
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address_:Ljava/lang/String;

    .line 5536
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v6, 0x20000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5540
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address1_:Ljava/lang/String;

    .line 5541
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v6, 0x40000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5545
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address2_:Ljava/lang/String;

    .line 5546
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v6, 0x80000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5550
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->phoneNumber_:Ljava/lang/String;

    .line 5551
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5555
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->deprecatedHours_:Ljava/lang/String;

    .line 5556
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v6, 0x400000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5560
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->authority_:Ljava/lang/String;

    .line 5561
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v6, 0x800000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5565
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationText_:Ljava/lang/String;

    .line 5566
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v6, 0x1000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5570
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationType_:Ljava/lang/String;

    .line 5571
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v6, 0x2000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5575
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationName_:Ljava/lang/String;

    .line 5576
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v6, 0x4000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5580
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSnippet_:Ljava/lang/String;

    .line 5581
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v6, 0x8000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5585
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->numHalfStars_:I

    .line 5586
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5590
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->numReviews_:I

    .line 5591
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v6, 0x20000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5595
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewsText_:Ljava/lang/String;

    .line 5596
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5600
    :sswitch_16
    const/16 v5, 0xb2

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5602
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSite:[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    if-nez v5, :cond_2

    move v1, v4

    .line 5603
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    .line 5605
    .local v2, "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    if-eqz v1, :cond_1

    .line 5606
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSite:[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5608
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 5609
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;-><init>()V

    aput-object v5, v2, v1

    .line 5610
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 5611
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5608
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5602
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSite:[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    array-length v1, v5

    goto :goto_1

    .line 5614
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;-><init>()V

    aput-object v5, v2, v1

    .line 5615
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 5616
    iput-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSite:[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    goto/16 :goto_0

    .line 5620
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clusterId_:Ljava/lang/String;

    .line 5621
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5625
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->mapsUrl_:Ljava/lang/String;

    .line 5626
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5630
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionDrivingUrl_:Ljava/lang/String;

    .line 5631
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5635
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionWalkingUrl_:Ljava/lang/String;

    .line 5636
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5640
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionTransitUrl_:Ljava/lang/String;

    .line 5641
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5645
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionBikingUrl_:Ljava/lang/String;

    .line 5646
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5650
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->latSpanDegrees_:D

    .line 5651
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5655
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->lngSpanDegrees_:D

    .line 5656
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5660
    :sswitch_1f
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hours:Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    if-nez v5, :cond_4

    .line 5661
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hours:Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    .line 5663
    :cond_4
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hours:Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5667
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->addressForMapImageUrl_:Ljava/lang/String;

    .line 5668
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v6, 0x200000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5672
    :sswitch_21
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->alias:Lcom/google/majel/proto/AliasProto$Alias;

    if-nez v5, :cond_5

    .line 5673
    new-instance v5, Lcom/google/majel/proto/AliasProto$Alias;

    invoke-direct {v5}, Lcom/google/majel/proto/AliasProto$Alias;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->alias:Lcom/google/majel/proto/AliasProto$Alias;

    .line 5675
    :cond_5
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->alias:Lcom/google/majel/proto/AliasProto$Alias;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5679
    :sswitch_22
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->featureId:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    if-nez v5, :cond_6

    .line 5680
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->featureId:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    .line 5682
    :cond_6
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->featureId:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5686
    :sswitch_23
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->isChain_:Z

    .line 5687
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v6, -0x80000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5691
    :sswitch_24
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->chain:Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;

    if-nez v5, :cond_7

    .line 5692
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->chain:Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;

    .line 5694
    :cond_7
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->chain:Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5698
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->radiusMeters_:D

    .line 5699
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    goto/16 :goto_0

    .line 5703
    :sswitch_26
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bound:Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;

    if-nez v5, :cond_8

    .line 5704
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bound:Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;

    .line 5706
    :cond_8
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bound:Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5485
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x29 -> :sswitch_5
        0x31 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x98 -> :sswitch_13
        0xa0 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
        0xba -> :sswitch_17
        0xc2 -> :sswitch_18
        0xca -> :sswitch_19
        0xd2 -> :sswitch_1a
        0xda -> :sswitch_1b
        0xe2 -> :sswitch_1c
        0xe9 -> :sswitch_1d
        0xf1 -> :sswitch_1e
        0xfa -> :sswitch_1f
        0x102 -> :sswitch_20
        0x10a -> :sswitch_21
        0x112 -> :sswitch_22
        0x118 -> :sswitch_23
        0x122 -> :sswitch_24
        0x129 -> :sswitch_25
        0x132 -> :sswitch_26
    .end sparse-switch
.end method

.method public setActionBikingUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4627
    if-nez p1, :cond_0

    .line 4628
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4630
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionBikingUrl_:Ljava/lang/String;

    .line 4631
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4632
    return-object p0
.end method

.method public setActionDrivingUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4561
    if-nez p1, :cond_0

    .line 4562
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4564
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionDrivingUrl_:Ljava/lang/String;

    .line 4565
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4566
    return-object p0
.end method

.method public setActionTransitUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4605
    if-nez p1, :cond_0

    .line 4606
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4608
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionTransitUrl_:Ljava/lang/String;

    .line 4609
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4610
    return-object p0
.end method

.method public setActionWalkingUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4583
    if-nez p1, :cond_0

    .line 4584
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4586
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionWalkingUrl_:Ljava/lang/String;

    .line 4587
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4588
    return-object p0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4813
    if-nez p1, :cond_0

    .line 4814
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4816
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address_:Ljava/lang/String;

    .line 4817
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4818
    return-object p0
.end method

.method public setAddress1(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4835
    if-nez p1, :cond_0

    .line 4836
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4838
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address1_:Ljava/lang/String;

    .line 4839
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4840
    return-object p0
.end method

.method public setAddress2(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4857
    if-nez p1, :cond_0

    .line 4858
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4860
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address2_:Ljava/lang/String;

    .line 4861
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4862
    return-object p0
.end method

.method public setAddressForMapImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4901
    if-nez p1, :cond_0

    .line 4902
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4904
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->addressForMapImageUrl_:Ljava/lang/String;

    .line 4905
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4906
    return-object p0
.end method

.method public setAuthority(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4948
    if-nez p1, :cond_0

    .line 4949
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4951
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->authority_:Ljava/lang/String;

    .line 4952
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4953
    return-object p0
.end method

.method public setBusinessDomain(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4495
    if-nez p1, :cond_0

    .line 4496
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4498
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->businessDomain_:Ljava/lang/String;

    .line 4499
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4500
    return-object p0
.end method

.method public setBusinessUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4473
    if-nez p1, :cond_0

    .line 4474
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4476
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->businessUrl_:Ljava/lang/String;

    .line 4477
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4478
    return-object p0
.end method

.method public setClusterId(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4649
    if-nez p1, :cond_0

    .line 4650
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4652
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clusterId_:Ljava/lang/String;

    .line 4653
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4654
    return-object p0
.end method

.method public setDeprecatedHours(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4923
    if-nez p1, :cond_0

    .line 4924
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4926
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->deprecatedHours_:Ljava/lang/String;

    .line 4927
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4928
    return-object p0
.end method

.method public setIsChain(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 5127
    iput-boolean p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->isChain_:Z

    .line 5128
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 5129
    return-object p0
.end method

.method public setLatDegrees(D)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 4671
    iput-wide p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->latDegrees_:D

    .line 4672
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4673
    return-object p0
.end method

.method public setLatSpanDegrees(D)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 4709
    iput-wide p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->latSpanDegrees_:D

    .line 4710
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4711
    return-object p0
.end method

.method public setLngDegrees(D)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 4690
    iput-wide p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->lngDegrees_:D

    .line 4691
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4692
    return-object p0
.end method

.method public setLngSpanDegrees(D)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 4728
    iput-wide p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->lngSpanDegrees_:D

    .line 4729
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4730
    return-object p0
.end method

.method public setMapsUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4539
    if-nez p1, :cond_0

    .line 4540
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4542
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->mapsUrl_:Ljava/lang/String;

    .line 4543
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4544
    return-object p0
.end method

.method public setNearLocation(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4769
    if-nez p1, :cond_0

    .line 4770
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4772
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->nearLocation_:Ljava/lang/String;

    .line 4773
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4774
    return-object p0
.end method

.method public setNumHalfStars(I)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 5058
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->numHalfStars_:I

    .line 5059
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 5060
    return-object p0
.end method

.method public setNumReviews(I)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 5077
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->numReviews_:I

    .line 5078
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 5079
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4879
    if-nez p1, :cond_0

    .line 4880
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4882
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->phoneNumber_:Ljava/lang/String;

    .line 4883
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4884
    return-object p0
.end method

.method public setPlacePageUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4517
    if-nez p1, :cond_0

    .line 4518
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4520
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->placePageUrl_:Ljava/lang/String;

    .line 4521
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4522
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4791
    if-nez p1, :cond_0

    .line 4792
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4794
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->query_:Ljava/lang/String;

    .line 4795
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4796
    return-object p0
.end method

.method public setRadiusMeters(D)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 4747
    iput-wide p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->radiusMeters_:D

    .line 4748
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4749
    return-object p0
.end method

.method public setReviewSnippet(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5036
    if-nez p1, :cond_0

    .line 5037
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5039
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSnippet_:Ljava/lang/String;

    .line 5040
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 5041
    return-object p0
.end method

.method public setReviewsText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5096
    if-nez p1, :cond_0

    .line 5097
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5099
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewsText_:Ljava/lang/String;

    .line 5100
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 5101
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4451
    if-nez p1, :cond_0

    .line 4452
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4454
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->title_:Ljava/lang/String;

    .line 4455
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4456
    return-object p0
.end method

.method public setTransitStationName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5014
    if-nez p1, :cond_0

    .line 5015
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5017
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationName_:Ljava/lang/String;

    .line 5018
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 5019
    return-object p0
.end method

.method public setTransitStationText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4970
    if-nez p1, :cond_0

    .line 4971
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4973
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationText_:Ljava/lang/String;

    .line 4974
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4975
    return-object p0
.end method

.method public setTransitStationType(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4992
    if-nez p1, :cond_0

    .line 4993
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4995
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationType_:Ljava/lang/String;

    .line 4996
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    .line 4997
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
    .line 5194
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 5195
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->title_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5197
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 5198
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->businessUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5200
    :cond_1
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 5201
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->businessDomain_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5203
    :cond_2
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 5204
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->placePageUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5206
    :cond_3
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_4

    .line 5207
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->latDegrees_:D

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 5209
    :cond_4
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_5

    .line 5210
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->lngDegrees_:D

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 5212
    :cond_5
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    .line 5213
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->nearLocation_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5215
    :cond_6
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-eqz v2, :cond_7

    .line 5216
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->query_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5218
    :cond_7
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_8

    .line 5219
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5221
    :cond_8
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_9

    .line 5222
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address1_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5224
    :cond_9
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_a

    .line 5225
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->address2_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5227
    :cond_a
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_b

    .line 5228
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->phoneNumber_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5230
    :cond_b
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_c

    .line 5231
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->deprecatedHours_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5233
    :cond_c
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-eqz v2, :cond_d

    .line 5234
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->authority_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5236
    :cond_d
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    .line 5237
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationText_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5239
    :cond_e
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    .line 5240
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationType_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5242
    :cond_f
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_10

    .line 5243
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->transitStationName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5245
    :cond_10
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v3, 0x8000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_11

    .line 5246
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSnippet_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5248
    :cond_11
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_12

    .line 5249
    const/16 v2, 0x13

    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->numHalfStars_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5251
    :cond_12
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_13

    .line 5252
    const/16 v2, 0x14

    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->numReviews_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5254
    :cond_13
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_14

    .line 5255
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewsText_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5257
    :cond_14
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSite:[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSite:[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    array-length v2, v2

    if-lez v2, :cond_16

    .line 5258
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSite:[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    array-length v2, v2

    if-ge v1, v2, :cond_16

    .line 5259
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->reviewSite:[Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;

    aget-object v0, v2, v1

    .line 5260
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    if-eqz v0, :cond_15

    .line 5261
    const/16 v2, 0x16

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 5258
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5265
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$ReviewSite;
    .end local v1    # "i":I
    :cond_16
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_17

    .line 5266
    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->clusterId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5268
    :cond_17
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_18

    .line 5269
    const/16 v2, 0x18

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->mapsUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5271
    :cond_18
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_19

    .line 5272
    const/16 v2, 0x19

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionDrivingUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5274
    :cond_19
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1a

    .line 5275
    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionWalkingUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5277
    :cond_1a
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1b

    .line 5278
    const/16 v2, 0x1b

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionTransitUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5280
    :cond_1b
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_1c

    .line 5281
    const/16 v2, 0x1c

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->actionBikingUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5283
    :cond_1c
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_1d

    .line 5284
    const/16 v2, 0x1d

    iget-wide v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->latSpanDegrees_:D

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 5286
    :cond_1d
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_1e

    .line 5287
    const/16 v2, 0x1e

    iget-wide v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->lngSpanDegrees_:D

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 5289
    :cond_1e
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hours:Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    if-eqz v2, :cond_1f

    .line 5290
    const/16 v2, 0x1f

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->hours:Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 5292
    :cond_1f
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_20

    .line 5293
    const/16 v2, 0x20

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->addressForMapImageUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5295
    :cond_20
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->alias:Lcom/google/majel/proto/AliasProto$Alias;

    if-eqz v2, :cond_21

    .line 5296
    const/16 v2, 0x21

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->alias:Lcom/google/majel/proto/AliasProto$Alias;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 5298
    :cond_21
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->featureId:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    if-eqz v2, :cond_22

    .line 5299
    const/16 v2, 0x22

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->featureId:Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 5301
    :cond_22
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_23

    .line 5302
    const/16 v2, 0x23

    iget-boolean v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->isChain_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5304
    :cond_23
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->chain:Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;

    if-eqz v2, :cond_24

    .line 5305
    const/16 v2, 0x24

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->chain:Lcom/google/majel/proto/EcoutezStructuredResponse$Chain;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 5307
    :cond_24
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_25

    .line 5308
    const/16 v2, 0x25

    iget-wide v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->radiusMeters_:D

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 5310
    :cond_25
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bound:Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;

    if-eqz v2, :cond_26

    .line 5311
    const/16 v2, 0x26

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;->bound:Lcom/google/majel/proto/EcoutezStructuredResponse$LocationBound;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 5313
    :cond_26
    return-void
.end method
