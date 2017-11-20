.class final Landroid/support/v7/widget/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 1282
    iput-object p1, p0, Landroid/support/v7/widget/ca;->a:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 1289
    iget-object v0, p0, Landroid/support/v7/widget/ca;->a:Landroid/support/v7/widget/SearchView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p3, v1, v2}, Landroid/support/v7/widget/SearchView;->access$1900(Landroid/support/v7/widget/SearchView;IILjava/lang/String;)Z

    .line 1290
    return-void
.end method
