.class public final enum Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;
.super Ljava/lang/Enum;
.source "PingRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/companion/PingRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PingDelay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

.field public static final enum AT_ONCE:Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

.field public static final enum DEFAULT:Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

.field public static final enum SHORT:Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

    const-string v1, "AT_ONCE"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;->AT_ONCE:Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

    new-instance v0, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

    const-string v1, "SHORT"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;->SHORT:Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

    new-instance v0, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;->DEFAULT:Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

    sget-object v1, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;->AT_ONCE:Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;->SHORT:Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;->DEFAULT:Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;->$VALUES:[Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;->$VALUES:[Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

    invoke-virtual {v0}, [Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/bluetooth/companion/PingRequester$PingDelay;

    return-object v0
.end method