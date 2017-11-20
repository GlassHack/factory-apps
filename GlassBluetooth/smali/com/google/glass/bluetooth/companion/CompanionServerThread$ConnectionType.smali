.class final enum Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;
.super Ljava/lang/Enum;
.source "CompanionServerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/companion/CompanionServerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

.field public static final enum RFCOMM:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

.field public static final enum TETHERING_MULTICAST:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

.field public static final enum WIFI_MULTICAST:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;


# instance fields
.field private final logType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    const-string v1, "RFCOMM"

    const-string v2, "3"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->RFCOMM:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    .line 18
    new-instance v0, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    const-string v1, "TETHERING_MULTICAST"

    const-string v2, "4"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->TETHERING_MULTICAST:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    .line 19
    new-instance v0, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    const-string v1, "WIFI_MULTICAST"

    const-string v2, "5"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->WIFI_MULTICAST:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->RFCOMM:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->TETHERING_MULTICAST:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->WIFI_MULTICAST:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->$VALUES:[Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "logType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->logType:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->$VALUES:[Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    invoke-virtual {v0}, [Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    return-object v0
.end method


# virtual methods
.method public getLogType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->logType:Ljava/lang/String;

    return-object v0
.end method
