.class final Landroid/support/v7/internal/widget/ae;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ac;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ac;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Landroid/support/v7/internal/widget/ae;->a:Landroid/support/v7/internal/widget/ac;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ac;B)V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ae;-><init>(Landroid/support/v7/internal/widget/ac;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Landroid/support/v7/internal/widget/ae;->a:Landroid/support/v7/internal/widget/ac;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ac;->a(Landroid/support/v7/internal/widget/ac;)Landroid/support/v7/widget/LinearLayoutCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Landroid/support/v7/internal/widget/ae;->a:Landroid/support/v7/internal/widget/ac;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ac;->a(Landroid/support/v7/internal/widget/ac;)Landroid/support/v7/widget/LinearLayoutCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/af;->a()Landroid/support/v7/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 541
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 546
    if-nez p2, :cond_0

    .line 547
    iget-object v1, p0, Landroid/support/v7/internal/widget/ae;->a:Landroid/support/v7/internal/widget/ac;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/a/c;

    invoke-static {v1, v0}, Landroid/support/v7/internal/widget/ac;->a(Landroid/support/v7/internal/widget/ac;Landroid/support/v7/a/c;)Landroid/support/v7/internal/widget/af;

    move-result-object p2

    .line 551
    :goto_0
    return-object p2

    :cond_0
    move-object v0, p2

    .line 549
    check-cast v0, Landroid/support/v7/internal/widget/af;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/a/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/af;->a(Landroid/support/v7/a/c;)V

    goto :goto_0
.end method
