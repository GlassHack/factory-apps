.class public Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;
.implements Lcom/google/android/youtube/core/player/overlay/s;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

.field private H:Z

.field private I:Z

.field protected final a:Landroid/view/animation/Animation;

.field private b:Lcom/google/android/youtube/core/player/overlay/e;

.field private final c:F

.field private final d:Landroid/view/View;

.field private final e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

.field private final f:Landroid/widget/ImageButton;

.field private final g:Landroid/widget/ImageButton;

.field private final h:Landroid/widget/ImageButton;

.field private final i:Landroid/widget/ImageView;

.field private final j:Landroid/widget/ImageView;

.field private final k:Lcom/google/android/youtube/core/player/overlay/p;

.field private final l:Landroid/widget/LinearLayout;

.field private final m:Landroid/widget/TextView;

.field private final n:Landroid/widget/ImageView;

.field private final o:Lcom/google/android/youtube/core/player/overlay/j;

.field private final p:Landroid/os/Handler;

.field private final q:I

.field private final r:I

.field private s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v2, -0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 127
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 128
    sget-object v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->ENDED:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    .line 130
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 131
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->c:F

    .line 133
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 134
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 135
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 137
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->d:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->d:Landroid/view/View;

    sget v4, Lcom/google/android/youtube/R$drawable;->controller_background:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->d:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/TimeBar;

    invoke-direct {v0, p1, p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/overlay/s;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->l:Landroid/widget/LinearLayout;

    .line 145
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 146
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 147
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 149
    iget-object v4, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    sget v0, Lcom/google/android/youtube/R$layout;->player_button:I

    invoke-virtual {v3, v0, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    .line 153
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    sget v4, Lcom/google/android/youtube/R$drawable;->player_hq:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    sget v4, Lcom/google/android/youtube/R$string;->accessibility_hq:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    sget v0, Lcom/google/android/youtube/R$layout;->player_button:I

    invoke-virtual {v3, v0, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    sget v4, Lcom/google/android/youtube/R$drawable;->player_cc:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 160
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    sget v4, Lcom/google/android/youtube/R$string;->accessibility_closed_captions:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    sget v0, Lcom/google/android/youtube/R$layout;->player_button:I

    invoke-virtual {v3, v0, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    .line 166
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    sget v3, Lcom/google/android/youtube/R$drawable;->player_fullscreen:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 167
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    .line 169
    sget v3, Lcom/google/android/youtube/R$string;->accessibility_enter_fullscreen:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 168
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    iput-boolean v5, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->A:Z

    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    sget v3, Lcom/google/android/youtube/R$drawable;->ic_vidcontrol_play:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 176
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 178
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    sget v3, Lcom/google/android/youtube/R$string;->accessibility_play:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    const/high16 v3, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i:Landroid/widget/ImageView;

    .line 189
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i:Landroid/widget/ImageView;

    sget v2, Lcom/google/android/youtube/R$drawable;->bg_vidcontrol_full_right:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 190
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 191
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i:Landroid/widget/ImageView;

    sget v2, Lcom/google/android/youtube/R$string;->accessibility_next:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i:Landroid/widget/ImageView;

    .line 197
    iget v2, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->c:F

    invoke-static {v8, v2}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(IF)I

    move-result v2

    .line 198
    const/16 v3, 0xc

    iget v4, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->c:F

    invoke-static {v3, v4}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(IF)I

    move-result v3

    .line 195
    invoke-virtual {v0, v6, v2, v3, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 200
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->j:Landroid/widget/ImageView;

    .line 203
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->j:Landroid/widget/ImageView;

    sget v2, Lcom/google/android/youtube/R$drawable;->bg_vidcontrol_full_left:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 204
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->j:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 205
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 206
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 207
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->j:Landroid/widget/ImageView;

    sget v2, Lcom/google/android/youtube/R$string;->accessibility_previous:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->j:Landroid/widget/ImageView;

    .line 210
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->c:F

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(IF)I

    move-result v2

    .line 211
    iget v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->c:F

    invoke-static {v8, v3}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(IF)I

    move-result v3

    .line 209
    invoke-virtual {v0, v2, v3, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 214
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->j:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->p:Landroid/os/Handler;

    .line 218
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/j;

    new-instance v1, Lcom/google/android/youtube/core/player/overlay/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/core/player/overlay/f;-><init>(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;Lcom/google/android/youtube/core/player/overlay/f;)V

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/overlay/j;-><init>(Lcom/google/android/youtube/core/player/overlay/k;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->o:Lcom/google/android/youtube/core/player/overlay/j;

    .line 220
    sget v0, Lcom/google/android/youtube/R$anim;->player_out:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a:Landroid/view/animation/Animation;

    .line 221
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 222
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/youtube/R$integer;->fade_duration_fast:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->q:I

    .line 223
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/youtube/R$integer;->fade_duration_slow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->r:I

    .line 225
    sget-object v0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->YOUTUBE:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    .line 227
    iput-boolean v5, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->E:Z

    .line 228
    iput-boolean v5, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->F:Z

    .line 230
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/p;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/core/player/overlay/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->k:Lcom/google/android/youtube/core/player/overlay/p;

    .line 232
    invoke-virtual {p0, v6}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->setClipToPadding(Z)V

    .line 233
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->f()V

    .line 234
    return-void
.end method

.method private static a(IF)I
    .locals 2

    .prologue
    .line 864
    int-to-float v0, p0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static a(Landroid/view/View;II)I
    .locals 3

    .prologue
    .line 757
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 758
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 759
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, p2, v1

    add-int v2, p1, v0

    invoke-virtual {p0, p1, v1, v2, p2}, Landroid/view/View;->layout(IIII)V

    .line 762
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)Lcom/google/android/youtube/core/player/overlay/TimeBar;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 506
    :cond_0
    return-void
.end method

.method private static a(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 835
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 836
    return-void

    .line 835
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 488
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a:Landroid/view/animation/Animation;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->q:I

    :goto_0
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 490
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->v:Z

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;)V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;)V

    .line 494
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;)V

    .line 495
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;)V

    .line 496
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;)V

    .line 497
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;)V

    .line 498
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;)V

    .line 499
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->j:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;)V

    .line 500
    return-void

    .line 488
    :cond_1
    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->r:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    return-object v0
