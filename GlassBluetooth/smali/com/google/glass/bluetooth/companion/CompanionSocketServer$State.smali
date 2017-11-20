.class final enum Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;
.super Ljava/lang/Enum;
.source "CompanionSocketServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/companion/CompanionSocketServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

.field public static final enum BT_DISABLED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

.field public static final enum BT_ENABLED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

.field public static final enum BT_PAIR:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

.field public static final enum BT_UNPAIR:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

.field public static final enum DISCONNECTED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

.field public static final enum RFCOMM_CONNECTED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

.field public static final enum TETHERING_CONNECTED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

.field public static final enum WIFI_CONNECTED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    new-instance v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    const-string v1, "BT_DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->BT_DISABLED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    .line 158
    new-instance v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    const-string v1, "BT_ENABLED"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->BT_ENABLED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    .line 159
    new-instance v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    const-string v1, "BT_PAIR"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->BT_PAIR:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    .line 160
    new-instance v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    const-string v1, "BT_UNPAIR"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->BT_UNPAIR:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    .line 161
    new-instance v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    const-string v1, "RFCOMM_CONNECTED"

    invoke-direct {v0, v1, v7}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->RFCOMM_CONNECTED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    .line 162
    new-instance v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    const-string v1, "WIFI_CONNECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->WIFI_CONNECTED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    .line 163
    new-instance v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    const-string v1, "TETHERING_CONNECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->TETHERING_CONNECTED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    .line 164
    new-instance v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->DISCONNECTED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    .line 156
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->BT_DISABLED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->BT_ENABLED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->BT_PAIR:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->BT_UNPAIR:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->RFCOMM_CONNECTED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->WIFI_CONNECTED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->TETHERING_CONNECTED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->DISCONNECTED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->$VALUES:[Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

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
    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    const-class v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->$VALUES:[Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    invoke-virtual {v0}, [Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    return-object v0
.end method
