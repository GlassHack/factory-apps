.class final enum Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;
.super Ljava/lang/Enum;
.source "ConnectivityStatusCardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

.field public static final enum HIDDEN:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

.field public static final enum NO_WIFI_BT_CONNECTED:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

.field public static final enum NO_WIFI_BT_CONNECTED_NO_DATA:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

.field public static final enum NO_WIFI_BT_CONNECTED_WITH_ISSUE:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

.field public static final enum NO_WIFI_NO_BT:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

.field public static final enum WIFI_CONNECTED:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

.field public static final enum WIFI_CONNECTED_NO_DATA:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;


# instance fields
.field final logAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    new-instance v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    const-string v1, "HIDDEN"

    const-string v2, "0"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->HIDDEN:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    .line 70
    new-instance v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    const-string v1, "NO_WIFI_NO_BT"

    const-string v2, "1"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->NO_WIFI_NO_BT:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    .line 71
    new-instance v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    const-string v1, "WIFI_CONNECTED_NO_DATA"

    const-string v2, "3"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->WIFI_CONNECTED_NO_DATA:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    .line 72
    new-instance v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    const-string v1, "WIFI_CONNECTED"

    const-string v2, "2"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->WIFI_CONNECTED:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    .line 73
    new-instance v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    const-string v1, "NO_WIFI_BT_CONNECTED"

    const-string v2, "4"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->NO_WIFI_BT_CONNECTED:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    .line 74
    new-instance v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    const-string v1, "NO_WIFI_BT_CONNECTED_NO_DATA"

    const/4 v2, 0x5

    const-string v3, "5"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->NO_WIFI_BT_CONNECTED_NO_DATA:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    .line 75
    new-instance v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    const-string v1, "NO_WIFI_BT_CONNECTED_WITH_ISSUE"

    const/4 v2, 0x6

    const-string v3, "6"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->NO_WIFI_BT_CONNECTED_WITH_ISSUE:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    .line 68
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    sget-object v1, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->HIDDEN:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->NO_WIFI_NO_BT:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->WIFI_CONNECTED_NO_DATA:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->WIFI_CONNECTED:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->NO_WIFI_BT_CONNECTED:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->NO_WIFI_BT_CONNECTED_NO_DATA:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->NO_WIFI_BT_CONNECTED_WITH_ISSUE:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->$VALUES:[Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "logAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput-object p3, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->logAction:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    const-class v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->$VALUES:[Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    invoke-virtual {v0}, [Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    return-object v0
.end method
