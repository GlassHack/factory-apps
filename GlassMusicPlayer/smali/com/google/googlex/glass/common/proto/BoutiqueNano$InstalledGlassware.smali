.class public final Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;


# instance fields
.field private apkMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

.field private bitField0_:I

.field private brandColor_:Ljava/lang/String;

.field private displayName_:Ljava/lang/String;

.field private glasswareId_:J

.field private iconUrl_:Ljava/lang/String;

.field private isEnabled_:Z

.field private isHiddenFromUi_:Z

.field private lastModifiedTimestampUs_:J

.field private mirrorMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;

.field private speakableName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 15
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->glasswareId_:J

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->displayName_:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->speakableName_:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->iconUrl_:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->brandColor_:Ljava/lang/String;

    .line 160
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->isEnabled_:Z

    .line 179
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->isHiddenFromUi_:Z

    .line 198
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->lastModifiedTimestampUs_:J

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 1

    .prologue
    .line 420
    new-instance v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 1

    .prologue
    .line 414
    new-instance v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    return-object v0
.end method


# virtual methods
.method public final clearApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    .line 138
    return-object p0
.end method

.method public final clearBrandColor()Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 1

    .prologue
    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->brandColor_:Ljava/lang/String;

    .line 117
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    .line 118
    return-object p0
.end method

.method public final clearDisplayName()Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 1

    .prologue
    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->displayName_:Ljava/lang/String;

    .line 51
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    .line 52
    return-object p0
.end method

.method public final clearGlasswareId()Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 2

    .prologue
    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->glasswareId_:J

    .line 29
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    .line 30
    return-object p0
.end method

.method public final clearIconUrl()Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 1

    .prologue
    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->iconUrl_:Ljava/lang/String;

    .line 95
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    .line 96
    return-object p0
.end method

.method public final clearIsEnabled()Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->isEnabled_:Z

    .line 174
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    .line 175
    return-object p0
.end method

.method public final clearIsHiddenFromUi()Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->isHiddenFromUi_:Z

    .line 193
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    .line 194
    return-object p0
.end method

.method public final clearLastModifiedTimestampUs()Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 2

    .prologue
    .line 211
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->lastModifiedTimestampUs_:J

    .line 212
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    .line 213
    return-object p0
.end method

.method public final clearMirrorMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;

    .line 157
    return-object p0
.end method

.method public final clearSpeakableName()Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 1

    .prologue
    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->speakableName_:Ljava/lang/String;

    .line 73
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    .line 74
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 218
    if-ne p1, p0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 220
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    .line 221
    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->glasswareId_:J

    iget-wide v4, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->glasswareId_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->displayName_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->displayName_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 222
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->speakableName_:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->speakableName_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 223
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->iconUrl_:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->iconUrl_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 224
    :goto_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->brandColor_:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->brandColor_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 225
    :goto_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    if-nez v2, :cond_3

    .line 226
    :goto_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;

    if-nez v2, :cond_3

    .line 227
    :goto_6
    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->isEnabled_:Z

    iget-boolean v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->isEnabled_:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->isHiddenFromUi_:Z

    iget-boolean v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->isHiddenFromUi_:Z

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->lastModifiedTimestampUs_:J

    iget-wide v4, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->lastModifiedTimestampUs_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 231
    goto :goto_0

    .line 221
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->displayName_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->displayName_:Ljava/lang/String;

    .line 222
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->speakableName_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->speakableName_:Ljava/lang/String;

    .line 223
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->iconUrl_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->iconUrl_:Ljava/lang/String;

    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->brandColor_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->brandColor_:Ljava/lang/String;

    .line 225
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    .line 226
    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;

    .line 227
    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_6

    :cond_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->unknownFieldData:Ljava/util/List;

    .line 231
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0
.end method

.method public final getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    return-object v0
.end method

.method public final getBrandColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->brandColor_:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public final getGlasswareId()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->glasswareId_:J

    return-wide v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->iconUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsEnabled()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->isEnabled_:Z

    return v0
.end method

.method public final getIsHiddenFromUi()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->isHiddenFromUi_:Z

    return v0
.end method

.method public final getLastModifiedTimestampUs()J
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->lastModifiedTimestampUs_:J

    return-wide v0
.end method

.method public final getMirrorMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 288
    const/4 v0, 0x0

    .line 289
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 290
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->glasswareId_:J

    .line 291
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    if-eqz v1, :cond_1

    .line 294
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    .line 295
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 297
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 298
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->isEnabled_:Z

    .line 299
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 302
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->displayName_:Ljava/lang/String;

    .line 303
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 305
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 306
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->iconUrl_:Ljava/lang/String;

    .line 307
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 309
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 310
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->speakableName_:Ljava/lang/String;

    .line 311
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 313
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    .line 314
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->brandColor_:Ljava/lang/String;

    .line 315
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 317
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 318
    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->lastModifiedTimestampUs_:J

    .line 319
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 321
    :cond_7
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;

    if-eqz v1, :cond_8

    .line 322
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;

    .line 323
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 325
    :cond_8
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_9

    .line 326
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->isHiddenFromUi_:Z

    .line 327
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 329
    :cond_9
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 330
    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->cachedSize:I

    .line 331
    return v0
