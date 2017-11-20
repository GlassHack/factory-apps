.class public final enum Lcom/google/glass/sync/SyncHelper$SyncSource;
.super Ljava/lang/Enum;
.source "SyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sync/SyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SyncSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/sync/SyncHelper$SyncSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/sync/SyncHelper$SyncSource;

.field public static final enum DEVICE_BOOTUP:Lcom/google/glass/sync/SyncHelper$SyncSource;

.field public static final enum DEVICE_TIMELINE:Lcom/google/glass/sync/SyncHelper$SyncSource;

.field public static final enum GCM:Lcom/google/glass/sync/SyncHelper$SyncSource;

.field public static final enum MANUAL_SYNC:Lcom/google/glass/sync/SyncHelper$SyncSource;

.field public static final enum NETWORK_CONNECTED:Lcom/google/glass/sync/SyncHelper$SyncSource;

.field public static final enum POWER_CONNECTED:Lcom/google/glass/sync/SyncHelper$SyncSource;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/google/glass/sync/SyncHelper$SyncSource;

    const-string v1, "POWER_CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/sync/SyncHelper$SyncSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/sync/SyncHelper$SyncSource;->POWER_CONNECTED:Lcom/google/glass/sync/SyncHelper$SyncSource;

    .line 43
    new-instance v0, Lcom/google/glass/sync/SyncHelper$SyncSource;

    const-string v1, "GCM"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/sync/SyncHelper$SyncSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/sync/SyncHelper$SyncSource;->GCM:Lcom/google/glass/sync/SyncHelper$SyncSource;

    .line 46
    new-instance v0, Lcom/google/glass/sync/SyncHelper$SyncSource;

    const-string v1, "DEVICE_TIMELINE"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/sync/SyncHelper$SyncSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/sync/SyncHelper$SyncSource;->DEVICE_TIMELINE:Lcom/google/glass/sync/SyncHelper$SyncSource;

    .line 49
    new-instance v0, Lcom/google/glass/sync/SyncHelper$SyncSource;

    const-string v1, "DEVICE_BOOTUP"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/sync/SyncHelper$SyncSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/sync/SyncHelper$SyncSource;->DEVICE_BOOTUP:Lcom/google/glass/sync/SyncHelper$SyncSource;

    .line 52
    new-instance v0, Lcom/google/glass/sync/SyncHelper$SyncSource;

    const-string v1, "MANUAL_SYNC"

    invoke-direct {v0, v1, v7}, Lcom/google/glass/sync/SyncHelper$SyncSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/sync/SyncHelper$SyncSource;->MANUAL_SYNC:Lcom/google/glass/sync/SyncHelper$SyncSource;

    .line 55
    new-instance v0, Lcom/google/glass/sync/SyncHelper$SyncSource;

    const-string v1, "NETWORK_CONNECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/glass/sync/SyncHelper$SyncSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/sync/SyncHelper$SyncSource;->NETWORK_CONNECTED:Lcom/google/glass/sync/SyncHelper$SyncSource;

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/glass/sync/SyncHelper$SyncSource;

    sget-object v1, Lcom/google/glass/sync/SyncHelper$SyncSource;->POWER_CONNECTED:Lcom/google/glass/sync/SyncHelper$SyncSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/sync/SyncHelper$SyncSource;->GCM:Lcom/google/glass/sync/SyncHelper$SyncSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/sync/SyncHelper$SyncSource;->DEVICE_TIMELINE:Lcom/google/glass/sync/SyncHelper$SyncSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/sync/SyncHelper$SyncSource;->DEVICE_BOOTUP:Lcom/google/glass/sync/SyncHelper$SyncSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/sync/SyncHelper$SyncSource;->MANUAL_SYNC:Lcom/google/glass/sync/SyncHelper$SyncSource;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/sync/SyncHelper$SyncSource;->NETWORK_CONNECTED:Lcom/google/glass/sync/SyncHelper$SyncSource;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/sync/SyncHelper$SyncSource;->$VALUES:[Lcom/google/glass/sync/SyncHelper$SyncSource;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/sync/SyncHelper$SyncSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sync/SyncHelper$SyncSource;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/sync/SyncHelper$SyncSource;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/sync/SyncHelper$SyncSource;->$VALUES:[Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-virtual {v0}, [Lcom/google/glass/sync/SyncHelper$SyncSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/sync/SyncHelper$SyncSource;

    return-object v0
.end method
