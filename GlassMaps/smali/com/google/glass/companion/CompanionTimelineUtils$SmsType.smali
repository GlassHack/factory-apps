.class public final enum Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;

.field public static final enum GOOGLE_VOICE_SMS:Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;

.field public static final enum NATIVE_MMS:Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;

.field public static final enum NATIVE_SMS:Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;


# instance fields
.field private final smsComponent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    new-instance v0, Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;

    const-string v1, "NATIVE_SMS"

    const-string v2, "com.android.mms"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;->NATIVE_SMS:Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;

    .line 58
    new-instance v0, Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;

    const-string v1, "NATIVE_MMS"

    const-string v2, "com.android.multimediamessage"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;->NATIVE_MMS:Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;

    .line 59
    new-instance v0, Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;

    const-string v1, "GOOGLE_VOICE_SMS"

    const-string v2, "com.google.android.apps.googlevoice"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;->GOOGLE_VOICE_SMS:Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;

    sget-object v1, Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;->NATIVE_SMS:Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;->NATIVE_MMS:Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;->GOOGLE_VOICE_SMS:Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;->$VALUES:[Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-object p3, p0, Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;->smsComponent:Ljava/lang/String;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;->smsComponent:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;->$VALUES:[Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;

    invoke-virtual {v0}, [Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;

    return-object v0
.end method
