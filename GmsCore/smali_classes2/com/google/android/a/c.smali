.class public abstract Lcom/google/android/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/a/b;


# instance fields
.field protected a:Landroid/util/DisplayMetrics;

.field protected b:Lcom/google/android/a/g;

.field private c:Lcom/google/android/a/h;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/a/g;Lcom/google/android/a/h;)V
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p2, p0, Lcom/google/android/a/c;->b:Lcom/google/android/a/g;

    .line 156
    iput-object p3, p0, Lcom/google/android/a/c;->c:Lcom/google/android/a/h;

    .line 159
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/c;->a:Landroid/util/DisplayMetrics;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/c;->a:Landroid/util/DisplayMetrics;

    .line 163
    iget-object v0, p0, Lcom/google/android/a/c;->a:Landroid/util/DisplayMetrics;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0
.end method
