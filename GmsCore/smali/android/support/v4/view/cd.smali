.class final Landroid/support/v4/view/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Landroid/support/v4/view/cc;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/cc;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 296
    iput-object p1, p0, Landroid/support/v4/view/cd;->b:Landroid/support/v4/view/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/view/cd;->a:Ljava/lang/ref/WeakReference;

    .line 298
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/cc;Landroid/view/View;B)V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/cd;-><init>(Landroid/support/v4/view/cc;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 302
    iget-object v1, p0, Landroid/support/v4/view/cd;->b:Landroid/support/v4/view/cc;

    iget-object v0, p0, Landroid/support/v4/view/cd;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/cc;->c(Landroid/view/View;)V

    .line 303
    return-void
.end method
