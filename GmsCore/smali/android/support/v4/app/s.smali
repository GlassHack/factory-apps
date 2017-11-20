.class final Landroid/support/v4/app/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/support/v4/app/p;


# direct methods
.method constructor <init>(Landroid/support/v4/app/p;II)V
    .locals 1

    .prologue
    .line 525
    iput-object p1, p0, Landroid/support/v4/app/s;->c:Landroid/support/v4/app/p;

    iput p2, p0, Landroid/support/v4/app/s;->a:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/s;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 527
    iget-object v0, p0, Landroid/support/v4/app/s;->c:Landroid/support/v4/app/p;

    iget-object v1, p0, Landroid/support/v4/app/s;->c:Landroid/support/v4/app/p;

    iget-object v1, v1, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    iget-object v1, v1, Landroid/support/v4/app/j;->a:Landroid/os/Handler;

    iget v1, p0, Landroid/support/v4/app/s;->a:I

    iget v2, p0, Landroid/support/v4/app/s;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/p;->a(II)Z

    .line 528
    return-void
.end method
