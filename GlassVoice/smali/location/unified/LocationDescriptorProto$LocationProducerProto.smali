.class public final Llocation/unified/LocationDescriptorProto$LocationProducerProto;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "LocationDescriptorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationProducerProto"
.end annotation


# static fields
.field public static final LOCATION_PRODUCER_ADS_CRITERIA_ID:I = 0x17

.field public static final LOCATION_PRODUCER_ADS_GEO_PARAM:I = 0x26

.field public static final LOCATION_PRODUCER_ADS_PARTNER_GEO_PARAM:I = 0x27

.field public static final LOCATION_PRODUCER_CALENDAR:I = 0x1c

.field public static final LOCATION_PRODUCER_CARRIER_COUNTRY:I = 0x11

.field public static final LOCATION_PRODUCER_CIRCULARS_FRONTEND:I = 0x21

.field public static final LOCATION_PRODUCER_DEFAULT_LOCATION_OVERRIDE_PRODUCER:I = 0x20

.field public static final LOCATION_PRODUCER_DEVICE_LOCATION:I = 0xc

.field public static final LOCATION_PRODUCER_GAIA_LOCATION_HISTORY:I = 0x2b

.field public static final LOCATION_PRODUCER_GMAIL_THEME:I = 0x1a

.field public static final LOCATION_PRODUCER_GOOGLE_HOST_DOMAIN:I = 0x4

.field public static final LOCATION_PRODUCER_GWS_MOBILE_HISTORY_ZWIEBACK:I = 0x22

.field public static final LOCATION_PRODUCER_IGOOGLE:I = 0x1b

.field public static final LOCATION_PRODUCER_IP_ADDRESS:I = 0x3

.field public static final LOCATION_PRODUCER_IP_ADDRESS_REALTIME:I = 0x2a

.field public static final LOCATION_PRODUCER_LEGACY_GL_COOKIE:I = 0x23

.field public static final LOCATION_PRODUCER_LEGACY_GL_PARAM:I = 0x1e

.field public static final LOCATION_PRODUCER_LEGACY_MOBILE_FRONTEND_GLL:I = 0xa

.field public static final LOCATION_PRODUCER_LEGACY_MOBILE_FRONTEND_NEAR:I = 0x13

.field public static final LOCATION_PRODUCER_LEGACY_NEAR_PARAM:I = 0xb

.field public static final LOCATION_PRODUCER_LEGACY_PARTNER_GL_PARAM:I = 0x1f

.field public static final LOCATION_PRODUCER_LEGACY_TOOLBAR_HEADER:I = 0x9

.field public static final LOCATION_PRODUCER_LOCAL_UNIVERSAL:I = 0x8

.field public static final LOCATION_PRODUCER_LOGGED_IN_USER_SPECIFIED:I = 0x1

.field public static final LOCATION_PRODUCER_MAPS_FRONTEND:I = 0x15

.field public static final LOCATION_PRODUCER_MOBILE_APP:I = 0x18

.field public static final LOCATION_PRODUCER_MOBILE_FE_HISTORY:I = 0xe

.field public static final LOCATION_PRODUCER_MOBILE_SELECTED:I = 0xf

.field public static final LOCATION_PRODUCER_OZ_FRONTEND:I = 0x25

.field public static final LOCATION_PRODUCER_PARTNER:I = 0x10

.field public static final LOCATION_PRODUCER_PREF_L_FIELD_ADDRESS:I = 0x2

.field public static final LOCATION_PRODUCER_PRODUCT_SEARCH_FRONTEND:I = 0x16

.field public static final LOCATION_PRODUCER_QREF:I = 0x2c

.field public static final LOCATION_PRODUCER_QUERY_HISTORY_INFERRED:I = 0x19

.field public static final LOCATION_PRODUCER_QUERY_LOCATION_OVERRIDE_PRODUCER:I = 0x29

.field public static final LOCATION_PRODUCER_RQUERY:I = 0x5

.field public static final LOCATION_PRODUCER_SEARCH_TOOLBELT:I = 0xd

.field public static final LOCATION_PRODUCER_SHOPPING_SEARCH_API:I = 0x24

.field public static final LOCATION_PRODUCER_SHOWTIME_ONEBOX:I = 0x7

.field public static final LOCATION_PRODUCER_SMS_SEARCH:I = 0x1d

.field public static final LOCATION_PRODUCER_SNAP_TO_PLACE_EXPLICIT:I = 0x30

.field public static final LOCATION_PRODUCER_SNAP_TO_PLACE_IMPLICIT:I = 0x2f

.field public static final LOCATION_PRODUCER_SQUERY:I = 0x6

.field public static final LOCATION_PRODUCER_STICKINESS_PARAMS:I = 0x2d

.field public static final LOCATION_PRODUCER_TURN_BY_TURN_NAVIGATION_REROUTE:I = 0x2e

.field public static final LOCATION_PRODUCER_UNKNOWN_PRODUCER:I = 0x0

.field public static final LOCATION_PRODUCER_VIEWPORT_PARAMS:I = 0x28

.field public static final LOCATION_PRODUCER_WEB_SEARCH_PREFERENCES_PAGE:I = 0x14

.field public static final LOCATION_PRODUCER_WEB_SEARCH_RESULTS_PAGE_SHARED:I = 0x12

.field public static final WILDCARD_PRODUCER:I = -0x1

.field private static volatile _emptyArray:[Llocation/unified/LocationDescriptorProto$LocationProducerProto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 230
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationProducerProto;->clear()Llocation/unified/LocationDescriptorProto$LocationProducerProto;

    .line 231
    return-void
.end method

.method public static emptyArray()[Llocation/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 2

    .prologue
    .line 218
    sget-object v0, Llocation/unified/LocationDescriptorProto$LocationProducerProto;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationProducerProto;

    if-nez v0, :cond_1

    .line 219
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    sget-object v0, Llocation/unified/LocationDescriptorProto$LocationProducerProto;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationProducerProto;

    if-nez v0, :cond_0

    .line 222
    const/4 v0, 0x0

    new-array v0, v0, [Llocation/unified/LocationDescriptorProto$LocationProducerProto;

    sput-object v0, Llocation/unified/LocationDescriptorProto$LocationProducerProto;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationProducerProto;

    .line 224
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_1
    sget-object v0, Llocation/unified/LocationDescriptorProto$LocationProducerProto;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationProducerProto;

    return-object v0

    .line 224
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationProducerProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationProducerProto;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LocationProducerProto;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationProducerProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationProducerProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationProducerProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProto$LocationProducerProto;

    return-object v0
.end method


# virtual methods
.method public clear()Llocation/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 1

    .prologue
    .line 234
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationProducerProto;->cachedSize:I

    .line 235
    return-object p0
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
    .line 160
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProto$LocationProducerProto;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationProducerProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 248
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_0

    .line 252
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    :pswitch_0
    return-object p0

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 0
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;

    .prologue
    .line 240
    return-void
.end method
