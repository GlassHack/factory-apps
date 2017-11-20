.class public abstract Lcom/google/glass/maps/CardsView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field protected isNavigating:Z

.field protected items:[Lcom/google/android/maps/driveabout/nav/DataType;

.field private listener:Lcom/google/glass/maps/CardsView$CardsViewListener;

.field private scrollView:Lcom/google/android/glass/widget/CardScrollView;

.field private scrolled:Z

.field private scrolledToEnd:Z

.field private soundManager:Lcom/google/glass/sound/SoundManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    iput-boolean v0, p0, Lcom/google/glass/maps/CardsView;->isNavigating:Z

    .line 37
    iput-boolean v0, p0, Lcom/google/glass/maps/CardsView;->scrolled:Z

    .line 38
    iput-boolean v0, p0, Lcom/google/glass/maps/CardsView;->scrolledToEnd:Z

    .line 42
    invoke-direct {p0, p1}, Lcom/google/glass/maps/CardsView;->initialize(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v0, p0, Lcom/google/glass/maps/CardsView;->isNavigating:Z

    .line 37
    iput-boolean v0, p0, Lcom/google/glass/maps/CardsView;->scrolled:Z

    .line 38
    iput-boolean v0, p0, Lcom/google/glass/maps/CardsView;->scrolledToEnd:Z

    .line 47
    invoke-direct {p0, p1}, Lcom/google/glass/maps/CardsView;->initialize(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-boolean v0, p0, Lcom/google/glass/maps/CardsView;->isNavigating:Z

    .line 37
    iput-boolean v0, p0, Lcom/google/glass/maps/CardsView;->scrolled:Z

    .line 38
    iput-boolean v0, p0, Lcom/google/glass/maps/CardsView;->scrolledToEnd:Z

    .line 52
    invoke-direct {p0, p1}, Lcom/google/glass/maps/CardsView;->initialize(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/maps/CardsView;)Lcom/google/glass/sound/SoundManager;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->soundManager:Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/maps/CardsView;)Lcom/google/glass/maps/CardsView$CardsViewListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->listener:Lcom/google/glass/maps/CardsView$CardsViewListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/maps/CardsView;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/glass/maps/CardsView;->logSelectedPosition(I)V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 85
    new-instance v0, Lcom/google/android/glass/widget/CardScrollView;

    invoke-direct {v0, p1}, Lcom/google/android/glass/widget/CardScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/maps/CardsView;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    .line 86
    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    new-instance v1, Lcom/google/glass/maps/CardsView$CardScrollViewItemClickListener;

    invoke-direct {v1, p0, v3}, Lcom/google/glass/maps/CardsView$CardScrollViewItemClickListener;-><init>(Lcom/google/glass/maps/CardsView;Lcom/google/glass/maps/CardsView$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    new-instance v1, Lcom/google/glass/maps/CardsView$CardScrollViewItemSelectedListener;

    invoke-direct {v1, p0, v3}, Lcom/google/glass/maps/CardsView$CardScrollViewItemSelectedListener;-><init>(Lcom/google/glass/maps/CardsView;Lcom/google/glass/maps/CardsView$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 89
    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/maps/CardsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    return-void
.end method

.method private logSelectedPosition(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 124
    iget-boolean v0, p0, Lcom/google/glass/maps/CardsView;->scrolled:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/google/glass/maps/CardsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/glass/maps/CardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v2, v2, p1

    invoke-interface {v2}, Lcom/google/android/maps/driveabout/nav/DataType;->getDataType()Lcom/google/android/maps/driveabout/nav/DataType$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/DataType$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/glass/maps/GlassUserEventLogger;->logDirectionsScroll(Landroid/content/Context;ILjava/lang/String;)V

    .line 126
    iput-boolean v3, p0, Lcom/google/glass/maps/CardsView;->scrolled:Z

    .line 130
    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/maps/CardsView;->scrolledToEnd:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/google/glass/maps/CardsView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/CardsView;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    .line 132
    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/google/glass/maps/CardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v2, v2, p1

    invoke-interface {v2}, Lcom/google/android/maps/driveabout/nav/DataType;->getDataType()Lcom/google/android/maps/driveabout/nav/DataType$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/DataType$Type;->name()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-static {v0, v1, v2}, Lcom/google/glass/maps/GlassUserEventLogger;->logDirectionsScroll(Landroid/content/Context;ILjava/lang/String;)V

    .line 133
    iput-boolean v3, p0, Lcom/google/glass/maps/CardsView;->scrolledToEnd:Z

    .line 135
    :cond_1
    return-void
.end method


# virtual methods
.method public getSelectedItemPosition()I
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItemPosition()I

    move-result v0

    .line 111
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/maps/CardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 75
    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->activate()V

    .line 76
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 81
    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->deactivate()V

    .line 82
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 62
    if-ne p0, p1, :cond_0

    .line 63
    if-nez p2, :cond_1

    .line 64
    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->activate()V

    .line 69
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 70
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->deactivate()V

    goto :goto_0
.end method

.method protected setAdapter(Lcom/google/glass/maps/CardsView$BaseCardsAdapter;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/widget/CardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 98
    return-void
.end method

.method public setIsNavigating(Z)V
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/google/glass/maps/CardsView;->isNavigating:Z

    .line 94
    return-void
.end method

.method public setOnCardSelectedListener(Lcom/google/glass/maps/CardsView$CardsViewListener;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/glass/maps/CardsView;->listener:Lcom/google/glass/maps/CardsView$CardsViewListener;

    .line 106
    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/widget/CardScrollView;->setSelection(I)V

    .line 120
    return-void
.end method

.method public setSoundManager(Lcom/google/glass/sound/SoundManager;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/glass/maps/CardsView;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 102
    return-void
.end method
