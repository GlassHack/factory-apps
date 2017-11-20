.class final enum Lcom/google/glass/setup/SetupFlowController$State;
.super Ljava/lang/Enum;
.source "SetupFlowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/SetupFlowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/setup/SetupFlowController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum CHOOSE_PHONE:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum FINALIZING_SETUP:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum IOS_DOWNLOAD_MYGLASS:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum IOS_SUCCESSFUL_TETHERED:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum IOS_TURN_ON_HOTSPOT:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum IOS_WAIT_FOR_PAIRING:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum LOCALE_SELECTOR_CONFIRM:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum LOCALE_SELECTOR_CONFIRMED:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum LOCALE_SELECTOR_SELECT_LOCALE:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum LOCALE_SELECTOR_VIDEO_1:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum LOCALE_SELECTOR_VIDEO_2:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum LOW_BATTERY:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum POST_SWIPE_DOWN:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum POST_SWIPE_FORWARD:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum POST_TAP:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum PRE_SCAN_QR_CODE:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum SETUP_HELP:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum SHOW_DEVICE_ID:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum SKIP_SETUP_SCAN_QR_CODE_FROM_LOCALE_SELECTOR:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum SKIP_SETUP_SCAN_QR_CODE_FROM_SWIPE_FORWARD:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum START_SETUP:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum SWIPE_DOWN:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum SWIPE_DOWN_BLANK_SCREEN:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum SWIPE_FORWARD:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum TAP:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum VISIT_WEB_SITE:Lcom/google/glass/setup/SetupFlowController$State;