.end method

.method private static b(Landroid/view/View;II)V
    .locals 4

    .prologue
    .line 766
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 767
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 768
    div-int/lit8 v2, v0, 0x2

    sub-int v2, p1, v2

    div-int/lit8 v3, v1, 0x2

    sub-int v3, p2, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 769
    return-void
.end method

.method private static b(I)Z
    .locals 1

    .prologue
    .line 628
    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    .line 629
    const/16 v0, 0x15

    if-eq p0, v0, :cond_0

    .line 630
    const/16 v0, 0x16

    if-eq p0, v0, :cond_0

    .line 631
    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 628
    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)Lcom/google/android/youtube/core/player/overlay/e;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/overlay/e;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->z:Z

    return v0
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 408
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->minimalWhenNotFullscreen:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->v:Z

    .line 409
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->v:Z

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->setPadding(IIII)V

    .line 411
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->setShowTimes(Z)V

    .line 412
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->setShowScrubber(Z)V

    .line 421
    :goto_1
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m()V

    .line 422
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->h()V

    .line 423
    return-void

    :cond_0
    move v0, v2

    .line 408
    goto :goto_0

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->b()I

    move-result v0

    const/16 v3, 0x18

    iget v4, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->c:F

    invoke-static {v3, v4}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(IF)I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    .line 417
    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    invoke-virtual {v3, v0, v2, v0, v2}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->setPadding(IIII)V

    .line 418
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->setShowTimes(Z)V

    .line 419
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    iget-boolean v1, v1, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->supportsScrubber:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->setShowScrubber(Z)V

    goto :goto_1
.end method

