.class public final enum Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
.super Ljava/lang/Enum;
.source "OngoingActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/ongoing/OngoingActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActivityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

.field public static final enum HOME:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

.field public static final enum MUSIC:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

.field public static final enum NAVIGATION:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->HOME:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    .line 42
    new-instance v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    const-string v1, "NAVIGATION"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->NAVIGATION:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    .line 43
    new-instance v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    const-string v1, "MUSIC"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->MUSIC:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->HOME:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->NAVIGATION:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->MUSIC:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->$VALUES:[Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->$VALUES:[Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v0}, [Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    return-object v0
.end method
