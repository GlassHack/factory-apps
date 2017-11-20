.class final Landroid/support/v4/app/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/app/p;


# direct methods
.method constructor <init>(Landroid/support/v4/app/p;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 492
    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/p;

    iget-object v1, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/p;

    iget-object v1, v1, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    iget-object v1, v1, Landroid/support/v4/app/j;->a:Landroid/os/Handler;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/p;->a(II)Z

    .line 493
    return-void
.end method
