.class public final enum Lcom/google/glass/camera/Picture$GcamType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/camera/Picture$GcamType;

.field public static final enum GCAM:Lcom/google/glass/camera/Picture$GcamType;

.field public static final enum GCAM_HQ_FALLBACK:Lcom/google/glass/camera/Picture$GcamType;

.field public static final enum HQ:Lcom/google/glass/camera/Picture$GcamType;


# instance fields
.field private loggingCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/google/glass/camera/Picture$GcamType;

    const-string v1, "HQ"

    const-string v2, "0"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/glass/camera/Picture$GcamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/camera/Picture$GcamType;->HQ:Lcom/google/glass/camera/Picture$GcamType;

    .line 48
    new-instance v0, Lcom/google/glass/camera/Picture$GcamType;

    const-string v1, "GCAM"

    const-string v2, "1"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/glass/camera/Picture$GcamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/camera/Picture$GcamType;->GCAM:Lcom/google/glass/camera/Picture$GcamType;

    .line 49
    new-instance v0, Lcom/google/glass/camera/Picture$GcamType;

    const-string v1, "GCAM_HQ_FALLBACK"

    const-string v2, "2"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/glass/camera/Picture$GcamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/camera/Picture$GcamType;->GCAM_HQ_FALLBACK:Lcom/google/glass/camera/Picture$GcamType;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/camera/Picture$GcamType;

    sget-object v1, Lcom/google/glass/camera/Picture$GcamType;->HQ:Lcom/google/glass/camera/Picture$GcamType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/camera/Picture$GcamType;->GCAM:Lcom/google/glass/camera/Picture$GcamType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/camera/Picture$GcamType;->GCAM_HQ_FALLBACK:Lcom/google/glass/camera/Picture$GcamType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/camera/Picture$GcamType;->$VALUES:[Lcom/google/glass/camera/Picture$GcamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-object p3, p0, Lcom/google/glass/camera/Picture$GcamType;->loggingCode:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/camera/Picture$GcamType;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/google/glass/camera/Picture$GcamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/Picture$GcamType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/camera/Picture$GcamType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/glass/camera/Picture$GcamType;->$VALUES:[Lcom/google/glass/camera/Picture$GcamType;

    invoke-virtual {v0}, [Lcom/google/glass/camera/Picture$GcamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/camera/Picture$GcamType;

    return-object v0
.end method


# virtual methods
.method public final getLoggingCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/camera/Picture$GcamType;->loggingCode:Ljava/lang/String;

    return-object v0
.end method
