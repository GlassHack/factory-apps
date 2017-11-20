.class public final enum Lcom/google/glass/setup/SetupFlowController$SetupMethod;
.super Ljava/lang/Enum;
.source "SetupFlowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/SetupFlowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SetupMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/setup/SetupFlowController$SetupMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/setup/SetupFlowController$SetupMethod;

.field public static final enum ANDROID:Lcom/google/glass/setup/SetupFlowController$SetupMethod;

.field public static final enum COMPUTER:Lcom/google/glass/setup/SetupFlowController$SetupMethod;

.field public static final enum HELP:Lcom/google/glass/setup/SetupFlowController$SetupMethod;

.field public static final enum IPHONE:Lcom/google/glass/setup/SetupFlowController$SetupMethod;


# instance fields
.field final resourceInstruction:I

.field final resourcePhoneIcon:I

.field final resourcePhoneName:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 170
    new-instance v0, Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    const-string v1, "ANDROID"

    sget v3, Lcom/google/glass/setup/R$drawable;->ic_mobile_phone_50:I

    sget v4, Lcom/google/glass/setup/R$string;->android_phone:I

    sget v5, Lcom/google/glass/setup/R$string;->tap_using_one:I

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/setup/SetupFlowController$SetupMethod;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->ANDROID:Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    .line 172
    new-instance v3, Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    const-string v4, "IPHONE"

    sget v6, Lcom/google/glass/setup/R$drawable;->ic_mobile_phone_50:I

    sget v7, Lcom/google/glass/setup/R$string;->ios_phone:I

    sget v8, Lcom/google/glass/setup/R$string;->tap_using_one:I

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/setup/SetupFlowController$SetupMethod;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->IPHONE:Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    .line 173
    new-instance v3, Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    const-string v4, "COMPUTER"

    sget v6, Lcom/google/glass/setup/R$drawable;->ic_computer_50:I

    sget v7, Lcom/google/glass/setup/R$string;->computer:I

    sget v8, Lcom/google/glass/setup/R$string;->swipe_to_help:I

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/setup/SetupFlowController$SetupMethod;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->COMPUTER:Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    .line 175
    new-instance v3, Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    const-string v4, "HELP"

    sget v6, Lcom/google/glass/setup/R$drawable;->ic_help_50:I

    sget v7, Lcom/google/glass/setup/R$string;->help:I

    sget v8, Lcom/google/glass/setup/R$string;->help_detail:I

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/setup/SetupFlowController$SetupMethod;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->HELP:Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    .line 169
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->ANDROID:Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->IPHONE:Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->COMPUTER:Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->HELP:Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    aput-object v1, v0, v11

    sput-object v0, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->$VALUES:[Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "resourcePhoneIcon"    # I
    .param p4, "resourcePhoneName"    # I
    .param p5, "resourceInstruction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 182
    iput p3, p0, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->resourcePhoneIcon:I

    .line 183
    iput p4, p0, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->resourcePhoneName:I

    .line 184
    iput p5, p0, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->resourceInstruction:I

    .line 185
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/setup/SetupFlowController$SetupMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 169
    const-class v0, Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/setup/SetupFlowController$SetupMethod;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->$VALUES:[Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    invoke-virtual {v0}, [Lcom/google/glass/setup/SetupFlowController$SetupMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    return-object v0
.end method