.field public static final enum WAIT_FOR_COMPANION:Lcom/google/glass/setup/SetupFlowController$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 113
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "LOW_BATTERY"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->LOW_BATTERY:Lcom/google/glass/setup/SetupFlowController$State;

    .line 115
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "SWIPE_FORWARD"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->SWIPE_FORWARD:Lcom/google/glass/setup/SetupFlowController$State;

    .line 117
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "POST_SWIPE_FORWARD"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->POST_SWIPE_FORWARD:Lcom/google/glass/setup/SetupFlowController$State;

    .line 119
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "SWIPE_DOWN"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->SWIPE_DOWN:Lcom/google/glass/setup/SetupFlowController$State;

    .line 121
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "SWIPE_DOWN_BLANK_SCREEN"

    invoke-direct {v0, v1, v7}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->SWIPE_DOWN_BLANK_SCREEN:Lcom/google/glass/setup/SetupFlowController$State;

    .line 123
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "POST_SWIPE_DOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->POST_SWIPE_DOWN:Lcom/google/glass/setup/SetupFlowController$State;

    .line 125
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "TAP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->TAP:Lcom/google/glass/setup/SetupFlowController$State;

    .line 127
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "POST_TAP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->POST_TAP:Lcom/google/glass/setup/SetupFlowController$State;

    .line 129
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "START_SETUP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->START_SETUP:Lcom/google/glass/setup/SetupFlowController$State;

    .line 131
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "CHOOSE_PHONE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->CHOOSE_PHONE:Lcom/google/glass/setup/SetupFlowController$State;

    .line 133
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "WAIT_FOR_COMPANION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->WAIT_FOR_COMPANION:Lcom/google/glass/setup/SetupFlowController$State;

    .line 135
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "SHOW_DEVICE_ID"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->SHOW_DEVICE_ID:Lcom/google/glass/setup/SetupFlowController$State;

    .line 137
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "VISIT_WEB_SITE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->VISIT_WEB_SITE:Lcom/google/glass/setup/SetupFlowController$State;

    .line 139
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "PRE_SCAN_QR_CODE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->PRE_SCAN_QR_CODE:Lcom/google/glass/setup/SetupFlowController$State;

    .line 141
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "SKIP_SETUP_SCAN_QR_CODE_FROM_SWIPE_FORWARD"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->SKIP_SETUP_SCAN_QR_CODE_FROM_SWIPE_FORWARD:Lcom/google/glass/setup/SetupFlowController$State;

    .line 143
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "SKIP_SETUP_SCAN_QR_CODE_FROM_LOCALE_SELECTOR"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->SKIP_SETUP_SCAN_QR_CODE_FROM_LOCALE_SELECTOR:Lcom/google/glass/setup/SetupFlowController$State;

    .line 145
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "FINALIZING_SETUP"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->FINALIZING_SETUP:Lcom/google/glass/setup/SetupFlowController$State;

    .line 147
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "SETUP_HELP"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->SETUP_HELP:Lcom/google/glass/setup/SetupFlowController$State;

    .line 149
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "IOS_WAIT_FOR_PAIRING"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->IOS_WAIT_FOR_PAIRING:Lcom/google/glass/setup/SetupFlowController$State;

    .line 151
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "IOS_TURN_ON_HOTSPOT"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->IOS_TURN_ON_HOTSPOT:Lcom/google/glass/setup/SetupFlowController$State;

    .line 153
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "IOS_SUCCESSFUL_TETHERED"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->IOS_SUCCESSFUL_TETHERED:Lcom/google/glass/setup/SetupFlowController$State;

    .line 155
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "IOS_DOWNLOAD_MYGLASS"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->IOS_DOWNLOAD_MYGLASS:Lcom/google/glass/setup/SetupFlowController$State;

    .line 157
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "LOCALE_SELECTOR_VIDEO_1"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->LOCALE_SELECTOR_VIDEO_1:Lcom/google/glass/setup/SetupFlowController$State;

    .line 159
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "LOCALE_SELECTOR_VIDEO_2"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->LOCALE_SELECTOR_VIDEO_2:Lcom/google/glass/setup/SetupFlowController$State;

    .line 161
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "LOCALE_SELECTOR_SELECT_LOCALE"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->LOCALE_SELECTOR_SELECT_LOCALE:Lcom/google/glass/setup/SetupFlowController$State;

    .line 163
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "LOCALE_SELECTOR_CONFIRM"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->LOCALE_SELECTOR_CONFIRM:Lcom/google/glass/setup/SetupFlowController$State;

    .line 165
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$State;

    const-string v1, "LOCALE_SELECTOR_CONFIRMED"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->LOCALE_SELECTOR_CONFIRMED:Lcom/google/glass/setup/SetupFlowController$State;

    .line 111
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->LOW_BATTERY:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->SWIPE_FORWARD:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->POST_SWIPE_FORWARD:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->SWIPE_DOWN:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->SWIPE_DOWN_BLANK_SCREEN:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->POST_SWIPE_DOWN:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->TAP:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->POST_TAP:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->START_SETUP:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->CHOOSE_PHONE:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->WAIT_FOR_COMPANION:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->SHOW_DEVICE_ID:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->VISIT_WEB_SITE:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->PRE_SCAN_QR_CODE:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->SKIP_SETUP_SCAN_QR_CODE_FROM_SWIPE_FORWARD:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->SKIP_SETUP_SCAN_QR_CODE_FROM_LOCALE_SELECTOR:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->FINALIZING_SETUP:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->SETUP_HELP:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->IOS_WAIT_FOR_PAIRING:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->IOS_TURN_ON_HOTSPOT:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->IOS_SUCCESSFUL_TETHERED:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->IOS_DOWNLOAD_MYGLASS:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->LOCALE_SELECTOR_VIDEO_1:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->LOCALE_SELECTOR_VIDEO_2:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->LOCALE_SELECTOR_SELECT_LOCALE:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->LOCALE_SELECTOR_CONFIRM:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$State;->LOCALE_SELECTOR_CONFIRMED:Lcom/google/glass/setup/SetupFlowController$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$State;->$VALUES:[Lcom/google/glass/setup/SetupFlowController$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/setup/SetupFlowController$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 111
    const-class v0, Lcom/google/glass/setup/SetupFlowController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/setup/SetupFlowController$State;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/setup/SetupFlowController$State;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/google/glass/setup/SetupFlowController$State;->$VALUES:[Lcom/google/glass/setup/SetupFlowController$State;

    invoke-virtual {v0}, [Lcom/google/glass/setup/SetupFlowController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/setup/SetupFlowController$State;

    return-object v0
.end method
