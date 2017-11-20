.class Lcom/google/glass/voice/menu/GlassMenuUsageContract$VoiceMenuItemComparator;
.super Ljava/lang/Object;
.source "GlassMenuUsageContract.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/menu/GlassMenuUsageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VoiceMenuItemComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/glass/voice/menu/VoiceMenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final sortedDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "sortedDatas":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$VoiceMenuItemComparator;->sortedDatas:Ljava/util/List;

    .line 228
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/glass/voice/menu/GlassMenuUsageContract$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lcom/google/glass/voice/menu/GlassMenuUsageContract$1;

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/GlassMenuUsageContract$VoiceMenuItemComparator;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private getIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "commandName"    # Ljava/lang/String;

    .prologue
    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$VoiceMenuItemComparator;->sortedDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$VoiceMenuItemComparator;->sortedDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    iget-object v1, v1, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->commandName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 238
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_1
    const v0, 0x7fffffff

    goto :goto_1
.end method


# virtual methods
.method public compare(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/voice/menu/VoiceMenuItem;)I
    .locals 3
    .param p1, "lhs"    # Lcom/google/glass/voice/menu/VoiceMenuItem;
    .param p2, "rhs"    # Lcom/google/glass/voice/menu/VoiceMenuItem;

    .prologue
    .line 232
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getCommandValue()Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/voice/menu/CommandValue;->getMainMenuSortingName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/voice/menu/GlassMenuUsageContract$VoiceMenuItemComparator;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 233
    .local v0, "lhsIndex":I
    invoke-virtual {p2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getCommandValue()Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/voice/menu/CommandValue;->getMainMenuSortingName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/voice/menu/GlassMenuUsageContract$VoiceMenuItemComparator;->getIndex(Ljava/lang/String;)I

    move-result v1

    .line 234
    .local v1, "rhsIndex":I
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 223
    check-cast p1, Lcom/google/glass/voice/menu/VoiceMenuItem;

    check-cast p2, Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/voice/menu/GlassMenuUsageContract$VoiceMenuItemComparator;->compare(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/voice/menu/VoiceMenuItem;)I

    move-result v0

    return v0
.end method
