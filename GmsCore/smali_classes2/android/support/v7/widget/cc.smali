.class final Landroid/support/v7/widget/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 1586
    iput-object p1, p0, Landroid/support/v7/widget/cc;->a:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 1596
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 1588
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 1592
    iget-object v0, p0, Landroid/support/v7/widget/cc;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/SearchView;->access$2100(Landroid/support/v7/widget/SearchView;Ljava/lang/CharSequence;)V

    .line 1593
    return-void
.end method
