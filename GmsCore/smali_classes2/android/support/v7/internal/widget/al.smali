.class final Landroid/support/v7/internal/widget/al;
.super Landroid/support/v7/widget/aj;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/ao;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/SpinnerCompat;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 975
    iput-object p1, p0, Landroid/support/v7/internal/widget/al;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    .line 976
    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/widget/aj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 978
    iput-object p1, p0, Landroid/support/v7/widget/aj;->d:Landroid/view/View;

    .line 979
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/al;->d()V

    .line 980
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/aj;->c:I

    .line 982
    new-instance v0, Landroid/support/v7/internal/widget/am;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/internal/widget/am;-><init>(Landroid/support/v7/internal/widget/al;Landroid/support/v7/internal/widget/SpinnerCompat;)V

    iput-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/AdapterView$OnItemClickListener;

    .line 993
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/al;)Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Landroid/support/v7/internal/widget/al;->g:Landroid/widget/ListAdapter;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 997
    invoke-super {p0, p1}, Landroid/support/v7/widget/aj;->a(Landroid/widget/ListAdapter;)V

    .line 998
    iput-object p1, p0, Landroid/support/v7/internal/widget/al;->g:Landroid/widget/ListAdapter;

    .line 999
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1007
    iput-object p1, p0, Landroid/support/v7/internal/widget/al;->f:Ljava/lang/CharSequence;

    .line 1008
    return-void
.end method
