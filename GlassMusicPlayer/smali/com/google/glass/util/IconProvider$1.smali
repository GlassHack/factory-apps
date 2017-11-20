.class Lcom/google/glass/util/IconProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/util/CachedFilesManager$Loader;


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/IconProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/util/IconProvider;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/google/glass/util/IconProvider$1;->this$0:Lcom/google/glass/util/IconProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/glass/util/IconProvider$1;->this$0:Lcom/google/glass/util/IconProvider;

    invoke-static {v0}, Lcom/google/glass/util/IconProvider;->access$600(Lcom/google/glass/util/IconProvider;)I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/util/IconProvider$1;->this$0:Lcom/google/glass/util/IconProvider;

    invoke-static {v1}, Lcom/google/glass/util/IconProvider;->access$700(Lcom/google/glass/util/IconProvider;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/google/glass/util/CachedBitmapFactory;->loadBitmapFile(Ljava/lang/String;IILcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/google/glass/util/IconProvider$1;->load(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
