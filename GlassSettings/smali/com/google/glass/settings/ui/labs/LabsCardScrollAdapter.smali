.class final Lcom/google/glass/settings/ui/labs/LabsCardScrollAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "LabsCardScrollAdapter.java"


# instance fields
.field private final labCards:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/glass/settings/ui/labs/LabCard;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;Landroid/view/LayoutInflater;Lcom/google/glass/logging/FormattingLogger;)V
    .locals 1
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "parentLogger"    # Lcom/google/glass/logging/FormattingLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/glass/settings/ui/labs/LabCard;",
            ">;",
            "Landroid/view/LayoutInflater;",
            "Lcom/google/glass/logging/FormattingLogger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "labCards":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/glass/settings/ui/labs/LabCard;>;"
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 29
    const-string v0, "null labCards"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/glass/settings/ui/labs/LabsCardScrollAdapter;->labCards:Lcom/google/common/collect/ImmutableList;

    .line 30
    const-string v0, "null layoutInflater"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/glass/settings/ui/labs/LabsCardScrollAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 31
    const-string v0, "null parentLogger"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {p3, p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/labs/LabsCardScrollAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/settings/ui/labs/LabsCardScrollAdapter;->labCards:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/settings/ui/labs/LabsCardScrollAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "getItem() [position=%s]."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 5
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/google/glass/settings/ui/labs/LabsCardScrollAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "getPosition() [item=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 50
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 51
    .local v0, "position":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/settings/ui/labs/LabsCardScrollAdapter;->labCards:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 55
    .end local v0    # "position":I
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 60
    iget-object v7, p0, Lcom/google/glass/settings/ui/labs/LabsCardScrollAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "getView() [position=%s, convertView=%s, parent=%s]."

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object p3, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v7, p0, Lcom/google/glass/settings/ui/labs/LabsCardScrollAdapter;->labCards:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v7, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/settings/ui/labs/LabCard;

    .line 64
    .local v2, "labCard":Lcom/google/glass/settings/ui/labs/LabCard;
    if-nez p2, :cond_0

    iget-object v7, p0, Lcom/google/glass/settings/ui/labs/LabsCardScrollAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v8, Lcom/google/glass/settings/ui/R$layout;->lab_template:I

    .line 65
    invoke-virtual {v7, v8, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 66
    .local v3, "labCardView":Landroid/view/View;
    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    sget v7, Lcom/google/glass/settings/ui/R$id;->lab_name:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 69
    .local v4, "labNameTextView":Landroid/widget/TextView;
    invoke-interface {v2}, Lcom/google/glass/settings/ui/labs/LabCard;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    sget v7, Lcom/google/glass/settings/ui/R$id;->lab_state_on:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 72
    .local v6, "labStateOnTextView":Landroid/widget/TextView;
    sget v7, Lcom/google/glass/settings/ui/R$id;->lab_state_off:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 74
    .local v5, "labStateOffTextView":Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 76
    .local v1, "isEnabled":Z
    :try_start_0
    invoke-interface {v2}, Lcom/google/glass/settings/ui/labs/LabCard;->isEnabled()Z

    move-result v1

    .line 77
    iget-object v7, p0, Lcom/google/glass/settings/ui/labs/LabsCardScrollAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "getView() [labCard=%s, isEnabled=%s]"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_1
    if-eqz v1, :cond_1

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    if-eqz v1, :cond_2

    const/16 v7, 0x8

    :goto_3
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    return-object v3

    .end local v1    # "isEnabled":Z
    .end local v3    # "labCardView":Landroid/view/View;
    .end local v4    # "labNameTextView":Landroid/widget/TextView;
    .end local v5    # "labStateOffTextView":Landroid/widget/TextView;
    .end local v6    # "labStateOnTextView":Landroid/widget/TextView;
    :cond_0
    move-object v3, p2

    .line 65
    goto :goto_0

    .line 78
    .restart local v1    # "isEnabled":Z
    .restart local v3    # "labCardView":Landroid/view/View;
    .restart local v4    # "labNameTextView":Landroid/widget/TextView;
    .restart local v5    # "labStateOffTextView":Landroid/widget/TextView;
    .restart local v6    # "labStateOnTextView":Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v7, p0, Lcom/google/glass/settings/ui/labs/LabsCardScrollAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Could not determine state [labCard=%s]"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 83
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    const/16 v7, 0x8

    goto :goto_2

    .line 84
    :cond_2
    const/4 v7, 0x0

    goto :goto_3
.end method
