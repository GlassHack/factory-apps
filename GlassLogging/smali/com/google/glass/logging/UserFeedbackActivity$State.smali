.class final enum Lcom/google/glass/logging/UserFeedbackActivity$State;
.super Ljava/lang/Enum;
.source "UserFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/UserFeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/logging/UserFeedbackActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/logging/UserFeedbackActivity$State;

.field public static final enum ANNOTATE:Lcom/google/glass/logging/UserFeedbackActivity$State;

.field public static final enum CONFIRM:Lcom/google/glass/logging/UserFeedbackActivity$State;

.field public static final enum REVIEW:Lcom/google/glass/logging/UserFeedbackActivity$State;

.field public static final enum SENT:Lcom/google/glass/logging/UserFeedbackActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    new-instance v0, Lcom/google/glass/logging/UserFeedbackActivity$State;

    const-string v1, "ANNOTATE"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/logging/UserFeedbackActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/logging/UserFeedbackActivity$State;->ANNOTATE:Lcom/google/glass/logging/UserFeedbackActivity$State;

    .line 127
    new-instance v0, Lcom/google/glass/logging/UserFeedbackActivity$State;

    const-string v1, "REVIEW"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/logging/UserFeedbackActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/logging/UserFeedbackActivity$State;->REVIEW:Lcom/google/glass/logging/UserFeedbackActivity$State;

    .line 131
    new-instance v0, Lcom/google/glass/logging/UserFeedbackActivity$State;

    const-string v1, "CONFIRM"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/logging/UserFeedbackActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/logging/UserFeedbackActivity$State;->CONFIRM:Lcom/google/glass/logging/UserFeedbackActivity$State;

    .line 134
    new-instance v0, Lcom/google/glass/logging/UserFeedbackActivity$State;

    const-string v1, "SENT"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/logging/UserFeedbackActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/logging/UserFeedbackActivity$State;->SENT:Lcom/google/glass/logging/UserFeedbackActivity$State;

    .line 120
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/logging/UserFeedbackActivity$State;

    sget-object v1, Lcom/google/glass/logging/UserFeedbackActivity$State;->ANNOTATE:Lcom/google/glass/logging/UserFeedbackActivity$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/logging/UserFeedbackActivity$State;->REVIEW:Lcom/google/glass/logging/UserFeedbackActivity$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/logging/UserFeedbackActivity$State;->CONFIRM:Lcom/google/glass/logging/UserFeedbackActivity$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/logging/UserFeedbackActivity$State;->SENT:Lcom/google/glass/logging/UserFeedbackActivity$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/logging/UserFeedbackActivity$State;->$VALUES:[Lcom/google/glass/logging/UserFeedbackActivity$State;

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
    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/logging/UserFeedbackActivity$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 120
    const-class v0, Lcom/google/glass/logging/UserFeedbackActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/logging/UserFeedbackActivity$State;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/logging/UserFeedbackActivity$State;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/google/glass/logging/UserFeedbackActivity$State;->$VALUES:[Lcom/google/glass/logging/UserFeedbackActivity$State;

    invoke-virtual {v0}, [Lcom/google/glass/logging/UserFeedbackActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/logging/UserFeedbackActivity$State;

    return-object v0
.end method
