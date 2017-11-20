.class public Lcom/google/android/gms/auth/login/d;
.super Landroid/support/v4/app/j;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Landroid/content/Intent;

.field private q:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/j;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/auth/login/d;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    const-string v1, "scope_details"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "show_plus_title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    const-string v1, "calling_package"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0157

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/auth/login/d;->p:Landroid/content/Intent;

    const-string v1, "detail_end_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/auth/login/d;->q:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/auth/login/d;->q:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/auth/login/d;->p:Landroid/content/Intent;

    const-string v1, "detail_screen_scrollable"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    :goto_0
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/google/android/gms/auth/login/d;->p:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/login/d;->setResult(ILandroid/content/Intent;)V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/d;->finish()V

    .line 132
    :cond_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/login/d;->p:Landroid/content/Intent;

    const-string v1, "scroll_screen_end"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f0d017d

    const/4 v4, 0x1

    .line 50
    invoke-virtual {p0, v4}, Lcom/google/android/gms/auth/login/d;->requestWindowFeature(I)Z

    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f030098

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/d;->setContentView(I)V

    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/login/d;->p:Landroid/content/Intent;

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/auth/login/d;->p:Landroid/content/Intent;

    const-string v1, "detail_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/d;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    const-string v1, "scope_details"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/auth/login/d;->n:Ljava/lang/String;

    .line 60
    const-string v1, "show_plus_title"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/d;->o:Z

    .line 62
    const v0, 0x7f0d017c

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/d;->q:Landroid/widget/ScrollView;

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/auth/login/d;->q:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/auth/login/d;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/auth/login/d;->n:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "<br/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 67
    invoke-virtual {p0, v5}, Lcom/google/android/gms/auth/login/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 70
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 75
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/d;->o:Z

    if-nez v0, :cond_0

    .line 76
    const v0, 0x7f0d00ac

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020181

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    :cond_0
    const v0, 0x7f0d0157

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/google/android/gms/common/k;->a(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    const v1, 0x7f0b00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 89
    :goto_1
    float-to-double v0, v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/util/d;->a(Landroid/app/Activity;D)V

    .line 90
    return-void

    .line 72
    :cond_1
    invoke-virtual {p0, v5}, Lcom/google/android/gms/auth/login/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 87
    :cond_2
    const v1, 0x7f0b00b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d017c

    if-ne v0, v1, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/auth/login/d;->q:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/auth/login/d;->p:Landroid/content/Intent;

    const-string v1, "scroll_screen_end"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    :cond_0
    return v3
.end method
