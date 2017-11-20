.class final Landroid/support/v7/internal/widget/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/SpinnerCompat;

.field final synthetic b:Landroid/support/v7/internal/widget/al;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/al;Landroid/support/v7/internal/widget/SpinnerCompat;)V
    .locals 0

    .prologue
    .line 982
    iput-object p1, p0, Landroid/support/v7/internal/widget/am;->b:Landroid/support/v7/internal/widget/al;

    iput-object p2, p0, Landroid/support/v7/internal/widget/am;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 985
    iget-object v0, p0, Landroid/support/v7/internal/widget/am;->b:Landroid/support/v7/internal/widget/al;

    iget-object v0, v0, Landroid/support/v7/internal/widget/al;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(I)V

    .line 986
    iget-object v0, p0, Landroid/support/v7/internal/widget/am;->b:Landroid/support/v7/internal/widget/al;

    iget-object v0, v0, Landroid/support/v7/internal/widget/al;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object v0, v0, Landroid/support/v7/internal/widget/SpinnerCompat;->s:Landroid/support/v7/internal/widget/p;

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Landroid/support/v7/internal/widget/am;->b:Landroid/support/v7/internal/widget/al;

    iget-object v0, v0, Landroid/support/v7/internal/widget/al;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object v1, p0, Landroid/support/v7/internal/widget/am;->b:Landroid/support/v7/internal/widget/al;

    invoke-static {v1}, Landroid/support/v7/internal/widget/al;->a(Landroid/support/v7/internal/widget/al;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    invoke-virtual {v0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/view/View;)Z

    .line 990
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/am;->b:Landroid/support/v7/internal/widget/al;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/al;->a()V

    .line 991
    return-void
.end method
