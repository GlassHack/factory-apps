.class public final enum Lcom/google/glass/sound/SoundManager$SoundId;
.super Ljava/lang/Enum;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sound/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SoundId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/sound/SoundManager$SoundId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum CALL_INCOMING_RING:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum CALL_START:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum CALL_STOP:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum FOCUS:Lcom/google/glass/sound/SoundManager$SoundId;

.field private static final HIDDEN_PLATFORM_ID:I = -0x2

.field public static final enum NOTIFICATION:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum NOTIFICATION_NAVIGATION:Lcom/google/glass/sound/SoundManager$SoundId;

.field private static final NO_PLATFORM_ID:I = -0x1

.field public static final enum PHOTO_READY:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum PHOTO_SHUTTER:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum TAP:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum VIDEO_START:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum VIDEO_STOP:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum VOLUME_CHANGE:Lcom/google/glass/sound/SoundManager$SoundId;


# instance fields
.field private final durationMs:J

.field private final platformId:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0xb

    const/16 v8, 0xa

    const/4 v7, -0x2

    const/4 v6, -0x1

    .line 79
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "TAP"

    const/4 v2, 0x0

    const/16 v3, 0xd

    const-wide/16 v4, 0x8c

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 82
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "FOCUS"

    const/4 v2, 0x1

    const/16 v3, 0xe

    const-wide/16 v4, 0xa

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->FOCUS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 85
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "DISMISS"

    const/4 v2, 0x2

    const/16 v3, 0xf

    const-wide/16 v4, 0x2ee

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 88
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "SUCCESS"

    const/4 v2, 0x3

    const-wide/16 v4, 0x28a

    move v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 91
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "ERROR"

    const/4 v2, 0x4

    const-wide/16 v4, 0x15e

    move v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 94
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "DISALLOWED_ACTION"

    const/4 v2, 0x5

    const-wide/16 v4, 0x118

    move v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 97
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "NOTIFICATION"

    const/4 v2, 0x6

    const-wide/16 v4, 0x1f4

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->NOTIFICATION:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 100
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "NOTIFICATION_NAVIGATION"

    const/4 v2, 0x7

    const-wide/16 v4, 0x1c2

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->NOTIFICATION_NAVIGATION:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 103
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "VOICE_PENDING"

    const/16 v2, 0x8

    const-wide/16 v4, 0xc3

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 106
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "VOICE_COMPLETED"

    const/16 v2, 0x9

    const-wide/16 v4, 0x12c

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 109
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "PHOTO_READY"

    const-wide/16 v4, 0x168

    move v2, v8

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->PHOTO_READY:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 112
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "PHOTO_SHUTTER"

    const-wide/16 v4, 0x28a

    move v2, v9

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->PHOTO_SHUTTER:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 115
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "VIDEO_START"

    const-wide/16 v4, 0x1ea

    move v2, v10

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->VIDEO_START:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 118
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "VIDEO_STOP"

    const/16 v2, 0xd

    const-wide/16 v4, 0x2a8

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->VIDEO_STOP:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 121
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "CALL_INCOMING_RING"

    const/16 v2, 0xe

    const-wide/16 v4, 0x7d0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->CALL_INCOMING_RING:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 124
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "CALL_START"

    const/16 v2, 0xf

    const-wide/16 v4, 0x1c2

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->CALL_START:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 127
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "CALL_STOP"

    const/16 v2, 0x10

    const-wide/16 v4, 0x212

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->CALL_STOP:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 130
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "VOLUME_CHANGE"

    const/16 v2, 0x11

    const-wide/16 v4, 0x12c

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->VOLUME_CHANGE:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 77
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/google/glass/sound/SoundManager$SoundId;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->FOCUS:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->NOTIFICATION:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->NOTIFICATION_NAVIGATION:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->PHOTO_READY:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->PHOTO_SHUTTER:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VIDEO_START:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v1, v0, v10

    const/16 v1, 0xd

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->VIDEO_STOP:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->CALL_INCOMING_RING:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->CALL_START:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->CALL_STOP:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->VOLUME_CHANGE:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->$VALUES:[Lcom/google/glass/sound/SoundManager$SoundId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIJ)V
    .locals 0
    .param p3, "platformId"    # I
    .param p4, "durationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)V"
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 149
    iput p3, p0, Lcom/google/glass/sound/SoundManager$SoundId;->platformId:I

    .line 150
    iput-wide p4, p0, Lcom/google/glass/sound/SoundManager$SoundId;->durationMs:J

    .line 151
    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/sound/SoundManager$SoundId;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/sound/SoundManager$SoundId;

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/google/glass/sound/SoundManager$SoundId;->durationMs:J

    return-wide v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/sound/SoundManager$SoundId;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    const-class v0, Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager$SoundId;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/sound/SoundManager$SoundId;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->$VALUES:[Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0}, [Lcom/google/glass/sound/SoundManager$SoundId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/sound/SoundManager$SoundId;

    return-object v0
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/google/glass/sound/SoundManager$SoundId;->durationMs:J

    return-wide v0
.end method

.method public getPlatformId()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/google/glass/sound/SoundManager$SoundId;->platformId:I

    return v0
.end method

.method public isHiddenPlatform()Z
    .locals 2

    .prologue
    .line 162
    iget v0, p0, Lcom/google/glass/sound/SoundManager$SoundId;->platformId:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlatform()Z
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lcom/google/glass/sound/SoundManager$SoundId;->platformId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/glass/sound/SoundManager$SoundId;->platformId:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
