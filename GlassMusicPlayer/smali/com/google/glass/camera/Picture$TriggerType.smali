.class public final enum Lcom/google/glass/camera/Picture$TriggerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/camera/Picture$TriggerType;

.field public static final enum BUTTON:Lcom/google/glass/camera/Picture$TriggerType;

.field public static final enum TOUCH:Lcom/google/glass/camera/Picture$TriggerType;

.field public static final enum VOICE:Lcom/google/glass/camera/Picture$TriggerType;

.field public static final enum WINK:Lcom/google/glass/camera/Picture$TriggerType;


# instance fields
.field private loggingCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    new-instance v0, Lcom/google/glass/camera/Picture$TriggerType;

    const-string v1, "BUTTON"

    const-string v2, "0"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/glass/camera/Picture$TriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/camera/Picture$TriggerType;->BUTTON:Lcom/google/glass/camera/Picture$TriggerType;

    .line 65
    new-instance v0, Lcom/google/glass/camera/Picture$TriggerType;

    const-string v1, "VOICE"

    const-string v2, "1"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/glass/camera/Picture$TriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/camera/Picture$TriggerType;->VOICE:Lcom/google/glass/camera/Picture$TriggerType;

    .line 66
    new-instance v0, Lcom/google/glass/camera/Picture$TriggerType;

    const-string v1, "TOUCH"

    const-string v2, "2"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/glass/camera/Picture$TriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/camera/Picture$TriggerType;->TOUCH:Lcom/google/glass/camera/Picture$TriggerType;

    .line 67
    new-instance v0, Lcom/google/glass/camera/Picture$TriggerType;

    const-string v1, "WINK"

    const-string v2, "3"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/glass/camera/Picture$TriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/camera/Picture$TriggerType;->WINK:Lcom/google/glass/camera/Picture$TriggerType;

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/camera/Picture$TriggerType;

    sget-object v1, Lcom/google/glass/camera/Picture$TriggerType;->BUTTON:Lcom/google/glass/camera/Picture$TriggerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/camera/Picture$TriggerType;->VOICE:Lcom/google/glass/camera/Picture$TriggerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/camera/Picture$TriggerType;->TOUCH:Lcom/google/glass/camera/Picture$TriggerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/camera/Picture$TriggerType;->WINK:Lcom/google/glass/camera/Picture$TriggerType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/glass/camera/Picture$TriggerType;->$VALUES:[Lcom/google/glass/camera/Picture$TriggerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput-object p3, p0, Lcom/google/glass/camera/Picture$TriggerType;->loggingCode:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/camera/Picture$TriggerType;
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/google/glass/camera/Picture$TriggerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/Picture$TriggerType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/camera/Picture$TriggerType;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/glass/camera/Picture$TriggerType;->$VALUES:[Lcom/google/glass/camera/Picture$TriggerType;

    invoke-virtual {v0}, [Lcom/google/glass/camera/Picture$TriggerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/camera/Picture$TriggerType;

    return-object v0
.end method


# virtual methods
.method public final getLoggingCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/glass/camera/Picture$TriggerType;->loggingCode:Ljava/lang/String;

    return-object v0
.end method
