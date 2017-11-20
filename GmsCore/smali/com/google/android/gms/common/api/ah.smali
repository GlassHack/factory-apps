.class final Lcom/google/android/gms/common/api/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/ae;

.field private final b:I

.field private final c:Lcom/google/android/gms/common/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/ae;ILcom/google/android/gms/common/b;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput p2, p0, Lcom/google/android/gms/common/api/ah;->b:I

    .line 345
    iput-object p3, p0, Lcom/google/android/gms/common/api/ah;->c:Lcom/google/android/gms/common/b;

    .line 346
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/gms/common/api/ah;->c:Lcom/google/android/gms/common/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ae;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ae;->j()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->c()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ae;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 356
    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    .line 357
    iget-object v1, p0, Lcom/google/android/gms/common/api/ah;->c:Lcom/google/android/gms/common/b;

    iget-object v2, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ae;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/ae;->j()Landroid/support/v4/app/j;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/b;->a(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ae;

    invoke-static {v0}, Lcom/google/android/gms/common/api/ae;->a(Lcom/google/android/gms/common/api/ae;)V

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/ah;->c:Lcom/google/android/gms/common/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/b;->c()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/k;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/google/android/gms/common/api/ah;->c:Lcom/google/android/gms/common/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/b;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ae;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/ae;->j()Landroid/support/v4/app/j;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ae;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ae;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/k;->a(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z

    goto :goto_0

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/ah;->a:Lcom/google/android/gms/common/api/ae;

    iget v1, p0, Lcom/google/android/gms/common/api/ah;->b:I

    iget-object v2, p0, Lcom/google/android/gms/common/api/ah;->c:Lcom/google/android/gms/common/b;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/api/ae;->a(Lcom/google/android/gms/common/api/ae;ILcom/google/android/gms/common/b;)V

    goto :goto_0
.end method
