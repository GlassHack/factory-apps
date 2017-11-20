.class public final enum Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

.field public static final enum EMAIL_ADDRESS:Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

.field public static final enum PHONE_NUMBER:Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

.field public static final enum POSTAL_ADDRESS:Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 29
    new-instance v0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    const-string v1, "PHONE_NUMBER"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->PHONE_NUMBER:Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    .line 30
    new-instance v0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    const-string v1, "EMAIL_ADDRESS"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->EMAIL_ADDRESS:Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    .line 31
    new-instance v0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    const-string v1, "POSTAL_ADDRESS"

    invoke-direct {v0, v1, v3, v5}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->POSTAL_ADDRESS:Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    .line 28
    new-array v0, v5, [Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    sget-object v1, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->PHONE_NUMBER:Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->EMAIL_ADDRESS:Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->POSTAL_ADDRESS:Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->$VALUES:[Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->value:I

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->value:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->$VALUES:[Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    invoke-virtual {v0}, [Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->value:I

    return v0
.end method
