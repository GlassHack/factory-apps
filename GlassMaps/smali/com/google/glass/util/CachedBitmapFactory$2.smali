.class final Lcom/google/glass/util/CachedBitmapFactory$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method constructor <init>(Landroid/graphics/BitmapFactory$Options;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/google/glass/util/CachedBitmapFactory$2;->val$options:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/glass/util/CachedBitmapFactory$2;->val$options:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 394
    return-void
.end method
