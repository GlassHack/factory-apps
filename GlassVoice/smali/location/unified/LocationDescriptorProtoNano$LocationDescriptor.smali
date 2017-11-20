.class public final Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "LocationDescriptorProtoNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProtoNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationDescriptor"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;


# instance fields
.field private attributes_:Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

.field private bitField0_:I

.field private confidence_:I

.field private diagnosticInfo_:Ljava/lang/String;

.field private featureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

.field private historicalProducer_:I

.field private historicalProminence_:I

.field private historicalRole_:I

.field private language_:Ljava/lang/String;

.field private latlngSpan_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

.field private latlng_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

.field private levelFeatureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

.field private levelNumber_:F

.field private loc_:Ljava/lang/String;

.field private mid_:J

.field private producer_:I

.field private provenance_:I

.field private radius_:F

.field private rect_:Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

.field private role_:I

.field public semantic:[I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1189
    const/4 v0, 0x0

    new-array v0, v0, [Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    sput-object v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->EMPTY_ARRAY:[Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1190
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1195
    iput v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->role_:I

    .line 1214
    iput v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->producer_:I

    .line 1233
    iput-wide v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->timestamp_:J

    .line 1252
    const-string v0, ""

    iput-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->loc_:Ljava/lang/String;

    .line 1331
    iput v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->radius_:F

    .line 1350
    const/16 v0, 0x64

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->confidence_:I

    .line 1388
    iput-wide v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->mid_:J

    .line 1426
    iput v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelNumber_:F

    .line 1445
    const-string v0, ""

    iput-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->language_:Ljava/lang/String;

    .line 1467
    iput v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->provenance_:I

    .line 1486
    iput v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalRole_:I

    .line 1505
    iput v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalProducer_:I

    .line 1524
    iput v1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalProminence_:I

    .line 1562
    const-string v0, ""

    iput-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->diagnosticInfo_:Ljava/lang/String;

    .line 1584
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->semantic:[I

    .line 1190
    return-void
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2106
    new-instance v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2100
    new-instance v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    return-object v0
.end method


# virtual methods
.method public clearAttributes()Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1

    .prologue
    .line 1558
    const/4 v0, 0x0

    iput-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->attributes_:Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    .line 1559
    return-object p0
.end method

.method public clearConfidence()Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1

    .prologue
    .line 1363
    const/16 v0, 0x64

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->confidence_:I

    .line 1364
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1365
    return-object p0
.end method

.method public clearDiagnosticInfo()Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1

    .prologue
    .line 1578
    const-string v0, ""

    iput-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->diagnosticInfo_:Ljava/lang/String;

    .line 1579
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1580
    return-object p0
.end method

.method public clearFeatureId()Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1

    .prologue
    .line 1384
    const/4 v0, 0x0

    iput-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    .line 1385
    return-object p0
.end method

.method public clearHistoricalProducer()Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1

    .prologue
    .line 1518
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalProducer_:I

    .line 1519
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1520
    return-object p0
.end method

.method public clearHistoricalProminence()Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1

    .prologue
    .line 1537
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalProminence_:I

    .line 1538
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1539
    return-object p0
.end method

.method public clearHistoricalRole()Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1

    .prologue
    .line 1499
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalRole_:I

    .line 1500
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1501
    return-object p0
.end method

.method public clearLanguage()Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1

    .prologue
    .line 1461
    const-string v0, ""

    iput-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->language_:Ljava/lang/String;

    .line 1462
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1463
    return-object p0
.end method

.method public clearLatlng()Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1

    .prologue
    .line 1289
    const/4 v0, 0x0

    iput-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    .line 1290
    return-object p0
.end method

.method public clearLatlngSpan()Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1

    .prologue
    .line 1308
    const/4 v0, 0x0

    iput-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    .line 1309
    return-object p0
.end method

.method public clearLevelFeatureId()Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1

    .prologue
    .line 1422
    const/4 v0, 0x0

    iput-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelFeatureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    .line 1423
    return-object p0
.end method

.method public clearLevelNumber()Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1

    .prologue
    .line 1439
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelNumber_:F

    .line 1440
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1441
    return-object p0
.end method

.method public clearLoc()Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1

    .prologue
    .line 1268
    const-string v0, ""

    iput-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->loc_:Ljava/lang/String;

    .line 1269
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1270
    return-object p0
.end method

.method public clearMid()Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 2

    .prologue
    .line 1401
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->mid_:J

    .line 1402
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1403
    return-object p0
.end method

.method public clearProducer()Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1

    .prologue
    .line 1227
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->producer_:I

    .line 1228
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1229
    return-object p0
.end method

.method public clearProvenance()Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1

    .prologue
    .line 1480
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->provenance_:I

    .line 1481
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1482
    return-object p0
.end method

.method public clearRadius()Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1

    .prologue
    .line 1344
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->radius_:F

    .line 1345
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1346
    return-object p0
.end method

.method public clearRect()Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1

    .prologue
    .line 1327
    const/4 v0, 0x0

    iput-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->rect_:Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    .line 1328
    return-object p0
.end method

.method public clearRole()Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1

    .prologue
    .line 1208
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->role_:I

    .line 1209
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1210
    return-object p0
.end method

.method public clearTimestamp()Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 2

    .prologue
    .line 1246
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->timestamp_:J

    .line 1247
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1248
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1588
    if-ne p1, p0, :cond_1

    .line 1591
    :cond_0
    :goto_0
    return v1

    .line 1589
    :cond_1
    instance-of v3, p1, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1590
    check-cast v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    .line 1591
    .local v0, "other":Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    iget v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->role_:I

    iget v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->role_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->producer_:I

    iget v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->producer_:I

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->timestamp_:J

    iget-wide v5, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->timestamp_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->loc_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->loc_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-nez v3, :cond_5

    iget-object v3, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-nez v3, :cond_6

    iget-object v3, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->rect_:Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    if-nez v3, :cond_7

    iget-object v3, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->rect_:Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    if-nez v3, :cond_3

    :goto_4
    iget v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->radius_:F

    iget v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->radius_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->confidence_:I

    iget v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->confidence_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    if-nez v3, :cond_8

    iget-object v3, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    if-nez v3, :cond_3

    :goto_5
    iget-wide v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->mid_:J

    iget-wide v5, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->mid_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelFeatureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    if-nez v3, :cond_9

    iget-object v3, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelFeatureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    if-nez v3, :cond_3

    :goto_6
    iget v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelNumber_:F

    iget v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelNumber_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->language_:Ljava/lang/String;

    if-nez v3, :cond_a

    iget-object v3, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->language_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_7
    iget v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->provenance_:I

    iget v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->provenance_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalRole_:I

    iget v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalRole_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalProducer_:I

    iget v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalProducer_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalProminence_:I

    iget v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalProminence_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->attributes_:Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    if-nez v3, :cond_b

    iget-object v3, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->attributes_:Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    if-nez v3, :cond_3

    :goto_8
    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->diagnosticInfo_:Ljava/lang/String;

    if-nez v3, :cond_c

    iget-object v3, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->diagnosticInfo_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_9
    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->semantic:[I

    iget-object v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->semantic:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->loc_:Ljava/lang/String;

    iget-object v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->loc_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    iget-object v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-virtual {v3, v4}, Llocation/unified/LocationDescriptorProtoNano$LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_2

    :cond_6
    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    iget-object v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-virtual {v3, v4}, Llocation/unified/LocationDescriptorProtoNano$LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_3

    :cond_7
    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->rect_:Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    iget-object v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->rect_:Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    invoke-virtual {v3, v4}, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_4

    :cond_8
    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    iget-object v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    invoke-virtual {v3, v4}, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_5

    :cond_9
    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelFeatureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    iget-object v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelFeatureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    invoke-virtual {v3, v4}, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_6

    :cond_a
    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->language_:Ljava/lang/String;

    iget-object v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->language_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_7

    :cond_b
    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->attributes_:Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    iget-object v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->attributes_:Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    invoke-virtual {v3, v4}, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_8

    :cond_c
    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->diagnosticInfo_:Ljava/lang/String;

    iget-object v4, v0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->diagnosticInfo_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_9
.end method

.method public getAttributes()Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;
    .locals 1

    .prologue
    .line 1545
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->attributes_:Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    return-object v0
.end method

.method public getConfidence()I
    .locals 1

    .prologue
    .line 1352
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->confidence_:I

    return v0
.end method

.method public getDiagnosticInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1564
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->diagnosticInfo_:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureId()Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    return-object v0
.end method

.method public getHistoricalProducer()I
    .locals 1

    .prologue
    .line 1507
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalProducer_:I

    return v0
.end method

.method public getHistoricalProminence()I
    .locals 1

    .prologue
    .line 1526
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalProminence_:I

    return v0
.end method

.method public getHistoricalRole()I
    .locals 1

    .prologue
    .line 1488
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalRole_:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->language_:Ljava/lang/String;

    return-object v0
.end method

.method public getLatlng()Llocation/unified/LocationDescriptorProtoNano$LatLng;
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    return-object v0
.end method

.method public getLatlngSpan()Llocation/unified/LocationDescriptorProtoNano$LatLng;
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    return-object v0
.end method

.method public getLevelFeatureId()Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelFeatureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    return-object v0
.end method

.method public getLevelNumber()F
    .locals 1

    .prologue
    .line 1428
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelNumber_:F

    return v0
.end method

.method public getLoc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->loc_:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()J
    .locals 2

    .prologue
    .line 1390
    iget-wide v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->mid_:J

    return-wide v0
.end method

.method public getProducer()I
    .locals 1

    .prologue
    .line 1216
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->producer_:I

    return v0
.end method

.method public getProvenance()I
    .locals 1

    .prologue
    .line 1469
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->provenance_:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 1333
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->radius_:F

    return v0
.end method

.method public getRect()Llocation/unified/LocationDescriptorProtoNano$LatLngRect;
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->rect_:Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    return-object v0
.end method

.method public getRole()I
    .locals 1

    .prologue
    .line 1197
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->role_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 9

    .prologue
    .line 1716
    const/4 v5, 0x0

    .line 1717
    .local v5, "size":I
    iget v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 1718
    const/4 v6, 0x1

    iget v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->role_:I

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 1721
    :cond_0
    iget v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    .line 1722
    const/4 v6, 0x2

    iget v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->producer_:I

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 1725
    :cond_1
    iget v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2

    .line 1726
    const/4 v6, 0x3

    iget-wide v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->timestamp_:J

    invoke-static {v6, v7, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 1729
    :cond_2
    iget v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_3

    .line 1730
    const/4 v6, 0x4

    iget-object v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->loc_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1733
    :cond_3
    iget-object v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-eqz v6, :cond_4

    .line 1734
    const/4 v6, 0x5

    iget-object v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1737
    :cond_4
    iget-object v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-eqz v6, :cond_5

    .line 1738
    const/4 v6, 0x6

    iget-object v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1741
    :cond_5
    iget v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_6

    .line 1742
    const/4 v6, 0x7

    iget v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->radius_:F

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v6

    add-int/2addr v5, v6

    .line 1745
    :cond_6
    iget v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_7

    .line 1746
    const/16 v6, 0x8

    iget v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->confidence_:I

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 1749
    :cond_7
    iget v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_8

    .line 1750
    const/16 v6, 0x9

    iget v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->provenance_:I

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 1753
    :cond_8
    iget-object v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    if-eqz v6, :cond_9

    .line 1754
    const/16 v6, 0xa

    iget-object v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1757
    :cond_9
    iget v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_a

    .line 1758
    const/16 v6, 0xb

    iget-object v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->language_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1761
    :cond_a
    iget v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_b

    .line 1762
    const/16 v6, 0xc

    iget v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalRole_:I

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 1765
    :cond_b
    iget v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_c

    .line 1766
    const/16 v6, 0xd

    iget v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalProducer_:I

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 1769
    :cond_c
    iget-object v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->rect_:Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    if-eqz v6, :cond_d

    .line 1770
    const/16 v6, 0xe

    iget-object v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->rect_:Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1773
    :cond_d
    iget v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_e

    .line 1774
    const/16 v6, 0xf

    iget v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalProminence_:I

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 1777
    :cond_e
    iget v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_f

    .line 1778
    const/16 v6, 0x10

    iget-wide v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->mid_:J

    invoke-static {v6, v7, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 1781
    :cond_f
    iget-object v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelFeatureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    if-eqz v6, :cond_10

    .line 1782
    const/16 v6, 0x11

    iget-object v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelFeatureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1785
    :cond_10
    iget v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_11

    .line 1786
    const/16 v6, 0x12

    iget v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelNumber_:F

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v6

    add-int/2addr v5, v6

    .line 1789
    :cond_11
    iget-object v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->attributes_:Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    if-eqz v6, :cond_12

    .line 1790
    const/16 v6, 0x13

    iget-object v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->attributes_:Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1793
    :cond_12
    iget v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_13

    .line 1794
    const/16 v6, 0x14

    iget-object v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->diagnosticInfo_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1797
    :cond_13
    iget-object v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->semantic:[I

    if-eqz v6, :cond_15

    iget-object v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->semantic:[I

    array-length v6, v6

    if-lez v6, :cond_15

    .line 1798
    const/4 v1, 0x0

    .line 1799
    .local v1, "dataSize":I
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->semantic:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_14

    aget v2, v0, v3

    .line 1800
    .local v2, "element":I
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 1799
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1803
    .end local v2    # "element":I
    :cond_14
    add-int/2addr v5, v1

    .line 1804
    iget-object v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->semantic:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 1806
    .end local v0    # "arr$":[I
    .end local v1    # "dataSize":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_15
    iput v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->cachedSize:I

    .line 1807
    return v5
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 1235
    iget-wide v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->timestamp_:J

    return-wide v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 1555
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->attributes_:Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 1360
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDiagnosticInfo()Z
    .locals 1

    .prologue
    .line 1575
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFeatureId()Z
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHistoricalProducer()Z
    .locals 1

    .prologue
    .line 1515
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHistoricalProminence()Z
    .locals 1

    .prologue
    .line 1534
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHistoricalRole()Z
    .locals 1

    .prologue
    .line 1496
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLanguage()Z
    .locals 1

    .prologue
    .line 1458
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatlng()Z
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatlngSpan()Z
    .locals 1

    .prologue
    .line 1305
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLevelFeatureId()Z
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelFeatureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLevelNumber()Z
    .locals 1

    .prologue
    .line 1436
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLoc()Z
    .locals 1

    .prologue
    .line 1265
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMid()Z
    .locals 1

    .prologue
    .line 1398
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProducer()Z
    .locals 1

    .prologue
    .line 1224
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProvenance()Z
    .locals 1

    .prologue
    .line 1477
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRadius()Z
    .locals 1

    .prologue
    .line 1341
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRect()Z
    .locals 1

    .prologue
    .line 1324
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->rect_:Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRole()Z
    .locals 1

    .prologue
    .line 1205
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 1243
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

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
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x0

    .line 1615
    const/16 v1, 0x11

    .line 1616
    .local v1, "result":I
    iget v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->role_:I

    add-int/lit16 v1, v2, 0x20f

    .line 1617
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->producer_:I

    add-int v1, v2, v4

    .line 1618
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->timestamp_:J

    iget-wide v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->timestamp_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 1619
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->loc_:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 1620
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 1621
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 1622
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->rect_:Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    if-nez v2, :cond_4

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 1623
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->radius_:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int v1, v2, v4

    .line 1624
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->confidence_:I

    add-int v1, v2, v4

    .line 1625
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    if-nez v2, :cond_5

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 1626
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->mid_:J

    iget-wide v6, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->mid_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 1627
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelFeatureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    if-nez v2, :cond_6

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 1628
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelNumber_:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int v1, v2, v4

    .line 1629
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->language_:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v3

    :goto_6
    add-int v1, v4, v2

    .line 1630
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->provenance_:I

    add-int v1, v2, v4

    .line 1631
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalRole_:I

    add-int v1, v2, v4

    .line 1632
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalProducer_:I

    add-int v1, v2, v4

    .line 1633
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalProminence_:I

    add-int v1, v2, v4

    .line 1634
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->attributes_:Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    if-nez v2, :cond_8

    move v2, v3

    :goto_7
    add-int v1, v4, v2

    .line 1635
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->diagnosticInfo_:Ljava/lang/String;

    if-nez v4, :cond_9

    :goto_8
    add-int v1, v2, v3

    .line 1636
    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->semantic:[I

    if-nez v2, :cond_a

    mul-int/lit8 v1, v1, 0x1f

    .line 1642
    :cond_0
    return v1

    .line 1619
    :cond_1
    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->loc_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 1620
    :cond_2
    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-virtual {v2}, Llocation/unified/LocationDescriptorProtoNano$LatLng;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 1621
    :cond_3
    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-virtual {v2}, Llocation/unified/LocationDescriptorProtoNano$LatLng;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 1622
    :cond_4
    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->rect_:Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    invoke-virtual {v2}, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 1625
    :cond_5
    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    invoke-virtual {v2}, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->hashCode()I

    move-result v2

    goto :goto_4

    .line 1627
    :cond_6
    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelFeatureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    invoke-virtual {v2}, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;->hashCode()I

    move-result v2

    goto :goto_5

    .line 1629
    :cond_7
    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->language_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    .line 1634
    :cond_8
    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->attributes_:Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    invoke-virtual {v2}, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;->hashCode()I

    move-result v2

    goto :goto_7

    .line 1635
    :cond_9
    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->diagnosticInfo_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_8

    .line 1638
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->semantic:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1639
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->semantic:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    .line 1638
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
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
    .line 1186
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 12
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1815
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1816
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1820
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1821
    :sswitch_0
    return-object p0

    .line 1826
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 1827
    .local v4, "temp":I
    if-eqz v4, :cond_1

    if-eq v4, v8, :cond_1

    if-eq v4, v9, :cond_1

    if-eq v4, v10, :cond_1

    if-eq v4, v11, :cond_1

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1836
    :cond_1
    iput v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->role_:I

    .line 1840
    :goto_1
    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    goto :goto_0

    .line 1838
    :cond_2
    iput v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->role_:I

    goto :goto_1

    .line 1844
    .end local v4    # "temp":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 1845
    .restart local v4    # "temp":I
    if-eqz v4, :cond_3

    if-eq v4, v8, :cond_3

    if-eq v4, v9, :cond_3

    if-eq v4, v10, :cond_3

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_3

    if-eq v4, v11, :cond_3

    const/4 v5, 0x5

    if-eq v4, v5, :cond_3

    const/4 v5, 0x6

    if-eq v4, v5, :cond_3

    const/16 v5, 0x29

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_3

    const/16 v5, 0xc

    if-eq v4, v5, :cond_3

    const/16 v5, 0xb

    if-eq v4, v5, :cond_3

    const/16 v5, 0x11

    if-eq v4, v5, :cond_3

    const/4 v5, 0x7

    if-eq v4, v5, :cond_3

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    const/16 v5, 0xd

    if-eq v4, v5, :cond_3

    const/16 v5, 0xe

    if-eq v4, v5, :cond_3

    const/16 v5, 0x22

    if-eq v4, v5, :cond_3

    const/16 v5, 0xf

    if-eq v4, v5, :cond_3

    const/16 v5, 0x10

    if-eq v4, v5, :cond_3

    const/16 v5, 0x12

    if-eq v4, v5, :cond_3

    const/16 v5, 0x14

    if-eq v4, v5, :cond_3

    const/16 v5, 0x15

    if-eq v4, v5, :cond_3

    const/16 v5, 0x16

    if-eq v4, v5, :cond_3

    const/16 v5, 0x17

    if-eq v4, v5, :cond_3

    const/16 v5, 0x18

    if-eq v4, v5, :cond_3

    const/16 v5, 0x19

    if-eq v4, v5, :cond_3

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_3

    const/16 v5, 0x1b

    if-eq v4, v5, :cond_3

    const/16 v5, 0x1c

    if-eq v4, v5, :cond_3

    const/16 v5, 0x1d

    if-eq v4, v5, :cond_3

    const/16 v5, 0x1e

    if-eq v4, v5, :cond_3

    const/16 v5, 0x1f

    if-eq v4, v5, :cond_3

    const/16 v5, 0x23

    if-eq v4, v5, :cond_3

    const/16 v5, 0x21

    if-eq v4, v5, :cond_3

    const/16 v5, 0x24

    if-eq v4, v5, :cond_3

    const/16 v5, 0x25

    if-eq v4, v5, :cond_3

    const/16 v5, 0x26

    if-eq v4, v5, :cond_3

    const/16 v5, 0x27

    if-eq v4, v5, :cond_3

    const/16 v5, 0x20

    if-eq v4, v5, :cond_3

    const/16 v5, 0x28

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    const/16 v5, 0x9

    if-eq v4, v5, :cond_3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    const/16 v5, 0x13

    if-ne v4, v5, :cond_4

    .line 1893
    :cond_3
    iput v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->producer_:I

    .line 1897
    :goto_2
    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    goto/16 :goto_0

    .line 1895
    :cond_4
    iput v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->producer_:I

    goto :goto_2

    .line 1901
    .end local v4    # "temp":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->timestamp_:J

    .line 1902
    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    goto/16 :goto_0

    .line 1906
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->loc_:Ljava/lang/String;

    .line 1907
    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    goto/16 :goto_0

    .line 1911
    :sswitch_5
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-nez v5, :cond_5

    .line 1912
    new-instance v5, Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-direct {v5}, Llocation/unified/LocationDescriptorProtoNano$LatLng;-><init>()V

    iput-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    .line 1914
    :cond_5
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1918
    :sswitch_6
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-nez v5, :cond_6

    .line 1919
    new-instance v5, Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-direct {v5}, Llocation/unified/LocationDescriptorProtoNano$LatLng;-><init>()V

    iput-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    .line 1921
    :cond_6
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1925
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->radius_:F

    .line 1926
    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    goto/16 :goto_0

    .line 1930
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->confidence_:I

    .line 1931
    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    goto/16 :goto_0

    .line 1935
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 1936
    .restart local v4    # "temp":I
    if-eqz v4, :cond_7

    if-eq v4, v8, :cond_7

    if-eq v4, v9, :cond_7

    if-eq v4, v10, :cond_7

    if-eq v4, v11, :cond_7

    const/4 v5, 0x5

    if-eq v4, v5, :cond_7

    const/4 v5, 0x6

    if-eq v4, v5, :cond_7

    const/4 v5, 0x7

    if-eq v4, v5, :cond_7

    const/16 v5, 0x8

    if-ne v4, v5, :cond_8

    .line 1945
    :cond_7
    iput v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->provenance_:I

    .line 1949
    :goto_3
    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    goto/16 :goto_0

    .line 1947
    :cond_8
    iput v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->provenance_:I

    goto :goto_3

    .line 1953
    .end local v4    # "temp":I
    :sswitch_a
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    if-nez v5, :cond_9

    .line 1954
    new-instance v5, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    invoke-direct {v5}, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;-><init>()V

    iput-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    .line 1956
    :cond_9
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1960
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->language_:Ljava/lang/String;

    .line 1961
    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    goto/16 :goto_0

    .line 1965
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 1966
    .restart local v4    # "temp":I
    if-eqz v4, :cond_a

    if-eq v4, v8, :cond_a

    if-eq v4, v9, :cond_a

    if-eq v4, v10, :cond_a

    if-eq v4, v11, :cond_a

    const/4 v5, 0x5

    if-eq v4, v5, :cond_a

    const/4 v5, 0x6

    if-eq v4, v5, :cond_a

    const/4 v5, 0x7

    if-eq v4, v5, :cond_a

    const/4 v5, -0x1

    if-ne v4, v5, :cond_b

    .line 1975
    :cond_a
    iput v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalRole_:I

    .line 1979
    :goto_4
    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    goto/16 :goto_0

    .line 1977
    :cond_b
    iput v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalRole_:I

    goto :goto_4

    .line 1983
    .end local v4    # "temp":I
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 1984
    .restart local v4    # "temp":I
    if-eqz v4, :cond_c

    if-eq v4, v8, :cond_c

    if-eq v4, v9, :cond_c

    if-eq v4, v10, :cond_c

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_c

    if-eq v4, v11, :cond_c

    const/4 v5, 0x5

    if-eq v4, v5, :cond_c

    const/4 v5, 0x6

    if-eq v4, v5, :cond_c

    const/16 v5, 0x29

    if-eq v4, v5, :cond_c

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_c

    const/16 v5, 0xc

    if-eq v4, v5, :cond_c

    const/16 v5, 0xb

    if-eq v4, v5, :cond_c

    const/16 v5, 0x11

    if-eq v4, v5, :cond_c

    const/4 v5, 0x7

    if-eq v4, v5, :cond_c

    const/16 v5, 0x8

    if-eq v4, v5, :cond_c

    const/16 v5, 0xd

    if-eq v4, v5, :cond_c

    const/16 v5, 0xe

    if-eq v4, v5, :cond_c

    const/16 v5, 0x22

    if-eq v4, v5, :cond_c

    const/16 v5, 0xf

    if-eq v4, v5, :cond_c

    const/16 v5, 0x10

    if-eq v4, v5, :cond_c

    const/16 v5, 0x12

    if-eq v4, v5, :cond_c

    const/16 v5, 0x14

    if-eq v4, v5, :cond_c

    const/16 v5, 0x15

    if-eq v4, v5, :cond_c

    const/16 v5, 0x16

    if-eq v4, v5, :cond_c

    const/16 v5, 0x17

    if-eq v4, v5, :cond_c

    const/16 v5, 0x18

    if-eq v4, v5, :cond_c

    const/16 v5, 0x19

    if-eq v4, v5, :cond_c

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_c

    const/16 v5, 0x1b

    if-eq v4, v5, :cond_c

    const/16 v5, 0x1c

    if-eq v4, v5, :cond_c

    const/16 v5, 0x1d

    if-eq v4, v5, :cond_c

    const/16 v5, 0x1e

    if-eq v4, v5, :cond_c

    const/16 v5, 0x1f

    if-eq v4, v5, :cond_c

    const/16 v5, 0x23

    if-eq v4, v5, :cond_c

    const/16 v5, 0x21

    if-eq v4, v5, :cond_c

    const/16 v5, 0x24

    if-eq v4, v5, :cond_c

    const/16 v5, 0x25

    if-eq v4, v5, :cond_c

    const/16 v5, 0x26

    if-eq v4, v5, :cond_c

    const/16 v5, 0x27

    if-eq v4, v5, :cond_c

    const/16 v5, 0x20

    if-eq v4, v5, :cond_c

    const/16 v5, 0x28

    if-eq v4, v5, :cond_c

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_c

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_c

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_c

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    const/16 v5, 0x9

    if-eq v4, v5, :cond_c

    const/16 v5, 0xa

    if-eq v4, v5, :cond_c

    const/16 v5, 0x13

    if-ne v4, v5, :cond_d

    .line 2032
    :cond_c
    iput v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalProducer_:I

    .line 2036
    :goto_5
    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    goto/16 :goto_0

    .line 2034
    :cond_d
    iput v7, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalProducer_:I

    goto :goto_5

    .line 2040
    .end local v4    # "temp":I
    :sswitch_e
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->rect_:Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    if-nez v5, :cond_e

    .line 2041
    new-instance v5, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    invoke-direct {v5}, Llocation/unified/LocationDescriptorProtoNano$LatLngRect;-><init>()V

    iput-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->rect_:Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    .line 2043
    :cond_e
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->rect_:Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2047
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalProminence_:I

    .line 2048
    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    goto/16 :goto_0

    .line 2052
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->mid_:J

    .line 2053
    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    goto/16 :goto_0

    .line 2057
    :sswitch_11
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelFeatureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    if-nez v5, :cond_f

    .line 2058
    new-instance v5, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    invoke-direct {v5}, Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;-><init>()V

    iput-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelFeatureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    .line 2060
    :cond_f
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelFeatureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2064
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelNumber_:F

    .line 2065
    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    goto/16 :goto_0

    .line 2069
    :sswitch_13
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->attributes_:Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    if-nez v5, :cond_10

    .line 2070
    new-instance v5, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    invoke-direct {v5}, Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;-><init>()V

    iput-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->attributes_:Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    .line 2072
    :cond_10
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->attributes_:Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2076
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->diagnosticInfo_:Ljava/lang/String;

    .line 2077
    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    goto/16 :goto_0

    .line 2081
    :sswitch_15
    const/16 v5, 0xa8

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2082
    .local v0, "arrayLength":I
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->semantic:[I

    array-length v1, v5

    .line 2083
    .local v1, "i":I
    add-int v5, v1, v0

    new-array v2, v5, [I

    .line 2084
    .local v2, "newArray":[I
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->semantic:[I

    invoke-static {v5, v7, v2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2085
    iput-object v2, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->semantic:[I

    .line 2086
    :goto_6
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->semantic:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_11

    .line 2087
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->semantic:[I

    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    aput v6, v5, v1

    .line 2088
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2086
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2091
    :cond_11
    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->semantic:[I

    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    aput v6, v5, v1

    goto/16 :goto_0

    .line 1816
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3d -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x72 -> :sswitch_e
        0x78 -> :sswitch_f
        0x80 -> :sswitch_10
        0x8a -> :sswitch_11
        0x95 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
        0xa8 -> :sswitch_15
    .end sparse-switch
.end method

.method public setAttributes(Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1
    .param p1, "value"    # Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    .prologue
    .line 1548
    if-nez p1, :cond_0

    .line 1549
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1551
    :cond_0
    iput-object p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->attributes_:Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    .line 1552
    return-object p0
.end method

.method public setConfidence(I)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1355
    iput p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->confidence_:I

    .line 1356
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1357
    return-object p0
.end method

.method public setDiagnosticInfo(Ljava/lang/String;)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1567
    if-nez p1, :cond_0

    .line 1568
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1570
    :cond_0
    iput-object p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->diagnosticInfo_:Ljava/lang/String;

    .line 1571
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1572
    return-object p0
.end method

.method public setFeatureId(Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1
    .param p1, "value"    # Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    .prologue
    .line 1374
    if-nez p1, :cond_0

    .line 1375
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1377
    :cond_0
    iput-object p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    .line 1378
    return-object p0
.end method

.method public setHistoricalProducer(I)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1510
    iput p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalProducer_:I

    .line 1511
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1512
    return-object p0
.end method

.method public setHistoricalProminence(I)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1529
    iput p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalProminence_:I

    .line 1530
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1531
    return-object p0
.end method

.method public setHistoricalRole(I)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1491
    iput p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalRole_:I

    .line 1492
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1493
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1450
    if-nez p1, :cond_0

    .line 1451
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1453
    :cond_0
    iput-object p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->language_:Ljava/lang/String;

    .line 1454
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1455
    return-object p0
.end method

.method public setLatlng(Llocation/unified/LocationDescriptorProtoNano$LatLng;)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1
    .param p1, "value"    # Llocation/unified/LocationDescriptorProtoNano$LatLng;

    .prologue
    .line 1279
    if-nez p1, :cond_0

    .line 1280
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1282
    :cond_0
    iput-object p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    .line 1283
    return-object p0
.end method

.method public setLatlngSpan(Llocation/unified/LocationDescriptorProtoNano$LatLng;)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1
    .param p1, "value"    # Llocation/unified/LocationDescriptorProtoNano$LatLng;

    .prologue
    .line 1298
    if-nez p1, :cond_0

    .line 1299
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1301
    :cond_0
    iput-object p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    .line 1302
    return-object p0
.end method

.method public setLevelFeatureId(Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1
    .param p1, "value"    # Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    .prologue
    .line 1412
    if-nez p1, :cond_0

    .line 1413
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1415
    :cond_0
    iput-object p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelFeatureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    .line 1416
    return-object p0
.end method

.method public setLevelNumber(F)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1431
    iput p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelNumber_:F

    .line 1432
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1433
    return-object p0
.end method

.method public setLoc(Ljava/lang/String;)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1257
    if-nez p1, :cond_0

    .line 1258
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1260
    :cond_0
    iput-object p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->loc_:Ljava/lang/String;

    .line 1261
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1262
    return-object p0
.end method

.method public setMid(J)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1393
    iput-wide p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->mid_:J

    .line 1394
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1395
    return-object p0
.end method

.method public setProducer(I)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1219
    iput p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->producer_:I

    .line 1220
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1221
    return-object p0
.end method

.method public setProvenance(I)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1472
    iput p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->provenance_:I

    .line 1473
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1474
    return-object p0
.end method

.method public setRadius(F)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1336
    iput p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->radius_:F

    .line 1337
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1338
    return-object p0
.end method

.method public setRect(Llocation/unified/LocationDescriptorProtoNano$LatLngRect;)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1
    .param p1, "value"    # Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    .prologue
    .line 1317
    if-nez p1, :cond_0

    .line 1318
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1320
    :cond_0
    iput-object p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->rect_:Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    .line 1321
    return-object p0
.end method

.method public setRole(I)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1200
    iput p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->role_:I

    .line 1201
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1202
    return-object p0
.end method

.method public setTimestamp(J)Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1238
    iput-wide p1, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->timestamp_:J

    .line 1239
    iget v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    .line 1240
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1647
    iget v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 1648
    const/4 v4, 0x1

    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->role_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1650
    :cond_0
    iget v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 1651
    const/4 v4, 0x2

    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->producer_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1653
    :cond_1
    iget v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 1654
    const/4 v4, 0x3

    iget-wide v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->timestamp_:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1656
    :cond_2
    iget v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    .line 1657
    const/4 v4, 0x4

    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->loc_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1659
    :cond_3
    iget-object v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-eqz v4, :cond_4

    .line 1660
    const/4 v4, 0x5

    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1662
    :cond_4
    iget-object v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    if-eqz v4, :cond_5

    .line 1663
    const/4 v4, 0x6

    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProtoNano$LatLng;

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1665
    :cond_5
    iget v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_6

    .line 1666
    const/4 v4, 0x7

    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->radius_:F

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1668
    :cond_6
    iget v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_7

    .line 1669
    const/16 v4, 0x8

    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->confidence_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1671
    :cond_7
    iget v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_8

    .line 1672
    const/16 v4, 0x9

    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->provenance_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1674
    :cond_8
    iget-object v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    if-eqz v4, :cond_9

    .line 1675
    const/16 v4, 0xa

    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1677
    :cond_9
    iget v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_a

    .line 1678
    const/16 v4, 0xb

    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->language_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1680
    :cond_a
    iget v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_b

    .line 1681
    const/16 v4, 0xc

    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalRole_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1683
    :cond_b
    iget v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_c

    .line 1684
    const/16 v4, 0xd

    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalProducer_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1686
    :cond_c
    iget-object v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->rect_:Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    if-eqz v4, :cond_d

    .line 1687
    const/16 v4, 0xe

    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->rect_:Llocation/unified/LocationDescriptorProtoNano$LatLngRect;

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1689
    :cond_d
    iget v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_e

    .line 1690
    const/16 v4, 0xf

    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->historicalProminence_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1692
    :cond_e
    iget v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_f

    .line 1693
    const/16 v4, 0x10

    iget-wide v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->mid_:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1695
    :cond_f
    iget-object v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelFeatureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    if-eqz v4, :cond_10

    .line 1696
    const/16 v4, 0x11

    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelFeatureId_:Llocation/unified/LocationDescriptorProtoNano$FeatureIdProto;

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1698
    :cond_10
    iget v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_11

    .line 1699
    const/16 v4, 0x12

    iget v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->levelNumber_:F

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1701
    :cond_11
    iget-object v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->attributes_:Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    if-eqz v4, :cond_12

    .line 1702
    const/16 v4, 0x13

    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->attributes_:Llocation/unified/LocationDescriptorProtoNano$LocationAttributesProto;

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1704
    :cond_12
    iget v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_13

    .line 1705
    const/16 v4, 0x14

    iget-object v5, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->diagnosticInfo_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1707
    :cond_13
    iget-object v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->semantic:[I

    if-eqz v4, :cond_14

    iget-object v4, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->semantic:[I

    array-length v4, v4

    if-lez v4, :cond_14

    .line 1708
    iget-object v0, p0, Llocation/unified/LocationDescriptorProtoNano$LocationDescriptor;->semantic:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_14

    aget v1, v0, v2

    .line 1709
    .local v1, "element":I
    const/16 v4, 0x15

    invoke-virtual {p1, v4, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1708
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1712
    .end local v0    # "arr$":[I
    .end local v1    # "element":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_14
    return-void
.end method
