.class public Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final glassTips:Lcom/google/glass/widget/GlassTips;

.field private final smoothRotatingTextView:Lcom/google/glass/widget/SmoothRotatingTextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lcom/google/glass/widget/GlassTips;

    invoke-direct {v0, p1}, Lcom/google/glass/widget/GlassTips;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->glassTips:Lcom/google/glass/widget/GlassTips;

    .line 133
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->glassTips:Lcom/google/glass/widget/GlassTips;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/glass/widget/GlassTips;->access$202(Lcom/google/glass/widget/GlassTips;I)I

    .line 134
    sget v0, Lcom/google/glass/common/R$layout;->smooth_rotating_tips_view:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 135
    sget v0, Lcom/google/glass/common/R$id;->textView:I

    .line 136
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SmoothRotatingTextView;

    iput-object v0, p0, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->smoothRotatingTextView:Lcom/google/glass/widget/SmoothRotatingTextView;

    .line 137
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->smoothRotatingTextView:Lcom/google/glass/widget/SmoothRotatingTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/SmoothRotatingTextView;->setRepeat(Z)V

    .line 138
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->glassTips:Lcom/google/glass/widget/GlassTips;

    invoke-static {v0, v1}, Lcom/google/glass/widget/GlassTips;->access$002(Lcom/google/glass/widget/GlassTips;Landroid/view/View;)Landroid/view/View;

    .line 139
    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;)Lcom/google/glass/widget/SmoothRotatingTextView;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->smoothRotatingTextView:Lcom/google/glass/widget/SmoothRotatingTextView;

    return-object v0
.end method


# virtual methods
.method public addMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;
    .locals 1

    .prologue
    .line 142
    sget v0, Lcom/google/glass/common/R$style;->MediumOverlayText:I

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->addMessage(Ljava/lang/CharSequence;I)Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;

    .line 143
    return-object p0
.end method

.method public addMessage(Ljava/lang/CharSequence;I)Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->smoothRotatingTextView:Lcom/google/glass/widget/SmoothRotatingTextView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/SmoothRotatingTextView;->addTextMessage(Ljava/lang/CharSequence;I)V

    .line 148
    return-object p0
.end method

.method public addMessages([Ljava/lang/CharSequence;I)Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;
    .locals 3

    .prologue
    .line 152
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 153
    invoke-virtual {p0, v2, p2}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->addMessage(Ljava/lang/CharSequence;I)Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    return-object p0
.end method

.method public build()Lcom/google/glass/widget/GlassTips;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->glassTips:Lcom/google/glass/widget/GlassTips;

    return-object v0
.end method

.method public repeat()Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->smoothRotatingTextView:Lcom/google/glass/widget/SmoothRotatingTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SmoothRotatingTextView;->setRepeat(Z)V

    .line 175
    return-object p0
.end method

.method public rotate()Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->glassTips:Lcom/google/glass/widget/GlassTips;

    new-instance v1, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder$1;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder$1;-><init>(Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;)V

    invoke-static {v0, v1}, Lcom/google/glass/widget/GlassTips;->access$302(Lcom/google/glass/widget/GlassTips;Lcom/google/glass/widget/GlassTips$GlassTipsListener;)Lcom/google/glass/widget/GlassTips$GlassTipsListener;

    .line 170
    return-object p0
.end method

.method public setDuration(I)Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->glassTips:Lcom/google/glass/widget/GlassTips;

    invoke-static {v0, p1}, Lcom/google/glass/widget/GlassTips;->access$202(Lcom/google/glass/widget/GlassTips;I)I

    .line 160
    return-object p0
.end method
