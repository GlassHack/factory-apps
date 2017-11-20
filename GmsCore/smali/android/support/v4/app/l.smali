.class final Landroid/support/v4/app/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/n;


# instance fields
.field final synthetic a:Landroid/support/v4/app/j;


# direct methods
.method constructor <init>(Landroid/support/v4/app/j;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
