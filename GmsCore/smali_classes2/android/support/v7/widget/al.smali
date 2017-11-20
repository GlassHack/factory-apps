.class final Landroid/support/v7/widget/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/aj;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/aj;)V
    .locals 0

    .prologue
    .line 1066
    iput-object p1, p0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 1070
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 1071
    iget-object v0, p0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/aj;

    invoke-static {v0}, Landroid/support/v7/widget/aj;->a(Landroid/support/v7/widget/aj;)Landroid/support/v7/widget/am;

    move-result-object v0

    .line 1073
    if-eqz v0, :cond_0

    .line 1074
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/am;->a(Landroid/support/v7/widget/am;Z)Z

    .line 1077
    :cond_0
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 1080
    return-void
.end method