.method private f()V
    .locals 1

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i()V

    .line 446
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->w:Z

    if-nez v0, :cond_1

    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->w:Z

    .line 448
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/overlay/e;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/overlay/e;

    .line 451
    :cond_0
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m()V

    .line 453
    :cond_1
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i()V

    .line 458
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->w:Z

    if-eqz v0, :cond_0

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->w:Z

    .line 460
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m()V

    .line 461
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/overlay/e;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/overlay/e;

    .line 465
    :cond_0
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->h()V

    .line 466
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 469
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->LOADING:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_1

    .line 470
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->w:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->p:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->E:Z

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->p:Landroid/os/Handler;

    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 473
    :cond_1
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->p:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 510
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 511
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->clearAnimation()V

    .line 512
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 513
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 514
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 515
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 516
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 517
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 518
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->x:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->setFullscreen(Z)V

    .line 537
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/overlay/e;

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->x:Z

    .line 538
    return-void

    .line 536
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->supportsNextPrevious:Z

    if-eqz v0, :cond_0

    .line 636
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->f()V

    .line 637
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/overlay/e;

    .line 639
    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->C:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->supportsNextPrevious:Z

    if-eqz v0, :cond_0

    .line 643
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->f()V

    .line 644
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/overlay/e;

    .line 646
    :cond_0
    return-void
.end method

