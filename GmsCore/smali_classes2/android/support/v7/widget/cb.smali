.class final Landroid/support/v7/widget/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 1293
    iput-object p1, p0, Landroid/support/v7/widget/cb;->a:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Landroid/support/v7/widget/cb;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0, p3}, Landroid/support/v7/widget/SearchView;->access$2000(Landroid/support/v7/widget/SearchView;I)Z

    .line 1301
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 1309
    return-void
.end method