.end method

.method public final getSpeakableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->speakableName_:Ljava/lang/String;

    return-object v0
.end method

.method public final hasApkMetadata()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasBrandColor()Z
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasDisplayName()Z
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasGlasswareId()Z
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasIconUrl()Z
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasIsEnabled()Z
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasIsHiddenFromUi()Z
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasLastModifiedTimestampUs()Z
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasMirrorMetadata()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSpeakableName()Z
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 235
    .line 236
    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->glasswareId_:J

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->glasswareId_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v0, v4

    add-int/lit16 v0, v0, 0x20f

    .line 237
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->displayName_:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v4

    .line 238
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->speakableName_:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v4

    .line 239
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->iconUrl_:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v4

    .line 240
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->brandColor_:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v4

    .line 241
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v4

    .line 242
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v4

    .line 243
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->isEnabled_:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_6
    add-int/2addr v0, v4

    .line 244
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->isHiddenFromUi_:Z

    if-eqz v4, :cond_7

    :goto_7
    add-int/2addr v0, v2

    .line 245
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->lastModifiedTimestampUs_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->lastModifiedTimestampUs_:J

    ushr-long/2addr v4, v8

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 246
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_8

    :goto_8
    add-int/2addr v0, v1

    .line 247
    return v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->displayName_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->speakableName_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->iconUrl_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->brandColor_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 241
    :cond_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->hashCode()I

    move-result v0

    goto :goto_4

    .line 242
    :cond_5
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    move v0, v3

    .line 243
    goto :goto_6

    :cond_7
    move v2, v3

    .line 244
    goto :goto_7

    .line 246
    :cond_8
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_8
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 2

    .prologue
    .line 339
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 340
    sparse-switch v0, :sswitch_data_0

    .line 344
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 345
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->unknownFieldData:Ljava/util/List;

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    :sswitch_0
    return-object p0

    .line 355
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->glasswareId_:J

    .line 356
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    goto :goto_0

    .line 360
    :sswitch_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    if-nez v0, :cond_2

    .line 361
    new-instance v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;-><init>()V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 367
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->isEnabled_:Z

    .line 368
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    goto :goto_0

    .line 372
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->displayName_:Ljava/lang/String;

    .line 373
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    goto :goto_0

    .line 377
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->iconUrl_:Ljava/lang/String;

    .line 378
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    goto :goto_0

    .line 382
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->speakableName_:Ljava/lang/String;

    .line 383
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    goto :goto_0

    .line 387
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->brandColor_:Ljava/lang/String;

    .line 388
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    goto :goto_0

    .line 392
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->lastModifiedTimestampUs_:J

    .line 393
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    goto/16 :goto_0

    .line 397
    :sswitch_9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;

    if-nez v0, :cond_3

    .line 398
    new-instance v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;-><init>()V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;

    .line 400
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 404
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->isHiddenFromUi_:Z

    .line 405
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    goto/16 :goto_0

    .line 340
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    move-result-object v0

    return-object v0
.end method

.method public final setApkMetadata(Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 1

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 130
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    .line 131
    return-object p0
.end method

.method public final setBrandColor(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 1

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->brandColor_:Ljava/lang/String;

    .line 109
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    .line 110
    return-object p0
.end method

.method public final setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 1

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->displayName_:Ljava/lang/String;

    .line 43
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    .line 44
    return-object p0
.end method

.method public final setGlasswareId(J)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 1

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->glasswareId_:J

    .line 21
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    .line 22
    return-object p0
.end method

.method public final setIconUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 1

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->iconUrl_:Ljava/lang/String;

    .line 87
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    .line 88
    return-object p0
.end method

.method public final setIsEnabled(Z)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 1

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->isEnabled_:Z

    .line 166
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    .line 167
    return-object p0
.end method

.method public final setIsHiddenFromUi(Z)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 1

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->isHiddenFromUi_:Z

    .line 185
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    .line 186
    return-object p0
.end method

.method public final setLastModifiedTimestampUs(J)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 1

    .prologue
    .line 203
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->lastModifiedTimestampUs_:J

    .line 204
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    .line 205
    return-object p0
.end method

.method public final setMirrorMetadata(Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 1

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 149
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;

    .line 150
    return-object p0
.end method

.method public final setSpeakableName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 1

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->speakableName_:Ljava/lang/String;

    .line 65
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    .line 66
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 252
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->glasswareId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    if-eqz v0, :cond_1

    .line 256
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 258
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    .line 259
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->isEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 261
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 262
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->displayName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 264
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 265
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->iconUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 267
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 268
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->speakableName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 270
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    .line 271
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->brandColor_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 273
    :cond_6
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 274
    const/16 v0, 0x8

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->lastModifiedTimestampUs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 276
    :cond_7
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;

    if-eqz v0, :cond_8

    .line 277
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/BoutiqueNano$MirrorMetadata;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 279
    :cond_8
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 280
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->isHiddenFromUi_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 282
    :cond_9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 284
    return-void
.end method
