.class public final Landroid/support/v7/widget/j;
.super Landroid/support/v7/widget/ae;
.source "SourceFile"


# instance fields
.field public a:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public b:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public c:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public d:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public e:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x2

    .line 799
    invoke-direct {p0, v0, v0}, Landroid/support/v7/widget/ae;-><init>(II)V

    .line 800
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/j;->a:Z

    .line 801
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 786
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ae;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 787
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/j;)V
    .locals 1

    .prologue
    .line 794
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ae;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 795
    iget-boolean v0, p1, Landroid/support/v7/widget/j;->a:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/j;->a:Z

    .line 796
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 790
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ae;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    return-void
.end method