.method private m()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 772
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->p:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 773
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->PAUSED:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_4

    .line 774
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    sget v1, Lcom/google/android/youtube/R$drawable;->ic_vidcontrol_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 775
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/google/android/youtube/R$string;->accessibility_play:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 785
    :goto_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->isError()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    .line 789
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->w:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->isError()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_0
    move v1, v2

    .line 791
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_8

    .line 797
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->v:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    sget-object v3, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->LOADING:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-eq v1, v3, :cond_c

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->isError()Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_3
    invoke-static {p0, v1}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 817
    :goto_4
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->w:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->isError()Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_1
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    iget-boolean v1, v1, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->supportsNextPrevious:Z

    if-eqz v1, :cond_16

    .line 818
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->B:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->C:Z

    if-eqz v1, :cond_16

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->v:Z

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_16

    .line 819
    :goto_5
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 820
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->j:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 821
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    .line 822
    if-eqz v4, :cond_17

    .line 823
    sget v0, Lcom/google/android/youtube/R$drawable;->bg_vidcontrol_full_middle:I

    .line 821
    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 826
    if-eqz v4, :cond_3

    .line 827
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i:Landroid/widget/ImageView;

    .line 828
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->B:Z

    if-eqz v0, :cond_18

    sget v0, Lcom/google/android/youtube/R$drawable;->ic_vidcontrol_next:I

    .line 827
    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 829
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->j:Landroid/widget/ImageView;

    .line 830
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->C:Z

    if-eqz v0, :cond_19

    sget v0, Lcom/google/android/youtube/R$drawable;->ic_vidcontrol_prev:I

    .line 829
    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 832
    :cond_3
    return-void

    .line 776
    :cond_4
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_5

    .line 777
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    sget v1, Lcom/google/android/youtube/R$drawable;->ic_vidcontrol_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 778
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/google/android/youtube/R$string;->accessibility_pause:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 780
    :cond_5
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    sget v1, Lcom/google/android/youtube/R$drawable;->ic_vidcontrol_reload:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 781
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    .line 782
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/google/android/youtube/R$string;->accessibility_replay:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 781
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 786
    :cond_6
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->LOADING:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->l:Landroid/widget/LinearLayout;

    goto/16 :goto_1

    .line 787
    :cond_7
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    goto/16 :goto_1

    .line 792
    :cond_8
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 793
    if-ne v5, v0, :cond_9

    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    sget-object v6, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->LOADING:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-eq v3, v6, :cond_b

    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->isError()Z

    move-result v3

    if-nez v3, :cond_b

    .line 794
    :cond_9
    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    if-ne v5, v3, :cond_a

    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->v:Z

    if-nez v3, :cond_b

    :cond_a
    move v3, v2

    .line 793
    :goto_9
    invoke-static {v5, v3}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 791
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_b
    move v3, v4

    .line 794
    goto :goto_9

    :cond_c
    move v1, v4

    .line 797
    goto/16 :goto_3

    .line 799
    :cond_d
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->d:Landroid/view/View;

    invoke-static {v1, v4}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 800
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    iget-boolean v3, v3, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->supportsTimeBar:Z

    invoke-static {v1, v3}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 802
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->x:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    iget-boolean v1, v1, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->showButtonsWhenNotFullscreen:Z

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->I:Z

    if-nez v1, :cond_f

    move v1, v2

    .line 803
    :goto_a
    iget-object v5, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->v:Z

    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    iget-boolean v3, v3, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->supportsPlayHQCC:Z

    if-eqz v3, :cond_10

    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->D:Z

    if-eqz v3, :cond_10

    if-eqz v1, :cond_10

    move v3, v4

    :goto_b
    invoke-static {v5, v3}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 805
    iget-object v5, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->v:Z

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    iget-boolean v3, v3, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->supportsPlayHQCC:Z

    if-eqz v3, :cond_11

    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->z:Z

    if-eqz v3, :cond_11

    if-eqz v1, :cond_11

    move v3, v4

    :goto_c
    invoke-static {v5, v3}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 806
    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    .line 807
    iget-boolean v5, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->v:Z

    if-nez v5, :cond_12

    iget-boolean v5, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->A:Z

    if-eqz v5, :cond_12

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->H:Z

    if-eqz v1, :cond_12

    :cond_e
    move v1, v4

    .line 806
    :goto_d
    invoke-static {v3, v1}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 809
    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    if-ne v0, v1, :cond_13

    move v1, v4

    :goto_e
    invoke-static {v3, v1}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 810
    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->l:Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_14

    move v1, v4

    :goto_f
    invoke-static {v3, v1}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 811
    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_15

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    iget-boolean v1, v1, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->supportsPlayHQCC:Z

    if-eqz v1, :cond_15

    move v1, v4

    :goto_10
    invoke-static {v3, v1}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;Z)V

    .line 813
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->setVisibility(I)V

    goto/16 :goto_4

    :cond_f
    move v1, v4

    .line 802
    goto :goto_a

    :cond_10
    move v3, v2

    .line 803
    goto :goto_b

    :cond_11
    move v3, v2

    .line 805
    goto :goto_c

    :cond_12
    move v1, v2

    .line 807
    goto :goto_d

    :cond_13
    move v1, v2

    .line 809
    goto :goto_e

    :cond_14
    move v1, v2

    .line 810
    goto :goto_f

    :cond_15
    move v1, v2

    .line 811
    goto :goto_10

    :cond_16
    move v4, v2

    .line 818
    goto/16 :goto_5

    .line 824
    :cond_17
    sget v0, Lcom/google/android/youtube/R$drawable;->player_bg_middle:I

    goto/16 :goto_6

    .line 828
    :cond_18
    sget v0, Lcom/google/android/youtube/R$drawable;->ic_vidcontrol_next_disabled:I

    goto/16 :goto_7

    .line 830
    :cond_19
    sget v0, Lcom/google/android/youtube/R$drawable;->ic_vidcontrol_prev_disabled:I

    goto/16 :goto_8
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->PAUSED:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 293
    :cond_0
    sget-object v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->PAUSED:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    .line 294
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m()V

    .line 296
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->g()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->setScrubbing(Z)V

    .line 849
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/overlay/e;

    .line 850
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 313
    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->RECOVERABLE_ERROR:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    :goto_0
    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    .line 315
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/youtube/R$string;->tap_to_retry:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_1
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    if-eqz p2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m()V

    .line 324
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->g()V

    .line 325
    return-void

    .line 313
    :cond_0
    sget-object v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->UNRECOVERABLE_ERROR:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/youtube/R$string;->click_to_retry:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 321
    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->ENDED:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 304
    :cond_0
    sget-object v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->ENDED:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    .line 305
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->setBufferedPercent(I)V

    .line 306
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m()V

    .line 308
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->g()V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->k:Lcom/google/android/youtube/core/player/overlay/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/overlay/p;->a()V

    .line 880
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 842
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i()V

    .line 843
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/overlay/e;

    .line 844
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 477
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_0

    .line 478
    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Z)V

    .line 484
    :goto_0
    return v0

    .line 480
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 481
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 484
    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->f()V

    .line 533
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 528
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 523
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/overlay/e;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/overlay/e;

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/overlay/e;

    goto :goto_0

    .line 547
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_3

    .line 548
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->j()V

    goto :goto_0

    .line 549
    :cond_3
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 550
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->k()V

    goto :goto_0

    .line 551
    :cond_4
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->j:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_5

    .line 552
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->l()V

    goto :goto_0

    .line 553
    :cond_5
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->ENDED:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_6

    .line 555
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/overlay/e;

    goto :goto_0

    .line 556
    :cond_6
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_7

    .line 557
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/overlay/e;

    goto :goto_0

    .line 558
    :cond_7
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->PAUSED:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 559
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/overlay/e;

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i()V

    .line 568
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 609
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/google/android/youtube/core/player/overlay/j;->a(I)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    .line 610
    :goto_0
    if-eqz v2, :cond_0

    .line 611
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->g()V

    .line 613
    :cond_0
    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    sget-object v4, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->RECOVERABLE_ERROR:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-ne v3, v4, :cond_3

    if-eqz v2, :cond_3

    .line 614
    invoke-static {p1}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 615
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/overlay/e;

    .line 618
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v0

    .line 609
    goto :goto_0

    .line 618
    :cond_3
    iget-object v2, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->o:Lcom/google/android/youtube/core/player/overlay/j;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/youtube/core/player/overlay/j;->a(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->o:Lcom/google/android/youtube/core/player/overlay/j;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/core/player/overlay/j;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 708
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 709
    sub-int v1, p4, p2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 711
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    .line 712
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getPaddingLeft()I

    move-result v2

    .line 713
    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->d:Landroid/view/View;

    invoke-static {v3, v2, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;II)I

    .line 715
    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    invoke-static {v3, v2, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 716
    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    invoke-static {v3, v2, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 717
    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    invoke-static {v3, v2, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 719
    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    iget-boolean v3, v3, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->supportsTimeBar:Z

    if-eqz v3, :cond_0

    .line 720
    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-static {v3, v2, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;II)I

    .line 726
    :goto_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getPaddingLeft()I

    move-result v2

    const/4 v3, 0x0

    sub-int v4, p5, p3

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 728
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getPaddingLeft()I

    move-result v0

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    .line 732
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    .line 734
    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-static {v3, v0, v2}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b(Landroid/view/View;II)V

    .line 735
    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->l:Landroid/widget/LinearLayout;

    invoke-static {v3, v0, v2}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b(Landroid/view/View;II)V

    .line 737
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->j:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-static {v0, v3, v2}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b(Landroid/view/View;II)V

    .line 740
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b(Landroid/view/View;II)V

    .line 754
    :goto_1
    return-void

    .line 722
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getPaddingRight()I

    move-result v2

    sub-int v2, p4, v2

    .line 723
    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v3, v2, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Landroid/view/View;II)I

    goto :goto_0

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->j:Landroid/widget/ImageView;

    .line 744
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->j:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 745
    iget-object v2, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    .line 746
    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    .line 747
    iget-object v4, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    .line 743
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 748
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i:Landroid/widget/ImageView;

    .line 749
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    .line 750
    iget-object v2, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    .line 751
    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 752
    iget-object v4, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    .line 748
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x8

    const/high16 v7, 0x40000000    # 2.0f

    .line 654
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->measureChild(Landroid/view/View;II)V

    .line 655
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->n:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->measureChild(Landroid/view/View;II)V

    .line 656
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->measureChild(Landroid/view/View;II)V

    .line 657
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->j:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->measureChild(Landroid/view/View;II)V

    .line 659
    invoke-static {v1, p1}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getDefaultSize(II)I

    move-result v3

    .line 660
    invoke-static {v1, p2}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getDefaultSize(II)I

    move-result v4

    .line 661
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getPaddingLeft()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    .line 662
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getPaddingTop()I

    move-result v0

    sub-int v0, v4, v0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getPaddingBottom()I

    move-result v2

    sub-int v2, v0, v2

    .line 664
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 665
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 664
    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->measure(II)V

    .line 669
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->b()I

    move-result v0

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 670
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eq v0, v8, :cond_4

    .line 671
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5, v5}, Landroid/widget/ImageButton;->measure(II)V

    .line 672
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v1, v0

    .line 674
    :goto_0
    iget-object v6, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 675
    iget-object v6, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    invoke-virtual {v6, v5, v5}, Landroid/widget/ImageButton;->measure(II)V

    .line 676
    iget-object v6, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v0, v6

    .line 678
    :cond_0
    iget-object v6, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_1

    .line 679
    iget-object v6, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {v6, v5, v5}, Landroid/widget/ImageButton;->measure(II)V

    .line 680
    iget-object v5, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v0, v5

    .line 684
    :cond_1
    iget-boolean v5, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->v:Z

    if-eqz v5, :cond_2

    div-int/lit8 v2, v2, 0x30

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 686
    :goto_1
    iget-object v5, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v5, v0, v2}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->measure(II)V

    .line 689
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->v:Z

    if-eqz v0, :cond_3

    .line 690
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 693
    :goto_2
    iget-object v2, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->d:Landroid/view/View;

    .line 694
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 693
    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 696
    invoke-virtual {p0, v3, v4}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->setMeasuredDimension(II)V

    .line 697
    return-void

    .line 685
    :cond_2
    const/high16 v5, -0x80000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_1

    .line 692
    :cond_3
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 691
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 701
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 702
    int-to-float v0, p1

    const v1, 0x3e2aaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 703
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 704
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 573
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    :cond_0
    :goto_0
    return v3

    .line 576
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    .line 577
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    .line 578
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->t:I

    .line 579
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_2
    iput v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->u:I

    .line 581
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 582
    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->t:I

    sub-int/2addr v0, v1

    .line 583
    iget v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->u:I

    sub-int/2addr v1, v2

    .line 584
    iget-object v2, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/overlay/e;

    if-eqz v2, :cond_6

    .line 585
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4b

    if-le v2, v1, :cond_5

    .line 586
    if-lez v0, :cond_4

    .line 587
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->k()V

    goto :goto_0

    .line 578
    :cond_2
    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->t:I

    goto :goto_1

    .line 579
    :cond_3
    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->u:I

    goto :goto_2

    .line 589
    :cond_4
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->l()V

    goto :goto_0

    .line 592
    :cond_5
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->RECOVERABLE_ERROR:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_6

    .line 593
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/overlay/e;

    goto :goto_0

    .line 598
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->w:Z

    if-eqz v0, :cond_7

    .line 599
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->g()V

    goto :goto_0

    .line 600
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->F:Z

    if-eqz v0, :cond_0

    .line 601
    invoke-direct {p0, v3}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Z)V

    goto :goto_0
