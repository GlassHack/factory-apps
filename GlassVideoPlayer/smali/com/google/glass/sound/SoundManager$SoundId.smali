.class public final enum Lcom/google/glass/sound/SoundManager$SoundId;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum CALL_INCOMING_RING:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum CALL_START:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum CALL_STOP:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum FOCUS:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum NOTIFICATION:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum NOTIFICATION_MULTIPLE:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum NOTIFICATION_NAVIGATION:Lcom/google/glass/sound/SoundManager$SoundId;

.field private static final NO_PLATFORM_ID:I = -0x1

.field private static final NO_PRIORITY:I = -0x1

.field public static final enum PHOTO_READY:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum PHOTO_SHUTTER:Lcom/google/glass/sound/SoundManager$SoundId;

.field private static final PRIORITY_ACTION:I = 0xa

.field private static final PRIORITY_NOTIFICATION:I = 0x14

.field public static final enum SCALE1:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum SCALE2:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum SCALE3:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum SCALE4:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum SCALE5:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum SCALE6:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum SCALE7:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum SCALE8:Lcom/google/glass/sound/SoundManager$SoundId;

.field public static final enum SCALE_RESOLVE:Lcom/google/glass/sound/SoundManager$SoundId;

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

.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0xc

    const/16 v11, 0xb

    const-wide/16 v9, 0xf0

    const/16 v8, 0xa

    const/4 v4, -0x1

    .line 78
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "TAP"

    const/4 v2, 0x0

    const/16 v3, 0xd

    const-wide/16 v5, 0x8c

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 81
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "FOCUS"

    const/4 v2, 0x1

    const/16 v3, 0xe

    const-wide/16 v5, 0xa

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->FOCUS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 84
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "DISMISS"

    const/4 v2, 0x2

    const/16 v3, 0xf

    const-wide/16 v5, 0x2ee

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 87
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "SUCCESS"

    const/4 v2, 0x3

    const-wide/16 v5, 0x28a

    move v3, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 90
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "ERROR"

    const/4 v2, 0x4

    const-wide/16 v5, 0x15e

    move v3, v11

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 93
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "DISALLOWED_ACTION"

    const/4 v2, 0x5

    const-wide/16 v5, 0x118

    move v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 96
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "NOTIFICATION"

    const/4 v2, 0x6

    const/16 v3, 0x12

    const-wide/16 v5, 0x1f4

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->NOTIFICATION:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 99
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "NOTIFICATION_MULTIPLE"

    const/4 v2, 0x7

    const/16 v3, 0x13

    const-wide/16 v5, 0x37a

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->NOTIFICATION_MULTIPLE:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 102
    new-instance v1, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v2, "NOTIFICATION_NAVIGATION"

    const/16 v3, 0x8

    const/16 v5, 0x14

    const-wide/16 v6, 0x1c2

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->NOTIFICATION_NAVIGATION:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 105
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "VOICE_PENDING"

    const/16 v2, 0x9

    const/16 v3, 0x11

    const-wide/16 v5, 0xc3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 108
    new-instance v0, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v1, "VOICE_COMPLETED"

    const/16 v3, 0x10

    const-wide/16 v5, 0x12c

    move v2, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 111
    new-instance v1, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v2, "PHOTO_READY"

    const-wide/16 v6, 0x168

    move v3, v11

    move v5, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->PHOTO_READY:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 114
    new-instance v1, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v2, "PHOTO_SHUTTER"

    const-wide/16 v6, 0x28a

    move v3, v12

    move v5, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->PHOTO_SHUTTER:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 117
    new-instance v1, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v2, "VIDEO_START"

    const/16 v3, 0xd

    const-wide/16 v6, 0x1ea

    move v5, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VIDEO_START:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 120
    new-instance v1, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v2, "VIDEO_STOP"

    const/16 v3, 0xe

    const-wide/16 v6, 0x2a8

    move v5, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VIDEO_STOP:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 123
    new-instance v1, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v2, "CALL_INCOMING_RING"

    const/16 v3, 0xf

    const-wide/16 v6, 0x3e8

    move v5, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->CALL_INCOMING_RING:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 126
    new-instance v1, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v2, "CALL_START"

    const/16 v3, 0x10

    const-wide/16 v6, 0x1c2

    move v5, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->CALL_START:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 129
    new-instance v1, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v2, "CALL_STOP"

    const/16 v3, 0x11

    const-wide/16 v6, 0x212

    move v5, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->CALL_STOP:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 132
    new-instance v1, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v2, "VOLUME_CHANGE"

    const/16 v3, 0x12

    const-wide/16 v6, 0x12c

    move v5, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOLUME_CHANGE:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 135
    new-instance v1, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v2, "SCALE1"

    const/16 v3, 0x13

    move v5, v8

    move-wide v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE1:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 136
    new-instance v1, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v2, "SCALE2"

    const/16 v3, 0x14

    move v5, v8

    move-wide v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE2:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 137
    new-instance v1, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v2, "SCALE3"

    const/16 v3, 0x15

    move v5, v8

    move-wide v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE3:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 138
    new-instance v1, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v2, "SCALE4"

    const/16 v3, 0x16

    move v5, v8

    move-wide v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE4:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 139
    new-instance v1, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v2, "SCALE5"

    const/16 v3, 0x17

    move v5, v8

    move-wide v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE5:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 140
    new-instance v1, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v2, "SCALE6"

    const/16 v3, 0x18

    move v5, v8

    move-wide v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE6:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 141
    new-instance v1, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v2, "SCALE7"

    const/16 v3, 0x19

    move v5, v8

    move-wide v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE7:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 142
    new-instance v1, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v2, "SCALE8"

    const/16 v3, 0x1a

    move v5, v8

    move-wide v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE8:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 143
    new-instance v1, Lcom/google/glass/sound/SoundManager$SoundId;

    const-string v2, "SCALE_RESOLVE"

    const/16 v3, 0x1b

    const-wide/16 v6, 0x258

    move v5, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/sound/SoundManager$SoundId;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE_RESOLVE:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 76
    const/16 v0, 0x1c

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

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->NOTIFICATION_MULTIPLE:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->NOTIFICATION_NAVIGATION:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->PHOTO_READY:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->PHOTO_SHUTTER:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v1, v0, v12

    const/16 v1, 0xd

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->VIDEO_START:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->VIDEO_STOP:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->CALL_INCOMING_RING:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->CALL_START:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->CALL_STOP:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->VOLUME_CHANGE:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE1:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE2:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE3:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE4:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE5:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE6:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE7:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE8:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE_RESOLVE:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->$VALUES:[Lcom/google/glass/sound/SoundManager$SoundId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIJ)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 169
    if-ne p3, v3, :cond_0

    .line 170
    if-eq p4, v3, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 172
    :cond_0
    if-ne p4, v3, :cond_1

    .line 173
    if-eq p3, v3, :cond_3

    :goto_1
    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 176
    :cond_1
    iput p3, p0, Lcom/google/glass/sound/SoundManager$SoundId;->platformId:I

    .line 177
    iput p4, p0, Lcom/google/glass/sound/SoundManager$SoundId;->priority:I

    .line 178
    iput-wide p5, p0, Lcom/google/glass/sound/SoundManager$SoundId;->durationMs:J

    .line 179
    return-void

    :cond_2
    move v0, v2

    .line 170
    goto :goto_0

    :cond_3
    move v1, v2

    .line 173
    goto :goto_1
.end method

.method static synthetic access$200(Lcom/google/glass/sound/SoundManager$SoundId;)J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/google/glass/sound/SoundManager$SoundId;->durationMs:J

    return-wide v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/sound/SoundManager$SoundId;
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager$SoundId;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/sound/SoundManager$SoundId;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->$VALUES:[Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0}, [Lcom/google/glass/sound/SoundManager$SoundId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/sound/SoundManager$SoundId;

    return-object v0
.end method


# virtual methods
.method public final getDuration()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/google/glass/sound/SoundManager$SoundId;->durationMs:J

    return-wide v0
.end method

.method public final getPlatformId()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/google/glass/sound/SoundManager$SoundId;->platformId:I

    return v0
.end method

.method public final getPriority()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/google/glass/sound/SoundManager$SoundId;->priority:I

    return v0
.end method

.method public final isPlatform()Z
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Lcom/google/glass/sound/SoundManager$SoundId;->platformId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
