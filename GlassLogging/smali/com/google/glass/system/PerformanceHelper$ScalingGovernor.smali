.class final enum Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;
.super Ljava/lang/Enum;
.source "PerformanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/system/PerformanceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ScalingGovernor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

.field public static final enum CONSERVATIVE:Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

.field public static final enum HOTPLUG:Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

.field public static final enum INTERACTIVE:Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

.field public static final enum ONDEMAND:Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

.field public static final enum PERFORMANCE:Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

.field public static final enum POWERSAVE:Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

.field public static final enum USERSPACE:Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    new-instance v0, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    const-string v1, "INTERACTIVE"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;->INTERACTIVE:Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    .line 82
    new-instance v0, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    const-string v1, "ONDEMAND"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;->ONDEMAND:Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    .line 83
    new-instance v0, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    const-string v1, "POWERSAVE"

    invoke-direct {v0, v1, v6, v6}, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;->POWERSAVE:Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    .line 84
    new-instance v0, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    const-string v1, "CONSERVATIVE"

    invoke-direct {v0, v1, v7, v7}, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;->CONSERVATIVE:Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    .line 85
    new-instance v0, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    const-string v1, "PERFORMANCE"

    invoke-direct {v0, v1, v8, v8}, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;->PERFORMANCE:Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    .line 86
    new-instance v0, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    const-string v1, "HOTPLUG"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;->HOTPLUG:Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    .line 87
    new-instance v0, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    const-string v1, "USERSPACE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;->USERSPACE:Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    .line 80
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    sget-object v1, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;->INTERACTIVE:Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;->ONDEMAND:Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;->POWERSAVE:Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;->CONSERVATIVE:Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;->PERFORMANCE:Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;->HOTPLUG:Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;->USERSPACE:Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;->$VALUES:[Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput p3, p0, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;->id:I

    .line 93
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    const-class v0, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;->$VALUES:[Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    invoke-virtual {v0}, [Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;->id:I

    return v0
.end method