.end method

.method public setAutoHide(Z)V
    .locals 0

    .prologue
    .line 426
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->E:Z

    .line 427
    if-eqz p1, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->h()V

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->i()V

    goto :goto_0
.end method

.method public setCcEnabled(Z)V
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 861
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 3

    .prologue
    .line 364
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->y:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->x:Z

    .line 365
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->x:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 366
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->h:Landroid/widget/ImageButton;

    .line 367
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_1

    .line 368
    sget v0, Lcom/google/android/youtube/R$string;->accessibility_exit_fullscreen:I

    .line 367
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 370
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e()V

    .line 371
    return-void

    .line 364
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 369
    :cond_1
    sget v0, Lcom/google/android/youtube/R$string;->accessibility_enter_fullscreen:I

    goto :goto_1
.end method

.method public setHQ(Z)V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 341
    if-eqz p1, :cond_0

    sget v0, Lcom/google/android/youtube/R$string;->accessibility_lq:I

    .line 342
    :goto_0
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 343
    return-void

    .line 341
    :cond_0
    sget v0, Lcom/google/android/youtube/R$string;->accessibility_hq:I

    goto :goto_0
.end method

.method public setHQisHD(Z)V
    .locals 2

    .prologue
    .line 347
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->f:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    sget v0, Lcom/google/android/youtube/R$drawable;->player_hd:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 348
    return-void

    .line 347
    :cond_0
    sget v0, Lcom/google/android/youtube/R$drawable;->player_hq:I

    goto :goto_0
