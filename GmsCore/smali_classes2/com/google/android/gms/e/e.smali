.class final Lcom/google/android/gms/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/e/h;


# instance fields
.field final synthetic a:Landroid/widget/FrameLayout;

.field final synthetic b:Landroid/view/LayoutInflater;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Lcom/google/android/gms/e/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/e/a;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/android/gms/e/e;->e:Lcom/google/android/gms/e/a;

    iput-object p2, p0, Lcom/google/android/gms/e/e;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/android/gms/e/e;->b:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/google/android/gms/e/e;->c:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/google/android/gms/e/e;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x2

    return v0
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/gms/e/e;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 231
    iget-object v0, p0, Lcom/google/android/gms/e/e;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/e/e;->e:Lcom/google/android/gms/e/a;

    iget-object v1, v1, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/e/l;

    iget-object v2, p0, Lcom/google/android/gms/e/e;->b:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/google/android/gms/e/e;->c:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/google/android/gms/e/e;->d:Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/e/l;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 232
    return-void
.end method
