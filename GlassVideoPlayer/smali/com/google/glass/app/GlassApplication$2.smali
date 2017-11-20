.class Lcom/google/glass/app/GlassApplication$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/av;


# instance fields
.field final synthetic this$0:Lcom/google/glass/app/GlassApplication;


# direct methods
.method constructor <init>(Lcom/google/glass/app/GlassApplication;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/glass/app/GlassApplication$2;->this$0:Lcom/google/glass/app/GlassApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/util/CachedBitmapFactory;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication$2;->this$0:Lcom/google/glass/app/GlassApplication;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->createBitmapFactory()Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication$2;->get()Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v0

    return-object v0
.end method
