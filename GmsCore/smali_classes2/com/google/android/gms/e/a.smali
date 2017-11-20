.class public abstract Lcom/google/android/gms/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/e/l;

.field public b:Landroid/os/Bundle;

.field c:Ljava/util/LinkedList;

.field private final d:Lcom/google/android/gms/e/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/google/android/gms/e/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/e/b;-><init>(Lcom/google/android/gms/e/a;)V

    iput-object v0, p0, Lcom/google/android/gms/e/a;->d:Lcom/google/android/gms/e/n;

    .line 108
    return-void
.end method

.method private a(Landroid/os/Bundle;Lcom/google/android/gms/e/h;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/e/l;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/e/l;

    invoke-interface {p2}, Lcom/google/android/gms/e/h;->b()V

    .line 161
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/e/a;->c:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/e/a;->c:Ljava/util/LinkedList;

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/e/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 151
    if-eqz p1, :cond_2

    .line 152
    iget-object v0, p0, Lcom/google/android/gms/e/a;->b:Landroid/os/Bundle;

    if-nez v0, :cond_3

    .line 153
    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/e/a;->b:Landroid/os/Bundle;

    .line 160
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/e/a;->d:Lcom/google/android/gms/e/n;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/e/a;->a(Lcom/google/android/gms/e/n;)V

    goto :goto_0

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/e/a;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, -0x2

    .line 220
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 222
    new-instance v0, Lcom/google/android/gms/e/e;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/e/e;-><init>(Lcom/google/android/gms/e/a;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/e/a;->a(Landroid/os/Bundle;Lcom/google/android/gms/e/h;)V

    .line 236
    iget-object v0, p0, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/e/l;

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/k;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/google/android/gms/common/k;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v4, :cond_0

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/google/android/gms/e/f;

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/e/f;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    :cond_0
    return-object v2
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 314
    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/e/g;

    invoke-direct {v1, p0}, Lcom/google/android/gms/e/g;-><init>(Lcom/google/android/gms/e/a;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/e/a;->a(Landroid/os/Bundle;Lcom/google/android/gms/e/h;)V

    .line 325
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 125
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/e/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/e/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/e/h;

    invoke-interface {v0}, Lcom/google/android/gms/e/h;->a()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/e/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/google/android/gms/e/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/e/c;-><init>(Lcom/google/android/gms/e/a;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/e/a;->a(Landroid/os/Bundle;Lcom/google/android/gms/e/h;)V

    .line 191
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/google/android/gms/e/d;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/e/d;-><init>(Lcom/google/android/gms/e/a;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/e/a;->a(Landroid/os/Bundle;Lcom/google/android/gms/e/h;)V

    .line 211
    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/e/n;)V
.end method
