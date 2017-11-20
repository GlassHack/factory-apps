.class final enum Lcom/google/glass/setup/PostSetupActivity$State;
.super Ljava/lang/Enum;
.source "PostSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/PostSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/setup/PostSetupActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/setup/PostSetupActivity$State;

.field public static final enum PAIRING:Lcom/google/glass/setup/PostSetupActivity$State;

.field public static final enum TAP_TO_PAIR:Lcom/google/glass/setup/PostSetupActivity$State;

.field public static final enum WELCOME:Lcom/google/glass/setup/PostSetupActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/google/glass/setup/PostSetupActivity$State;

    const-string v1, "TAP_TO_PAIR"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/PostSetupActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/PostSetupActivity$State;->TAP_TO_PAIR:Lcom/google/glass/setup/PostSetupActivity$State;

    .line 64
    new-instance v0, Lcom/google/glass/setup/PostSetupActivity$State;

    const-string v1, "PAIRING"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/setup/PostSetupActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/PostSetupActivity$State;->PAIRING:Lcom/google/glass/setup/PostSetupActivity$State;

    .line 66
    new-instance v0, Lcom/google/glass/setup/PostSetupActivity$State;

    const-string v1, "WELCOME"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/setup/PostSetupActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/PostSetupActivity$State;->WELCOME:Lcom/google/glass/setup/PostSetupActivity$State;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/setup/PostSetupActivity$State;

    sget-object v1, Lcom/google/glass/setup/PostSetupActivity$State;->TAP_TO_PAIR:Lcom/google/glass/setup/PostSetupActivity$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/setup/PostSetupActivity$State;->PAIRING:Lcom/google/glass/setup/PostSetupActivity$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/setup/PostSetupActivity$State;->WELCOME:Lcom/google/glass/setup/PostSetupActivity$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/setup/PostSetupActivity$State;->$VALUES:[Lcom/google/glass/setup/PostSetupActivity$State;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/setup/PostSetupActivity$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lcom/google/glass/setup/PostSetupActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/setup/PostSetupActivity$State;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/setup/PostSetupActivity$State;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/glass/setup/PostSetupActivity$State;->$VALUES:[Lcom/google/glass/setup/PostSetupActivity$State;

    invoke-virtual {v0}, [Lcom/google/glass/setup/PostSetupActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/setup/PostSetupActivity$State;

    return-object v0
.end method
