.class public final Lcom/google/glass/companion/Proto$LocationMessage;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$LocationMessage;


# instance fields
.field private bitField0_:I

.field private location_:Lcom/google/glass/companion/Proto$Location;

.field public provider:Ljava/lang/String;

.field private receiver_:Ljava/lang/String;

.field private status_:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2863
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$LocationMessage;

    sput-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$LocationMessage;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2864
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2876
    iput v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    .line 2879
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    .line 2901
    iput v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    .line 2920
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    .line 2864
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 3071
    new-instance v0, Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$LocationMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 3065
    new-instance v0, Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationMessage;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method


# virtual methods
.method public final clearLocation()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 2897
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 2898
    return-object p0
.end method

.method public final clearReceiver()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 2936
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    .line 2937
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    .line 2938
    return-object p0
.end method

.method public final clearStatus()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 2914
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    .line 2915
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    .line 2916
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2943
    if-ne p1, p0, :cond_1

    .line 2951
    :cond_0
    :goto_0
    return v0

    .line 2944
    :cond_1
    instance-of v2, p1, Lcom/google/glass/companion/Proto$LocationMessage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 2945
    :cond_2
    check-cast p1, Lcom/google/glass/companion/Proto$LocationMessage;

    .line 2946
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    iget v3, p1, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 2947
    :goto_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    if-nez v2, :cond_3

    .line 2948
    :goto_2
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    iget v3, p1, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 2950
    :goto_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 2951
    goto :goto_0

    .line 2946
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    .line 2947
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 2948
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$Location;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    .line 2950
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFieldData:Ljava/util/List;

    .line 2951
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getLocation()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 2884
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method

.method public final getReceiver()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2922
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 2984
    const/4 v0, 0x0

    .line 2985
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    .line 2986
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2987
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    .line 2988
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2989
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    if-eqz v1, :cond_0

    .line 2990
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 2991
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2993
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 2994
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    .line 2995
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2997
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 2998
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    .line 2999
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3001
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3002
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->cachedSize:I

    .line 3003
    return v0
.end method

.method public final getStatus()I
    .locals 1

    .prologue
    .line 2903
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    return v0
.end method

.method public final hasLocation()Z
    .locals 1

    .prologue
    .line 2894
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasReceiver()Z
    .locals 1

    .prologue
    .line 2933
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasStatus()Z
    .locals 1

    .prologue
    .line 2911
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2955
    .line 2956
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    add-int/lit16 v0, v0, 0x20f

    .line 2957
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 2958
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 2959
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    add-int/2addr v0, v2

    .line 2960
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 2961
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 2962
    return v0

    .line 2957
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 2958
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Location;->hashCode()I

    move-result v0

    goto :goto_1

    .line 2960
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 2961
    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 2

    .prologue
    .line 3011
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3012
    sparse-switch v0, :sswitch_data_0

    .line 3016
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 3017
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFieldData:Ljava/util/List;

    .line 3020
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3022
    :sswitch_0
    return-object p0

    .line 3027
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 3028
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 3032
    :cond_2
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    goto :goto_0

    .line 3034
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    goto :goto_0

    .line 3039
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    goto :goto_0

    .line 3043
    :sswitch_3
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    if-nez v0, :cond_4

    .line 3044
    new-instance v0, Lcom/google/glass/companion/Proto$Location;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Location;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 3046
    :cond_4
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3050
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    .line 3051
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    goto :goto_0

    .line 3055
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    .line 3056
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    goto :goto_0

    .line 3012
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 2860
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$LocationMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    return-object v0
.end method

.method public final setLocation(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 2887
    if-nez p1, :cond_0

    .line 2888
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2890
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 2891
    return-object p0
.end method

.method public final setReceiver(Ljava/lang/String;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 2925
    if-nez p1, :cond_0

    .line 2926
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2928
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    .line 2929
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    .line 2930
    return-object p0
.end method

.method public final setStatus(I)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 2906
    iput p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    .line 2907
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    .line 2908
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 2967
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2968
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2969
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    if-eqz v0, :cond_0

    .line 2970
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2972
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2973
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2975
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 2976
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2978
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2980
    return-void
.end method
