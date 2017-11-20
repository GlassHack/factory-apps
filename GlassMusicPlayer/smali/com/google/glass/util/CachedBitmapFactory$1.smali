.class Lcom/google/glass/util/CachedBitmapFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/util/CachedFilesManager$Loader;


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/CachedBitmapFactory;

.field final synthetic val$isCancelled:Lcom/google/glass/util/Condition;

.field final synthetic val$minHeight:I

.field final synthetic val$minWidth:I


# direct methods
.method constructor <init>(Lcom/google/glass/util/CachedBitmapFactory;IILcom/google/glass/util/Condition;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/glass/util/CachedBitmapFactory$1;->this$0:Lcom/google/glass/util/CachedBitmapFactory;

    iput p2, p0, Lcom/google/glass/util/CachedBitmapFactory$1;->val$minWidth:I

    iput p3, p0, Lcom/google/glass/util/CachedBitmapFactory$1;->val$minHeight:I

    iput-object p4, p0, Lcom/google/glass/util/CachedBitmapFactory$1;->val$isCancelled:Lcom/google/glass/util/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 270
    iget v0, p0, Lcom/google/glass/util/CachedBitmapFactory$1;->val$minWidth:I

    iget v1, p0, Lcom/google/glass/util/CachedBitmapFactory$1;->val$minHeight:I

    iget-object v2, p0, Lcom/google/glass/util/CachedBitmapFactory$1;->val$isCancelled:Lcom/google/glass/util/Condition;

    invoke-static {p1, v0, v1, v2}, Lcom/google/glass/util/CachedBitmapFactory;->loadBitmapFile(Ljava/lang/String;IILcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/google/glass/util/CachedBitmapFactory$1;->load(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
