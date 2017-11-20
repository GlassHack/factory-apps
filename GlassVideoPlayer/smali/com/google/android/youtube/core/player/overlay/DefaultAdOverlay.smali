.class public final Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/core/player/overlay/a;


# instance fields
.field private final a:Z

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/FrameLayout;

.field private final f:Landroid/widget/TextView;

.field private final g:F

.field private final h:I

.field private i:Lcom/google/android/youtube/core/player/overlay/b;

.field private j:Lcom/google/android/youtube/core/Analytics;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay$State;


# direct methods
.method private static a(IF)I
    .locals 2

    .prologue
    .line 156
    int-to-float v0, p0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 160
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->a:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->k:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 161
    :goto_0
    iget-object v4, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 162
    if-eqz v0, :cond_0

    .line 163
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->k:Z

    if-nez v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/youtube/R$string;->ad_portrait:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->m:Ljava/lang/String;

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 160
    goto :goto_0

    .line 161
    :cond_2
    const/16 v3, 0x8

    goto :goto_1

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 166
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/youtube/R$string;->ad_landscape_title:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->l:Ljava/lang/String;

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/youtube/R$string;->ad_landscape_no_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->setVisibility(I)V

    .line 230
    return-void
.end method

.method public final a(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 181
    iput-object p1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->l:Ljava/lang/String;

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->m:Ljava/lang/String;

    .line 183
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->b()V

    .line 184
    if-eqz p2, :cond_2

    .line 185
    sget-object v0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay$State;->WAITING_TO_SKIP:Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->n:Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay$State;

    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/youtube/R$string;->skip_ad_in:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->a:Z

    if-nez v0, :cond_1

    .line 195
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->d:Landroid/widget/TextView;

    if-eqz p3, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/youtube/R$string;->ad_learn_more:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_1
    invoke-virtual {p0, v5}, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->setVisibility(I)V

    .line 199
    return-void

    .line 189
    :cond_2
    sget-object v0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay$State;->NOT_SKIPPABLE:Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->n:Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay$State;

    .line 190
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->e:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 196
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->i:Lcom/google/android/youtube/core/player/overlay/b;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->j:Lcom/google/android/youtube/core/Analytics;

    .line 237
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->i:Lcom/google/android/youtube/core/player/overlay/b;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/b;->b()V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->e:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->n:Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay$State;->SKIPPABLE:Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay$State;

    if-ne v0, v1, :cond_2

    .line 239
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->j:Lcom/google/android/youtube/core/Analytics;

    .line 240
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->i:Lcom/google/android/youtube/core/player/overlay/b;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/b;->c()V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->b:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->k:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->j:Lcom/google/android/youtube/core/Analytics;

    .line 243
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->i:Lcom/google/android/youtube/core/player/overlay/b;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/b;->d()V

    goto :goto_0
.end method

.method public final setFullscreen(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 221
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->k:Z

    .line 222
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 223
    const/16 v1, 0x19

    iget v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->g:F

    invoke-static {v1, v3}, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->a(IF)I

    move-result v3

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->h:I

    :goto_0
    add-int/2addr v1, v3

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 224
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->b()V

    .line 225
    return-void

    :cond_0
    move v1, v2

    .line 223
    goto :goto_0
.end method

.method public final setListener(Lcom/google/android/youtube/core/player/overlay/b;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultAdOverlay;->i:Lcom/google/android/youtube/core/player/overlay/b;

    .line 176
    return-void
.end method
