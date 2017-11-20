.class public final enum Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;
.super Ljava/lang/Enum;
.source "LookAtScreenTtsInstruction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

.field public static final enum FIRST_LOOK_AT:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

.field public static final enum LOOK_AWAY:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

.field public static final enum LOOK_BACK:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

.field public static final enum LOOK_STRAIGHT_AHEAD:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

.field public static final enum NOW_YOU_CAN:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

.field public static final enum WE_DIDNT_CATCH_THAT:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;


# instance fields
.field public final spokenStringResource:I

.field public final writtenStringResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 9
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    const-string v1, "FIRST_LOOK_AT"

    sget v2, Lcom/google/glass/settings/ui/R$string;->look_at_circle_tts:I

    sget v3, Lcom/google/glass/settings/ui/R$string;->look_at_circle_message:I

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->FIRST_LOOK_AT:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    .line 10
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    const-string v1, "LOOK_AWAY"

    sget v2, Lcom/google/glass/settings/ui/R$string;->look_straightahead_tts:I

    sget v3, Lcom/google/glass/settings/ui/R$string;->look_straightahead_message:I

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->LOOK_AWAY:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    .line 11
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    const-string v1, "LOOK_BACK"

    sget v2, Lcom/google/glass/settings/ui/R$string;->look_at_circle_again_tts:I

    sget v3, Lcom/google/glass/settings/ui/R$string;->look_at_circle_message:I

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->LOOK_BACK:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    .line 12
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    const-string v1, "LOOK_STRAIGHT_AHEAD"

    sget v2, Lcom/google/glass/settings/ui/R$string;->look_at_screen_practice_instruction_tts:I

    sget v3, Lcom/google/glass/settings/ui/R$string;->look_at_screen_practice_instruction_message:I

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->LOOK_STRAIGHT_AHEAD:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    .line 14
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    const-string v1, "NOW_YOU_CAN"

    sget v2, Lcom/google/glass/settings/ui/R$string;->look_at_screen_practice_notification_tts:I

    sget v3, Lcom/google/glass/settings/ui/R$string;->look_at_screen_practice_notification_message:I

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->NOW_YOU_CAN:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    .line 16
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    const-string v1, "WE_DIDNT_CATCH_THAT"

    const/4 v2, 0x5

    sget v3, Lcom/google/glass/settings/ui/R$string;->look_at_screen_practice_failure_first_tts:I

    sget v4, Lcom/google/glass/settings/ui/R$string;->look_at_screen_practice_failure_first_message:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->WE_DIDNT_CATCH_THAT:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    sget-object v1, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->FIRST_LOOK_AT:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->LOOK_AWAY:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->LOOK_BACK:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->LOOK_STRAIGHT_AHEAD:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->NOW_YOU_CAN:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->WE_DIDNT_CATCH_THAT:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->$VALUES:[Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "spokenResource"    # I
    .param p4, "writtenResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->spokenStringResource:I

    .line 27
    iput p4, p0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->writtenStringResource:I

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->$VALUES:[Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    invoke-virtual {v0}, [Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    return-object v0
.end method
