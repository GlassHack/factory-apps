.class final enum Lcom/google/glass/setup/SetupFlowController$Transition;
.super Ljava/lang/Enum;
.source "SetupFlowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/SetupFlowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Transition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/setup/SetupFlowController$Transition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/setup/SetupFlowController$Transition;

.field public static final enum CLEAR_AND_PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

.field public static final enum POP:Lcom/google/glass/setup/SetupFlowController$Transition;

.field public static final enum POP_TO_CHOOSE_PHONE:Lcom/google/glass/setup/SetupFlowController$Transition;

.field public static final enum PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

.field public static final enum UPDATE:Lcom/google/glass/setup/SetupFlowController$Transition;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 191
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$Transition;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$Transition;->UPDATE:Lcom/google/glass/setup/SetupFlowController$Transition;

    .line 193
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$Transition;

    const-string v1, "PUSH"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/setup/SetupFlowController$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$Transition;->PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    .line 195
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$Transition;

    const-string v1, "POP"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/setup/SetupFlowController$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$Transition;->POP:Lcom/google/glass/setup/SetupFlowController$Transition;

    .line 197
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$Transition;

    const-string v1, "POP_TO_CHOOSE_PHONE"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/setup/SetupFlowController$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$Transition;->POP_TO_CHOOSE_PHONE:Lcom/google/glass/setup/SetupFlowController$Transition;

    .line 199
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$Transition;

    const-string v1, "CLEAR_AND_PUSH"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/setup/SetupFlowController$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$Transition;->CLEAR_AND_PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    .line 189
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/glass/setup/SetupFlowController$Transition;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$Transition;->UPDATE:Lcom/google/glass/setup/SetupFlowController$Transition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$Transition;->PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$Transition;->POP:Lcom/google/glass/setup/SetupFlowController$Transition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$Transition;->POP_TO_CHOOSE_PHONE:Lcom/google/glass/setup/SetupFlowController$Transition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$Transition;->CLEAR_AND_PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$Transition;->$VALUES:[Lcom/google/glass/setup/SetupFlowController$Transition;

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
    .line 189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/setup/SetupFlowController$Transition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 189
    const-class v0, Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/setup/SetupFlowController$Transition;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/setup/SetupFlowController$Transition;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/google/glass/setup/SetupFlowController$Transition;->$VALUES:[Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {v0}, [Lcom/google/glass/setup/SetupFlowController$Transition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/setup/SetupFlowController$Transition;

    return-object v0
.end method
