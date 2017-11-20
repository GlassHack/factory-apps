.class Lcom/google/glass/voice/menu/GlassMenuUsageContract$VoiceMenuItemComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final sortedDatas:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$VoiceMenuItemComparator;->sortedDatas:Ljava/util/List;

    .line 228
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/glass/voice/menu/GlassMenuUsageContract$1;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/GlassMenuUsageContract$VoiceMenuItemComparator;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private getIndex(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 238
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$VoiceMenuItemComparator;->sortedDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$VoiceMenuItemComparator;->sortedDatas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    iget-object v0, v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->commandName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    :goto_1
    return v1

    .line 238
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 243
    :cond_1
    const v1, 0x7fffffff

    goto :goto_1
.end method


# virtual methods
.method public compare(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/voice/menu/VoiceMenuItem;)I
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getCommandValue()Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/CommandValue;->getMainMenuSortingName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/GlassMenuUsageContract$VoiceMenuItemComparator;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 233
    invoke-virtual {p2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getCommandValue()Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/CommandValue;->getMainMenuSortingName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/glass/voice/menu/GlassMenuUsageContract$VoiceMenuItemComparator;->getIndex(Ljava/lang/String;)I

    move-result v1

    .line 234
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->a(II)I

    move-result v0

    return v0
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
