.class final enum Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;
.super Ljava/lang/Enum;
.source "PairingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/pairing/PairingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InitializationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

.field public static final enum INITIALIZED:Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

.field public static final enum INITIALIZING:Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

.field public static final enum UNINITIALIZED:Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;->UNINITIALIZED:Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    new-instance v0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    const-string v1, "INITIALIZING"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;->INITIALIZING:Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    new-instance v0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;->INITIALIZED:Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    sget-object v1, Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;->UNINITIALIZED:Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;->INITIALIZING:Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;->INITIALIZED:Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;->$VALUES:[Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;->$VALUES:[Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    invoke-virtual {v0}, [Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    return-object v0
.end method
