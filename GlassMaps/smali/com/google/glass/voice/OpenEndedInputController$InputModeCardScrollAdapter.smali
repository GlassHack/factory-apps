.class final Lcom/google/glass/voice/OpenEndedInputController$InputModeCardScrollAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private final inputModes:Ljava/util/List;

.field private final layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 558
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$InputModeCardScrollAdapter;->context:Landroid/content/Context;

    .line 559
    iput-object p2, p0, Lcom/google/glass/voice/OpenEndedInputController$InputModeCardScrollAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 560
    iput-object p3, p0, Lcom/google/glass/voice/OpenEndedInputController$InputModeCardScrollAdapter;->inputModes:Ljava/util/List;

    .line 561
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$InputModeCardScrollAdapter;->inputModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 575
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 586
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$InputModeCardScrollAdapter;->inputModes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/InputMode;

    invoke-virtual {v0}, Lcom/google/glass/voice/InputMode;->getLayoutId()I

    move-result v0

    .line 581
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$InputModeCardScrollAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$InputModeCardScrollAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$InputModeCardScrollAdapter;->inputModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
