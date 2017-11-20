.class final Landroid/support/v7/internal/widget/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ProgressBarCompat;

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ProgressBarCompat;IIZ)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/support/v7/internal/widget/ProgressBarCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput p2, p0, Landroid/support/v7/internal/widget/z;->b:I

    .line 399
    iput p3, p0, Landroid/support/v7/internal/widget/z;->c:I

    .line 400
    iput-boolean p4, p0, Landroid/support/v7/internal/widget/z;->d:Z

    .line 401
    return-void
.end method


# virtual methods
.method public final a(IIZ)V
    .locals 0

    .prologue
    .line 410
    iput p1, p0, Landroid/support/v7/internal/widget/z;->b:I

    .line 411
    iput p2, p0, Landroid/support/v7/internal/widget/z;->c:I

    .line 412
    iput-boolean p3, p0, Landroid/support/v7/internal/widget/z;->d:Z

    .line 413
    return-void
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 404
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/support/v7/internal/widget/ProgressBarCompat;

    iget v1, p0, Landroid/support/v7/internal/widget/z;->b:I

    iget v2, p0, Landroid/support/v7/internal/widget/z;->c:I

    iget-boolean v3, p0, Landroid/support/v7/internal/widget/z;->d:Z

    invoke-static {v0, v1, v2}, Landroid/support/v7/internal/widget/ProgressBarCompat;->a(Landroid/support/v7/internal/widget/ProgressBarCompat;II)V

    .line 406
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/support/v7/internal/widget/ProgressBarCompat;

    invoke-static {v0, p0}, Landroid/support/v7/internal/widget/ProgressBarCompat;->a(Landroid/support/v7/internal/widget/ProgressBarCompat;Landroid/support/v7/internal/widget/z;)Landroid/support/v7/internal/widget/z;

    .line 407
    return-void
.end method