.end method

.method public setHasCc(Z)V
    .locals 0

    .prologue
    .line 854
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->z:Z

    .line 855
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m()V

    .line 856
    return-void
.end method

.method public setHasNext(Z)V
    .locals 0

    .prologue
    .line 352
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->B:Z

    .line 353
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m()V

    .line 354
    return-void
.end method

.method public setHasPrevious(Z)V
    .locals 0

    .prologue
    .line 358
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->C:Z

    .line 359
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m()V

    .line 360
    return-void
.end method

.method public setHideOnTap(Z)V
    .locals 0

    .prologue
    .line 435
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->F:Z

    .line 436
    return-void
.end method

.method public setListener(Lcom/google/android/youtube/core/player/overlay/e;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b:Lcom/google/android/youtube/core/player/overlay/e;

    .line 264
    return-void
.end method

.method public setLoading()V
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->LOADING:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 286
    :goto_0
    return-void

    .line 282
    :cond_0
    sget-object v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->LOADING:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    .line 283
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->p:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 285
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->h()V

    goto :goto_0
.end method

.method public setLoadingView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 251
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    return-void
.end method

.method public setLockedInFullscreen(Z)V
    .locals 1

    .prologue
    .line 439
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->y:Z

    .line 440
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->x:Z

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->setFullscreen(Z)V

    .line 441
    return-void
.end method

.method public setPlaying()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 275
    :goto_0
    return-void

    .line 271
    :cond_0
    sget-object v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->s:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    .line 272
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m()V

    .line 274
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->h()V

    goto :goto_0
.end method

.method public setScrubbingEnabled(Z)V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->setEnabled(Z)V

    .line 387
    return-void
.end method

.method public setShowButtonsWhenNotFullscreen(Z)V
    .locals 0

    .prologue
    .line 883
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->I:Z

    .line 884
    return-void
.end method

.method public setShowFullscreen(Z)V
    .locals 0

    .prologue
    .line 375
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->A:Z

    .line 376
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m()V

    .line 377
    return-void
.end method

.method public setShowFullscreenInPortrait(Z)V
    .locals 0

    .prologue
    .line 887
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->H:Z

    .line 888
    return-void
.end method

.method public setStyle(Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;)V
    .locals 2

    .prologue
    .line 397
    iput-object p1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->G:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    .line 398
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e()V

    .line 399
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    iget v1, p1, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->progressColor:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->setProgressColor(I)V

    .line 400
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    iget-boolean v1, p1, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->supportsBuffered:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->setShowBuffered(Z)V

    .line 401
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->v:Z

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    iget-boolean v1, p1, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->supportsScrubber:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->setShowScrubber(Z)V

    .line 404
    :cond_0
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m()V

    .line 405
    return-void
.end method

.method public setSupportsQualityToggle(Z)V
    .locals 0

    .prologue
    .line 334
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->D:Z

    .line 335
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->m()V

    .line 336
    return-void
.end method

.method public setTimes(III)V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->e:Lcom/google/android/youtube/core/player/overlay/TimeBar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->setTime(III)V

    .line 392
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->o:Lcom/google/android/youtube/core/player/overlay/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/youtube/core/player/overlay/j;->a(III)V

    .line 393
    return-void
.end method
