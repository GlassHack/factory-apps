.class final Landroid/support/v7/internal/widget/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/support/v7/internal/widget/ao;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/SpinnerCompat;

.field private b:Landroid/app/AlertDialog;

.field private c:Landroid/widget/ListAdapter;

.field private d:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;)V
    .locals 0

    .prologue
    .line 885
    iput-object p1, p0, Landroid/support/v7/internal/widget/aj;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;B)V
    .locals 0

    .prologue
    .line 885
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/aj;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 896
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/aj;->b:Landroid/app/AlertDialog;

    .line 898
    :cond_0
    return-void
.end method

.method public final a(Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 905
    iput-object p1, p0, Landroid/support/v7/internal/widget/aj;->c:Landroid/widget/ListAdapter;

    .line 906
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 909
    iput-object p1, p0, Landroid/support/v7/internal/widget/aj;->d:Ljava/lang/CharSequence;

    .line 910
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 917
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->c:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 927
    :goto_0
    return-void

    .line 920
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aj;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 921
    iget-object v1, p0, Landroid/support/v7/internal/widget/aj;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 922
    iget-object v1, p0, Landroid/support/v7/internal/widget/aj;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 924
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/widget/aj;->c:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/support/v7/internal/widget/aj;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/SpinnerCompat;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/aj;->b:Landroid/app/AlertDialog;

    .line 926
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 930
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(I)V

    .line 931
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object v0, v0, Landroid/support/v7/internal/widget/SpinnerCompat;->s:Landroid/support/v7/internal/widget/p;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/internal/widget/aj;->c:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/view/View;)Z

    .line 934
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->a()V

    .line 935
    return-void
.end method
