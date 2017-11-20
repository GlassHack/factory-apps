.class final Lcom/google/glass/voice/menu/GlassMenuSorter$3;
.super Ljava/lang/Object;
.source "GlassMenuSorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/menu/GlassMenuSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;",
        ">;"
    }
.end annotation


# instance fields
.field private final systemCommandsArray:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v1, Lcom/google/glass/voice/VoiceTriggerUtils;->SYSTEM_COMMANDS:[Lcom/google/android/glass/app/VoiceTriggers$Command;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuSorter$3;->systemCommandsArray:[Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/google/glass/voice/VoiceTriggerUtils;->SYSTEM_COMMANDS:[Lcom/google/android/glass/app/VoiceTriggers$Command;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuSorter$3;->systemCommandsArray:[Ljava/lang/String;

    sget-object v2, Lcom/google/glass/voice/VoiceTriggerUtils;->SYSTEM_COMMANDS:[Lcom/google/android/glass/app/VoiceTriggers$Command;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/glass/app/VoiceTriggers$Command;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method private getIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "commandLiteral"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuSorter$3;->systemCommandsArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuSorter$3;->systemCommandsArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 82
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    const v0, 0x7fffffff

    goto :goto_1
.end method


# virtual methods
.method public compare(Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;)I
    .locals 3
    .param p1, "lhs"    # Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;
    .param p2, "rhs"    # Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    .prologue
    .line 76
    iget-object v2, p1, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->commandName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/glass/voice/menu/GlassMenuSorter$3;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, "lhsIndex":I
    iget-object v2, p2, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->commandName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/glass/voice/menu/GlassMenuSorter$3;->getIndex(Ljava/lang/String;)I

    move-result v1

    .line 78
    .local v1, "rhsIndex":I
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    check-cast p2, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/voice/menu/GlassMenuSorter$3;->compare(Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;)I

    move-result v0

    return v0
.end method
