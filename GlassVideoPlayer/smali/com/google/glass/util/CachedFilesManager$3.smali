.class Lcom/google/glass/util/CachedFilesManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/CachedFilesManager;


# direct methods
.method constructor <init>(Lcom/google/glass/util/CachedFilesManager;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/google/glass/util/CachedFilesManager$3;->this$0:Lcom/google/glass/util/CachedFilesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager$3;->this$0:Lcom/google/glass/util/CachedFilesManager;

    invoke-static {v0}, Lcom/google/glass/util/CachedFilesManager;->access$200(Lcom/google/glass/util/CachedFilesManager;)V

    .line 462
    return-void
.end method
