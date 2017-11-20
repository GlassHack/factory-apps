.class public final enum Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;
.super Ljava/lang/Enum;
.source "WebAnswerViewJavascriptEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitializationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

.field public static final enum DISABLED:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

.field public static final enum PENDING:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

.field public static final enum READY:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;->READY:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    .line 93
    new-instance v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;->PENDING:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    .line 94
    new-instance v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;->DISABLED:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    sget-object v1, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;->READY:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;->PENDING:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;->DISABLED:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;->$VALUES:[Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    const-class v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;->$VALUES:[Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    invoke-virtual {v0}, [Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    return-object v0
.end method
