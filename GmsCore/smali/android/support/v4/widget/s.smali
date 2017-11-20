.class final Landroid/support/v4/widget/s;
.super Landroid/support/v4/view/a/q;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v4/widget/r;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/r;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Landroid/support/v4/widget/s;->a:Landroid/support/v4/widget/r;

    invoke-direct {p0}, Landroid/support/v4/view/a/q;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/r;B)V
    .locals 0

    .prologue
    .line 714
    invoke-direct {p0, p1}, Landroid/support/v4/widget/s;-><init>(Landroid/support/v4/widget/r;)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/view/a/i;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Landroid/support/v4/widget/s;->a:Landroid/support/v4/widget/r;

    invoke-static {v0, p1}, Landroid/support/v4/widget/r;->a(Landroid/support/v4/widget/r;I)Landroid/support/v4/view/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Landroid/support/v4/widget/s;->a:Landroid/support/v4/widget/r;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v4/widget/r;->a(Landroid/support/v4/widget/r;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
