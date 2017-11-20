.class public final enum Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;
.super Ljava/lang/Enum;
.source "MessageDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Message"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

.field public static final enum ALIGNMENTLOST:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

.field public static final enum HITTOSTART:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

.field public static final enum HOLDSTILL:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

    const-string v1, "ALIGNMENTLOST"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;->ALIGNMENTLOST:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

    const-string v1, "HOLDSTILL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;->HOLDSTILL:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

    const-string v1, "HITTOSTART"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;->HITTOSTART:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

    .line 118
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

    sget-object v1, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;->ALIGNMENTLOST:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;->HOLDSTILL:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;->HITTOSTART:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;->$VALUES:[Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

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
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    const-class v0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;->$VALUES:[Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

    invoke-virtual {v0}, [Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

    return-object v0
.end method
