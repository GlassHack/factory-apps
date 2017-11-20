.class public final Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "GlasswareUsageLogNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/GlasswareUsageLogNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlasswareUsage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage$Type;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;


# instance fields
.field private bitField0_:I

.field private bundleViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

.field private cardType_:I

.field private eventDurationMs_:J

.field private gdkPackageName_:Ljava/lang/String;

.field private itemViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

.field private menuSelected_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

.field private menuViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

.field private obfuscatedBundleId_:Ljava/lang/String;

.field private obfuscatedTimelineItemId_:Ljava/lang/String;

.field private sourceId_:Ljava/lang/String;

.field private type_:I

.field private userActionDelayMs_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    sput-object v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->EMPTY_ARRAY:[Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 23
    iput v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->type_:I

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->sourceId_:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    .line 130
    iput v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->cardType_:I

    .line 149
    iput-wide v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->eventDurationMs_:J

    .line 168
    iput-wide v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->userActionDelayMs_:J

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    new-instance v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    invoke-direct {v0}, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 501
    new-instance v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    invoke-direct {v0}, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    return-object v0
.end method


# virtual methods
.method public clearBundleViewed()Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bundleViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    .line 222
    return-object p0
.end method

.method public clearCardType()Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->cardType_:I

    .line 144
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    .line 145
    return-object p0
.end method

.method public clearEventDurationMs()Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 2

    .prologue
    .line 162
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->eventDurationMs_:J

    .line 163
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    .line 164
    return-object p0
.end method

.method public clearGdkPackageName()Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1

    .prologue
    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    .line 81
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    .line 82
    return-object p0
.end method

.method public clearItemViewed()Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->itemViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    .line 203
    return-object p0
.end method

.method public clearMenuSelected()Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuSelected_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    .line 260
    return-object p0
.end method

.method public clearMenuViewed()Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    .line 241
    return-object p0
.end method

.method public clearObfuscatedBundleId()Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1

    .prologue
    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    .line 125
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    .line 126
    return-object p0
.end method

.method public clearObfuscatedTimelineItemId()Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1

    .prologue
    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    .line 103
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    .line 104
    return-object p0
.end method

.method public clearSourceId()Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1

    .prologue
    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->sourceId_:Ljava/lang/String;

    .line 59
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    .line 60
    return-object p0
.end method

.method public clearType()Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->type_:I

    .line 37
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    .line 38
    return-object p0
.end method

.method public clearUserActionDelayMs()Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 2

    .prologue
    .line 181
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->userActionDelayMs_:J

    .line 182
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    .line 183
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 264
    if-ne p1, p0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v1

    .line 265
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 266
    check-cast v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    .line 267
    .local v0, "other":Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    iget v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->type_:I

    iget v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->type_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->sourceId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->sourceId_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 268
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 269
    :goto_2
    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 270
    :goto_3
    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 271
    :goto_4
    iget v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->cardType_:I

    iget v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->cardType_:I

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->eventDurationMs_:J

    iget-wide v5, v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->eventDurationMs_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->userActionDelayMs_:J

    iget-wide v5, v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->userActionDelayMs_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->itemViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->itemViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    if-nez v3, :cond_3

    .line 275
    :goto_5
    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bundleViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bundleViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    if-nez v3, :cond_3

    .line 276
    :goto_6
    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    if-nez v3, :cond_3

    .line 277
    :goto_7
    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuSelected_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuSelected_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    if-nez v3, :cond_3

    .line 278
    :goto_8
    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 279
    goto :goto_0

    .line 267
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->sourceId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->sourceId_:Ljava/lang/String;

    .line 268
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    .line 269
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    .line 270
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    .line 271
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->itemViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    iget-object v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->itemViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    .line 275
    invoke-virtual {v3, v4}, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bundleViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    iget-object v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bundleViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    .line 276
    invoke-virtual {v3, v4}, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    iget-object v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    .line 277
    invoke-virtual {v3, v4}, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_7

    :cond_b
    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuSelected_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    iget-object v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuSelected_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    .line 278
    invoke-virtual {v3, v4}, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_8

    :cond_c
    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->unknownFieldData:Ljava/util/List;

    .line 279
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getBundleViewed()Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bundleViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    return-object v0
.end method

.method public getCardType()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->cardType_:I

    return v0
.end method

.method public getEventDurationMs()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->eventDurationMs_:J

    return-wide v0
.end method

.method public getGdkPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getItemViewed()Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->itemViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    return-object v0
.end method

.method public getMenuSelected()Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuSelected_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    return-object v0
.end method

.method public getMenuViewed()Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    return-object v0
.end method

.method public getObfuscatedBundleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    return-object v0
.end method

.method public getObfuscatedTimelineItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 346
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->type_:I

    .line 347
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 349
    :cond_0
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 350
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->sourceId_:Ljava/lang/String;

    .line 351
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 353
    :cond_1
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 354
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    .line 355
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 357
    :cond_2
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 358
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    .line 359
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 361
    :cond_3
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    .line 362
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->cardType_:I

    .line 363
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 365
    :cond_4
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    .line 366
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->eventDurationMs_:J

    .line 367
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->itemViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    if-eqz v1, :cond_6

    .line 370
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->itemViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    .line 371
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 373
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bundleViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    if-eqz v1, :cond_7

    .line 374
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bundleViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    .line 375
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 377
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    if-eqz v1, :cond_8

    .line 378
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    .line 379
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 381
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuSelected_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    if-eqz v1, :cond_9

    .line 382
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuSelected_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    .line 383
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 385
    :cond_9
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    .line 386
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    .line 387
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 389
    :cond_a
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_b

    .line 390
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->userActionDelayMs_:J

    .line 391
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 393
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 394
    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->cachedSize:I

    .line 395
    return v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->sourceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->type_:I

    return v0
.end method

.method public getUserActionDelayMs()J
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->userActionDelayMs_:J

    return-wide v0
.end method

.method public hasBundleViewed()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bundleViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCardType()Z
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventDurationMs()Z
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGdkPackageName()Z
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasItemViewed()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->itemViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMenuSelected()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuSelected_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMenuViewed()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasObfuscatedBundleId()Z
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasObfuscatedTimelineItemId()Z
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSourceId()Z
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 33
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserActionDelayMs()Z
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v2, 0x0

    .line 283
    const/16 v0, 0x11

    .line 284
    .local v0, "result":I
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->type_:I

    add-int/lit16 v0, v1, 0x20f

    .line 285
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->sourceId_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 286
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 287
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 288
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    .line 289
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->cardType_:I

    add-int v0, v1, v3

    .line 290
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->eventDurationMs_:J

    iget-wide v5, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->eventDurationMs_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 291
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->userActionDelayMs_:J

    iget-wide v5, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->userActionDelayMs_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 292
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->itemViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    add-int v0, v3, v1

    .line 293
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bundleViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    if-nez v1, :cond_5

    move v1, v2

    :goto_5
    add-int v0, v3, v1

    .line 294
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    if-nez v1, :cond_6

    move v1, v2

    :goto_6
    add-int v0, v3, v1

    .line 295
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuSelected_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    if-nez v1, :cond_7

    move v1, v2

    :goto_7
    add-int v0, v3, v1

    .line 296
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_8

    :goto_8
    add-int v0, v1, v2

    .line 297
    return v0

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->sourceId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 287
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 288
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    .line 292
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->itemViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    invoke-virtual {v1}, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;->hashCode()I

    move-result v1

    goto :goto_4

    .line 293
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bundleViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    invoke-virtual {v1}, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;->hashCode()I

    move-result v1

    goto :goto_5

    .line 294
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    invoke-virtual {v1}, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;->hashCode()I

    move-result v1

    goto :goto_6

    .line 295
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuSelected_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    invoke-virtual {v1}, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->hashCode()I

    move-result v1

    goto :goto_7

    .line 296
    :cond_8
    iget-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 404
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 408
    iget-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 409
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->unknownFieldData:Ljava/util/List;

    .line 412
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 414
    :sswitch_0
    return-object p0

    .line 419
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 420
    .local v1, "temp":I
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 425
    :cond_2
    iput v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->type_:I

    .line 426
    iget v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    goto :goto_0

    .line 428
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->type_:I

    goto :goto_0

    .line 433
    .end local v1    # "temp":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->sourceId_:Ljava/lang/String;

    .line 434
    iget v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    goto :goto_0

    .line 438
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    .line 439
    iget v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    goto :goto_0

    .line 443
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    .line 444
    iget v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    goto :goto_0

    .line 448
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->cardType_:I

    .line 449
    iget v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    goto :goto_0

    .line 453
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->eventDurationMs_:J

    .line 454
    iget v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    goto :goto_0

    .line 458
    :sswitch_7
    iget-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->itemViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    if-nez v2, :cond_4

    .line 459
    new-instance v2, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    invoke-direct {v2}, Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->itemViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    .line 461
    :cond_4
    iget-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->itemViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 465
    :sswitch_8
    iget-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bundleViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    if-nez v2, :cond_5

    .line 466
    new-instance v2, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    invoke-direct {v2}, Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bundleViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    .line 468
    :cond_5
    iget-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bundleViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 472
    :sswitch_9
    iget-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    if-nez v2, :cond_6

    .line 473
    new-instance v2, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    invoke-direct {v2}, Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    .line 475
    :cond_6
    iget-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 479
    :sswitch_a
    iget-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuSelected_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    if-nez v2, :cond_7

    .line 480
    new-instance v2, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    invoke-direct {v2}, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuSelected_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    .line 482
    :cond_7
    iget-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuSelected_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 486
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    .line 487
    iget v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    goto/16 :goto_0

    .line 491
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->userActionDelayMs_:J

    .line 492
    iget v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    goto/16 :goto_0

    .line 404
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
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
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    move-result-object v0

    return-object v0
.end method

.method public setBundleViewed(Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1
    .param p1, "value"    # Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 214
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bundleViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    .line 215
    return-object p0
.end method

.method public setCardType(I)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->cardType_:I

    .line 136
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    .line 137
    return-object p0
.end method

.method public setEventDurationMs(J)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 154
    iput-wide p1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->eventDurationMs_:J

    .line 155
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    .line 156
    return-object p0
.end method

.method public setGdkPackageName(Ljava/lang/String;)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    .line 73
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    .line 74
    return-object p0
.end method

.method public setItemViewed(Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1
    .param p1, "value"    # Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 195
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->itemViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    .line 196
    return-object p0
.end method

.method public setMenuSelected(Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1
    .param p1, "value"    # Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 252
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuSelected_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    .line 253
    return-object p0
.end method

.method public setMenuViewed(Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1
    .param p1, "value"    # Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    .prologue
    .line 230
    if-nez p1, :cond_0

    .line 231
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 233
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    .line 234
    return-object p0
.end method

.method public setObfuscatedBundleId(Ljava/lang/String;)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 116
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    .line 117
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    .line 118
    return-object p0
.end method

.method public setObfuscatedTimelineItemId(Ljava/lang/String;)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    .line 95
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    .line 96
    return-object p0
.end method

.method public setSourceId(Ljava/lang/String;)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->sourceId_:Ljava/lang/String;

    .line 51
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    .line 52
    return-object p0
.end method

.method public setType(I)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->type_:I

    .line 29
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    .line 30
    return-object p0
.end method

.method public setUserActionDelayMs(J)Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 173
    iput-wide p1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->userActionDelayMs_:J

    .line 174
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    .line 175
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
    .line 302
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 305
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 306
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->sourceId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 308
    :cond_1
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 309
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->gdkPackageName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 311
    :cond_2
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 312
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedTimelineItemId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 314
    :cond_3
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 315
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->cardType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 317
    :cond_4
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 318
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->eventDurationMs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 320
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->itemViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    if-eqz v0, :cond_6

    .line 321
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->itemViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$ItemViewed;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 323
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bundleViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    if-eqz v0, :cond_7

    .line 324
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bundleViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$BundleViewed;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 326
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    if-eqz v0, :cond_8

    .line 327
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuViewed_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuViewed;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 329
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuSelected_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    if-eqz v0, :cond_9

    .line 330
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->menuSelected_:Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 332
    :cond_9
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    .line 333
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->obfuscatedBundleId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 335
    :cond_a
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_b

    .line 336
    const/16 v0, 0xc

    iget-wide v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->userActionDelayMs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 338
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 340
    return-void
.end method
