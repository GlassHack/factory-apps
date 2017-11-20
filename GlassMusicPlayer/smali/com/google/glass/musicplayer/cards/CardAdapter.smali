.class public Lcom/google/glass/musicplayer/cards/CardAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "SourceFile"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private cardList:Ljava/util/List;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/cards/CardAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/CardAdapter;->cardList:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lcom/google/glass/musicplayer/cards/CardAdapter;->context:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/CardAdapter;->cardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 39
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/CardAdapter;->cardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 40
    :cond_0
    sget-object v0, Lcom/google/glass/musicplayer/cards/CardAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "get item pos out of bounds %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/CardAdapter;->cardList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 54
    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/CardAdapter;->cardList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 55
    if-ne v1, v0, :cond_0

    .line 58
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 64
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/CardAdapter;->cardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 65
    :cond_0
    sget-object v0, Lcom/google/glass/musicplayer/cards/CardAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "get view pos out of bounds %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/CardAdapter;->cardList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/musicplayer/cards/Card;

    .line 70
    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/CardAdapter;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/glass/musicplayer/cards/Card;->createResultView(Landroid/content/Context;)Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;

    move-result-object v0

    goto :goto_0
.end method

.method public setCardList(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/glass/musicplayer/cards/CardAdapter;->cardList:Ljava/util/List;

    .line 30
    return-void
.end method
